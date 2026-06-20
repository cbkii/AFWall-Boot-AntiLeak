#!/system/bin/sh
# service.sh - composite-readiness handoff with coherent per-poll snapshots.
#
# Boot blackout model:
#   Stage A: Hard block installed in post-fs-data. Framework radio-off deferred.
#   Stage B: Late lower-layer suppression (Wi-Fi/data off, verified). Reasserted
#            periodically while waiting.
#   Stage C: Wait for per-family AFWall takeover (fast / conservative / boot-complete
#            path). Rooted AFWall graph fingerprints derived from coherent per-poll
#            snapshots. Non-blocking stability tracking (no blocking sleep).
#   Stage D: Remove per-family OUTPUT blackout as soon as AFWall graph takeover is
#            confirmed for that family — independent of transport readiness.
#            Transport readiness (afwall-wifi / afwall-3g subtrees) controls only
#            lower-layer radio/service restoration, not the iptables family block.
#            Transport absence and unreachable-subtree cases both accept after
#            TRANSPORT_ABSENCE_STABLE_SECS to avoid permanent deadlock.
#   Stage E: Restore lower-layer state (only what the module changed).
#
# Watchdog rules:
#   - Absolute service-start and boot-complete watchdogs run regardless of
#     readiness/unlock state.
#   - block logs repeated actionable diagnostics and keeps unresolved blocks.
#   - unblock removes all module-imposed suppression for recovery.
#
# Transport tracking:
#   wifi_done  = 1 when Wi-Fi radio-restore criteria are met (or not gating Wi-Fi).
#   mobile_done = 1 when mobile data restore criteria are met (or not gating).
#   Family iptables blocks are released independently per-family as soon as
#   AFWall graph readiness is confirmed; transport done flags only control
#   lower-layer (radio/service) restoration.
#
# Runs in a background subshell so Magisk's service phase is not held up.
MODDIR="${0%/*}"
. "$MODDIR/bin/common.sh"
if service_lock_active; then
  log "service: existing active worker detected from same boot/version; not starting duplicate"
  exit 0
fi
(

  load_config

  # ── v4.2.0 config-derived internal defaults ────────────────────────────────
  # load_config/derive_internal_config in bin/common.sh owns validation and
  # internal mapping.  Keep service local defaults only for timing values that
  # may be absent if config.sh is missing.
  POLL_INTERVAL_SECS="${POLL_INTERVAL_SECS:-2}"
  FAST_STABLE_SECS="${FAST_STABLE_SECS:-2}"
  SLOW_STABLE_SECS="${SLOW_STABLE_SECS:-6}"
  TRANSPORT_ABSENCE_STABLE_SECS="${TRANSPORT_ABSENCE_STABLE_SECS:-3}"
  TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT="${TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT:-2}"
  TRANSPORT_ORPHAN_STABLE_SECS="${TRANSPORT_ORPHAN_STABLE_SECS:-3}"
  TRANSPORT_INCONCLUSIVE_SECS="${TRANSPORT_INCONCLUSIVE_SECS:-20}"
  TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT="${TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT:-8}"
  WATCHDOG_SERVICE_SECS="${WATCHDOG_SERVICE_SECS:-300}"
  WATCHDOG_BOOT_COMPLETED_SECS="${WATCHDOG_BOOT_COMPLETED_SECS:-240}"
  WATCHDOG_POLICY="${WATCHDOG_POLICY:-block}"
  RADIO_REASSERT_INTERVAL="${RADIO_REASSERT_INTERVAL:-15}"
  BLACKOUT_REASSERT_INTERVAL="${BLACKOUT_REASSERT_INTERVAL:-10}"
  UNLOCK_POLL_INTERVAL="${UNLOCK_POLL_INTERVAL:-10}"
  AFWALL_RULE_DENSITY_MIN="${AFWALL_RULE_DENSITY_MIN:-3}"
  FAMILY_FAST_SECS_POST_BOOT_EFFECTIVE="${FAMILY_FAST_SECS_POST_BOOT_EFFECTIVE:-$FAST_STABLE_SECS}"
  FAMILY_SLOW_SECS_POST_BOOT_EFFECTIVE="${FAMILY_SLOW_SECS_POST_BOOT_EFFECTIVE:-$SLOW_STABLE_SECS}"
  TRANSPORT_SETTLE_SECS_EFFECTIVE="${TRANSPORT_SETTLE_SECS_EFFECTIVE:-5}"
  TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE="${TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE:-1}"
  BOOT_COMPLETE_ACCELERATE=1

  log "service: start ($MODULE_VERSION)"
  log_effective_config
  log "service: config: poll=${POLL_INTERVAL_SECS}s fast=${FAST_STABLE_SECS}s slow=${SLOW_STABLE_SECS}s transport_absence=${TRANSPORT_ABSENCE_STABLE_SECS}s orphan=${TRANSPORT_ORPHAN_STABLE_SECS}s absence_pb=${TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT}s transport_inconclusive=${TRANSPORT_INCONCLUSIVE_SECS}s inconclusive_pb=${TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT}s"
  log "service: config: reassert=${RADIO_REASSERT_INTERVAL}s blackout_reassert=${BLACKOUT_REASSERT_INTERVAL}s density_min=${AFWALL_RULE_DENSITY_MIN} liveness_pb=${FAMILY_FAST_SECS_POST_BOOT_EFFECTIVE}s fallback_pb=${FAMILY_SLOW_SECS_POST_BOOT_EFFECTIVE}s settle_pb=${TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE}s"
  log "service: snapshot backend v4=iptables-S"
  log "service: snapshot backend v6=ip6tables-S"

  log "service: worker started"

  case "$WATCHDOG_POLICY" in
    block|unblock) ;;
    *) log "service: invalid WATCHDOG_POLICY='$WATCHDOG_POLICY'; using block"; WATCHDOG_POLICY=block ;;
  esac

  # ── Lazy AFWall package detection ─────────────────────────────────────────────
  AFW_PKG=""
  _afwall_pkg_last_log=""
  _refresh_afwall_pkg() {
    [ -n "$AFW_PKG" ] && return 0
    local reason="${1:-poll}" new_pkg=""
    case "${AFWALL_PACKAGE:-auto}" in
      auto|"") new_pkg="$(resolve_afwall_pkg 2>/dev/null)" || new_pkg="" ;;
      *) new_pkg="$AFWALL_PACKAGE" ;;
    esac
    if [ -n "$new_pkg" ]; then
      if [ "$new_pkg" != "$AFW_PKG" ]; then
        if [ -n "$AFW_PKG" ]; then
          log "service: AFWall package changed/resolved later: old=$AFW_PKG new=$new_pkg reason=$reason"
        else
          log "service: AFWall package resolved: $new_pkg reason=$reason"
        fi
        AFW_PKG="$new_pkg"
      fi
      return 0
    fi
    if [ -z "$AFW_PKG" ] && [ "$_afwall_pkg_last_log" != "$reason" ]; then
      log "service: AFWall package unresolved at $reason; will retry later (rule graph remains authoritative)"
      _afwall_pkg_last_log="$reason"
    fi
    return 1
  }
  _refresh_afwall_pkg "service_start" || true

  # ── A) Legacy cleanup (scripts only) ────────────────────────────────────────
  # Only remove legacy afwallstart scripts; never touch current active
  # MOD_PRE_AFW* chains which were installed by post-fs-data this boot.
  cleanup_legacy_scripts_only "service"

  # ── Stage B: Late lower-layer suppression ──────────────────────────────────
  # Re-assert and verify Wi-Fi/data off-state now that framework is available.
  # This re-asserts any early-phase quiesce and adds service-level suppression.
  lowlevel_prepare_environment

  START_TS="$(monotonic_seconds 2>/dev/null)" || START_TS=0
  last_reassert_ts="$START_TS"
  last_blackout_reassert_ts="$START_TS"

  # ── Read block_installed state flag ─────────────────────────────────────────
  # block_installed=1 means post-fs-data successfully installed the block this
  # boot.  If this is set but the live block is missing, that is an integrity
  # failure that must be repaired — NOT silently treated as "no handoff needed".
  _block_was_installed=0
  if [ -f "${STATE_DIR}/block_installed" ]; then
    _block_was_installed=1
    log "service: block_installed=1 from state file"
    log "service: blackout_active=$([ -f "${STATE_DIR}/blackout_active" ] && printf 1 || printf 0) radio_off_pending=$([ -f "${STATE_DIR}/radio_off_pending" ] && printf 1 || printf 0)"
  else
    log "service: block_installed not set (post-fs-data did not install block this boot)"
  fi

  # ── C/E) Blackout integrity check and repair on startup ─────────────────────
  # If block_installed=1 but the live block is missing or degraded, immediately
  # repair it.  Do NOT treat missing live block as "no handoff needed" when the
  # state says the block should be present.
  if [ "$_block_was_installed" = "1" ]; then
    log "service: integrity check: verifying live OUTPUT blackout state"
    log_blackout_integrity "v4" "startup"
    log_blackout_integrity "v6" "startup"
    if ! output_block_intact_v4; then
      log "service: INTEGRITY FAILURE: v4 block_installed=1 but v4 OUTPUT block not intact — repairing"
      repair_output_block_v4 || log "service: v4 startup repair FAILED"
    else
      log "service: integrity check: v4 OUTPUT block intact"
    fi
    if ! output_block_intact_v6; then
      log "service: INTEGRITY FAILURE: v6 block_installed=1 but v6 OUTPUT block not intact — repairing"
      repair_output_block_v6 || log "service: v6 startup repair FAILED"
    else
      log "service: integrity check: v6 OUTPUT block intact"
    fi
  fi

  # ── Determine which families are blocked ────────────────────────────────────
  v4_blocked=0; v6_blocked=0; v4_fwd_blocked=0; v6_fwd_blocked=0
  _v4_table="$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null || cat "${STATE_DIR}/ipv4_table" 2>/dev/null || printf '')"
  _v6_table="$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null || cat "${STATE_DIR}/ipv6_table" 2>/dev/null || printf '')"
  # _v4_state_exists / _v6_state_exists: per-family indicators that a block was
  # installed for that family this boot (table state file present).
  _v4_state_exists=0; _v6_state_exists=0
  [ -n "$_v4_table" ] && _v4_state_exists=1
  [ -n "$_v6_table" ] && _v6_state_exists=1

  # Use strong integrity check: chain + DROP rule + OUTPUT jump required.
  if output_block_intact_v4; then
    v4_blocked=1
    log "service: v4 OUTPUT block intact (table=${_v4_table:-unknown})"
  elif output_block_present_v4; then
    # Chain exists but integrity degraded; count as blocked and repair will run.
    v4_blocked=1
    log "service: v4 OUTPUT block partially present (degraded; chain exists but DROP/jump incomplete)"
    log_blackout_integrity "v4" "degraded_startup"
  elif [ "$_block_was_installed" = "1" ] && [ "$_v4_state_exists" = "1" ]; then
    # block_installed=1 and per-family state file confirms v4 was installed, but
    # the live block is absent even after repair attempt: fail-closed.
    v4_blocked=1
    log "service: v4 OUTPUT block ABSENT after repair attempt — treating as blocked (fail-closed)"
  else
    log "service: v4 OUTPUT block not detected — no v4 handoff needed"
  fi

  if output_block_intact_v6; then
    v6_blocked=1
    log "service: v6 OUTPUT block intact (table=${_v6_table:-unknown})"
  elif output_block_present_v6; then
    v6_blocked=1
    log "service: v6 OUTPUT block partially present (degraded; chain exists but DROP/jump incomplete)"
    log_blackout_integrity "v6" "degraded_startup"
  elif [ "$_block_was_installed" = "1" ] && [ "$_v6_state_exists" = "1" ]; then
    v6_blocked=1
    log "service: v6 OUTPUT block ABSENT after repair attempt — treating as blocked (fail-closed)"
  else
    log "service: v6 OUTPUT block not detected — no v6 handoff needed"
  fi

  if forward_block_intact_v4; then
    v4_fwd_blocked=1
    printf '1' > "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
    log "service: v4 FORWARD block active (verified parent jump)"
  elif forward_block_degraded_v4 || [ -f "${STATE_DIR}/ipv4_fwd_active" ]; then
    rm -f "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
    log "service: v4 FORWARD block degraded/orphaned — repairing"
    if repair_forward_block_v4 && forward_block_intact_v4; then
      v4_fwd_blocked=1
      printf '1' > "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
      log "service: v4 FORWARD startup repair restored parent jump"
    else
      log "service: v4 FORWARD startup repair FAILED"
    fi
  fi
  if forward_block_intact_v6; then
    v6_fwd_blocked=1
    printf '1' > "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
    log "service: v6 FORWARD block active (verified parent jump)"
  elif forward_block_degraded_v6 || [ -f "${STATE_DIR}/ipv6_fwd_active" ]; then
    rm -f "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
    log "service: v6 FORWARD block degraded/orphaned — repairing"
    if repair_forward_block_v6 && forward_block_intact_v6; then
      v6_fwd_blocked=1
      printf '1' > "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
      log "service: v6 FORWARD startup repair restored parent jump"
    else
      log "service: v6 FORWARD startup repair FAILED"
    fi
  fi
  if input_block_present_v4; then
    log "service: v4 INPUT block active (verified parent jump)"
  elif input_block_degraded_v4 || [ -f "${STATE_DIR}/ipv4_in_active" ]; then
    log "service: v4 INPUT block degraded/orphaned — repairing"
    repair_input_block_v4 || log "service: v4 INPUT startup repair FAILED"
  fi
  if input_block_present_v6; then
    log "service: v6 INPUT block active (verified parent jump)"
  elif input_block_degraded_v6 || [ -f "${STATE_DIR}/ipv6_in_active" ]; then
    log "service: v6 INPUT block degraded/orphaned — repairing"
    repair_input_block_v6 || log "service: v6 INPUT startup repair FAILED"
  fi

  # ── E) Safe early-exit gate ──────────────────────────────────────────────────
  # Only exit without handoff when the module TRULY never installed a block AND
  # no live block is detected.  If block_installed=1, we must perform handoff
  # even if the live block is unexpectedly absent (integrity failure already
  # logged and repair attempted above).
  if [ "$v4_blocked" = "0" ] && [ "$v6_blocked" = "0" ]; then
    if [ "$_block_was_installed" = "1" ]; then
      # block_installed=1 but no per-family state files or live blocks found.
      # This is an unusual state (state files lost or cleared).  Fail-closed:
      # assume both families were blocked and perform full handoff wait.
      log "service: WARN: block_installed=1 but no per-family state/live blocks detected — failing closed (assuming both families blocked)"
      v4_blocked=1
      v6_blocked=1
    else
      log "service: no OUTPUT blocks detected and block_installed not set — skipping handoff"
      if ! sys_boot_completed; then
        log "service: deferring lower-layer restore until sys.boot_completed=1"
        while :; do
          if manual_override_active || stop_requested_active; then
            log "service: stop/override detected while waiting for boot_complete"
            clear_blackout_active
            rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
            remove_service_pid
            exit 0
          fi
          sys_boot_completed && break
          sleep 1
        done
      fi
      log "service: boot_complete reached — restoring lower-layer"
      clear_blackout_active
      lowlevel_restore_changed_state
      remove_service_pid
      exit 0
    fi
  fi

  # ── Per-family handoff tracking ─────────────────────────────────────────────
  # v4_done/v6_done: AFWall takeover confirmed for that family.
  # v4_released/v6_released: block has been removed for that family.
  v4_done=0; v6_done=0
  v4_released=0; v6_released=0
  [ "$v4_blocked" = "0" ] && v4_done=1 && v4_released=1
  [ "$v6_blocked" = "0" ] && v6_done=1 && v6_released=1

  # Per-family stable-since fingerprint tracking.
  # v4_last_fp / v6_last_fp: last seen rooted AFWall graph fingerprint.
  # v4_fp_stable_since / v6_fp_stable_since: timestamp when the current
  #   fingerprint was first observed (reset on drift).
  # v4_graph_seen_ts / v6_graph_seen_ts: timestamp when the AFWall graph was
  #   first observed to be non-trivially present.
  v4_last_fp=""; v4_fp_stable_since=0; v4_graph_seen_ts=0; v4_path=""
  v6_last_fp=""; v6_fp_stable_since=0; v6_graph_seen_ts=0; v6_path=""

  # ── Transport readiness tracking ────────────────────────────────────────────
  # wifi_done/mobile_done: 1 when the corresponding transport's AFWall readiness
  # is confirmed (or when gating is not required for that transport).
  #
  # Gating is bypassed if:
  #   - The corresponding AFWALL_GATE flag is 0, OR
  #   - The module did not suppress that service (state file absent)

  # Check whether the module suppressed Wi-Fi / mobile in this boot.
  _wifi_was_suppressed=0; _mobile_was_suppressed=0
  if _ll_state_exists "wifi_was_enabled" 2>/dev/null; then
    _wifi_was_suppressed=1
  fi
  if _ll_state_exists "data_was_enabled" 2>/dev/null; then
    _mobile_was_suppressed=1
  fi

  wifi_done=0; mobile_done=0

  # If not gating or not suppressed, mark as done immediately.
  if [ "$_wifi_was_suppressed" = "0" ]; then
    wifi_done=1
    log "service: wifi transport restore: skipped (module did not suppress Wi-Fi)"
  fi
  if [ "$_mobile_was_suppressed" = "0" ]; then
    mobile_done=1
    log "service: mobile transport restore: skipped (module did not suppress mobile data)"
  fi

  # Per-transport fingerprint stable-since tracking.
  # *_last_fp:           last seen transport subtree fingerprint.
  # *_fp_stable_since:   timestamp when the current fingerprint was first seen.
  # *_absent_since:      timestamp when the transport prefix was first confirmed
  #                      absent from a snapshot (after main family confirmed).
  #                      0 means "not yet checked" or "subtree is present".
  wifi_last_fp="";   wifi_fp_stable_since=0;   wifi_absent_since=0
  mobile_last_fp=""; mobile_fp_stable_since=0; mobile_absent_since=0
  wifi_pending_since=0; mobile_pending_since=0

  # One-time diagnostic flag: set when all family blocks are released but
  # transport restore is still pending, to avoid logging this every poll.
  _wifi_restore_logged=0
  _mobile_restore_logged=0
  _finalize_defer_logged=0
  _finalize_cleanup_done=0

  # ── Unlock state for timeout gating ────────────────────────────────────────
  device_unlocked=0
  unlock_ts=0
  timeout_start_ts="$START_TS"  # legacy diagnostic only; watchdogs are absolute
  timeout_deadline_ts=0
  WATCHDOG_SERVICE_SECS="${WATCHDOG_SERVICE_SECS:-300}"
  WATCHDOG_BOOT_COMPLETED_SECS="${WATCHDOG_BOOT_COMPLETED_SECS:-240}"
  watchdog_service_start_last_ts=0
  watchdog_boot_start_ts=0
  watchdog_boot_completed_last_ts=0
  readiness_gate_open=0
  readiness_gate_ts=0
  readiness_gate_last_log_ts=0
  boot_complete_logged=0
  last_unlock_poll_ts=0  # timestamp of last lowlevel_device_is_unlocked probe

  _poll_unlock_state() {
    [ "$device_unlocked" = "1" ] && return 0
    [ "$NOW" = "0" ] && return 1
    local _do_unlock_probe=0 _unlock_elapsed=0
    if [ "$last_unlock_poll_ts" = "0" ]; then
      _do_unlock_probe=1
    elif [ $((NOW - last_unlock_poll_ts)) -ge "$UNLOCK_POLL_INTERVAL" ]; then
      _do_unlock_probe=1
    fi
    [ "$_do_unlock_probe" = "1" ] || return 1
    last_unlock_poll_ts="$NOW"
    UNLOCK_CONFIDENCE="$(device_unlock_state 2>/dev/null || printf unknown)"
    case "$UNLOCK_CONFIDENCE" in
      unlocked|probably_unlocked)
        device_unlocked=1
        unlock_ts="$NOW"
        [ "$START_TS" != "0" ] && _unlock_elapsed=$((NOW - START_TS))
        log "service: device unlock detected confidence=${UNLOCK_CONFIDENCE} (elapsed=${_unlock_elapsed}s from service start; unlock is diagnostic only)"
        _refresh_afwall_pkg "unlock" || true
        return 0
        ;;
    esac
    debug_log "service: unlock confidence=${UNLOCK_CONFIDENCE}; continuing graph-only handoff path"
    return 1
  }

  _update_readiness_gate() {
    # Diagnostic-only state for logs.  It never gates AFWall graph evaluation,
    # family release, or watchdog clocks in v4.2.0.
    [ "$readiness_gate_open" = "1" ] && return 0
    local _reason=""
    [ "$_boot_complete_now" != "1" ] && _reason="${_reason} boot_completed"
    [ "$device_unlocked" != "1" ] && _reason="${_reason} unlock_confidence"
    if [ "$_boot_complete_now" = "1" ] && [ "$device_unlocked" = "1" ]; then
      readiness_gate_open=1
      readiness_gate_ts="$NOW"
      log "service: diagnostic readiness state observed (boot_completed=1 unlocked=${device_unlocked}); graph handoff was already active"
      _refresh_afwall_pkg "diagnostic_readiness" || true
      return 0
    fi
    if [ "$NOW" != "0" ] && { [ "$readiness_gate_last_log_ts" = "0" ] || [ $((NOW - readiness_gate_last_log_ts)) -ge 10 ]; }; then
      readiness_gate_last_log_ts="$NOW"
      debug_log "service: diagnostic readiness incomplete:${_reason}; continuing graph-only handoff path"
    fi
    return 1
  }

  # ── Pre-removal integrity log helpers ────────────────────────────────────────
  # Called immediately before a block is removed to confirm it is still present.
  # Logs an error if the block is unexpectedly already absent.
  _log_pre_remove_integrity_v4() {
    local context="${1:-remove}"
    if output_block_intact_v4; then
      log "service: ${context} v4 pre-remove integrity: block intact — proceeding"
    elif output_block_present_v4; then
      log "service: ${context} v4 pre-remove integrity: block partially present (degraded)"
    else
      log "service: INTEGRITY FAILURE: ${context} v4 block already absent before intentional removal; release accounting is invalid"
    fi
    log_blackout_integrity "v4" "${context}_pre_remove"
  }

  _log_pre_remove_integrity_v6() {
    local context="${1:-remove}"
    if output_block_intact_v6; then
      log "service: ${context} v6 pre-remove integrity: block intact — proceeding"
    elif output_block_present_v6; then
      log "service: ${context} v6 pre-remove integrity: block partially present (degraded)"
    else
      log "service: INTEGRITY FAILURE: ${context} v6 block already absent before intentional removal; release accounting is invalid"
    fi
    log_blackout_integrity "v6" "${context}_pre_remove"
  }

  # ── Transport readiness check (snapshot-based, non-blocking) ─────────────────
  # Called once per poll iteration after at least one IP family is confirmed.
  # Uses the per-poll coherent snapshots (v4_snap, v6_snap) for all checks.
  # Stability is tracked via timestamps, not blocking sleep.
  #
  # IMPORTANT — orphan/stale transport chain handling:
  #   An afwall-wifi* or afwall-3g* chain that exists in the snapshot but is
  #   NOT reachable from the live AFWall graph (no -j reference from any
  #   afwall-prefixed chain) is treated as "not usable" — equivalent to absent
  #   for the purposes of the absence-stable fallback.  This prevents a stale
  #   chain from deadlocking transport restore indefinitely.
  #   The absence-stable timer (wifi_absent_since / mobile_absent_since) is only
  #   reset to 0 when the transport subtree is both present AND reachable.
  _check_transport_readiness() {
    local now_ts="$NOW"

    # ── Wi-Fi transport ─────────────────────────────────────────────────────
    if [ "$wifi_done" = "0" ]; then
      [ "$wifi_pending_since" = "0" ] && [ "$now_ts" != "0" ] && wifi_pending_since="$now_ts"
      # Check both v4 and v6 snapshots for any afwall-wifi-prefixed subtree.
      local _wifi_in_snap=0 _wifi_reachable=0
      afwall_prefix_present_from_snapshot "$v4_snap" "$AFWALL_CHAIN_WIFI" && _wifi_in_snap=1
      afwall_prefix_present_from_snapshot "$v6_snap" "$AFWALL_CHAIN_WIFI" && _wifi_in_snap=1

      if [ "$_wifi_in_snap" = "1" ]; then
        afwall_prefix_reachable_from_snapshot "$v4_snap" "$AFWALL_CHAIN_WIFI" && _wifi_reachable=1
        afwall_prefix_reachable_from_snapshot "$v6_snap" "$AFWALL_CHAIN_WIFI" && _wifi_reachable=1
      fi

      if [ "$_wifi_in_snap" = "1" ] && [ "$_wifi_reachable" = "1" ]; then
        # Transport subtree is present AND reachable — reset "not-usable" timer.
        wifi_absent_since=0

        # Compute combined transport subtree fingerprint from both families.
        local _w_fp_v4 _w_fp_v6 _new_wifi_fp
        _w_fp_v4="$(afwall_transport_fingerprint_rooted_from_snapshot "$v4_snap" "$AFWALL_CHAIN_WIFI")"
        _w_fp_v6="$(afwall_transport_fingerprint_rooted_from_snapshot "$v6_snap" "$AFWALL_CHAIN_WIFI")"
        _new_wifi_fp="${_w_fp_v4}:${_w_fp_v6}"

        if [ -z "$wifi_last_fp" ]; then
          wifi_last_fp="$_new_wifi_fp"
          wifi_fp_stable_since="$now_ts"
          log "service: wifi subtree first seen fp=$_new_wifi_fp reachable=1"
        elif [ "$_new_wifi_fp" != "$wifi_last_fp" ]; then
          log "service: wifi subtree drift old=$wifi_last_fp new=$_new_wifi_fp reset"
          wifi_last_fp="$_new_wifi_fp"
          wifi_fp_stable_since="$now_ts"
        fi

        local _wifi_stable=0
        [ "$now_ts" != "0" ] && [ "$wifi_fp_stable_since" != "0" ] && \
          _wifi_stable=$((now_ts - wifi_fp_stable_since))
        local _wifi_settle="$TRANSPORT_SETTLE_SECS_EFFECTIVE"
        [ "$_boot_complete_now" = "1" ] && _wifi_settle="$TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE"
        if [ "$_wifi_stable" -ge "$_wifi_settle" ]; then
          if [ "$_boot_complete_now" != "1" ]; then
            debug_log "service: wifi transport stable but restore deferred until boot_complete"
          else
            log "service: wifi transport: subtree stable=${_wifi_stable}s fp=$wifi_last_fp — Wi-Fi ready; attempting restore"
            if lowlevel_restore_wifi_if_allowed; then
              wifi_done=1
              wifi_pending_since=0
            else
              debug_log "service: wifi transport: restore not yet confirmed; will retry"
            fi
          fi
        fi

      else
        # Transport either absent OR present-but-unreachable (orphan/stale chain).
        # In both cases treat as "not usable" and apply absence-stable fallback to
        # prevent permanent deadlock when AFWall no longer references the chain.
        wifi_last_fp=""; wifi_fp_stable_since=0
        if [ "$_wifi_in_snap" = "1" ]; then
          debug_log "service: wifi subtree exists but is unreachable from AFWall graph — treating as absent for fallback"
        fi
        if [ "$wifi_absent_since" = "0" ] && [ "$now_ts" != "0" ]; then
          wifi_absent_since="$now_ts"
          debug_log "service: wifi: transport not usable (in_snap=${_wifi_in_snap} reachable=${_wifi_reachable})"
        fi
        if [ "$wifi_absent_since" != "0" ] && [ "$now_ts" != "0" ]; then
          local _w_absent_elapsed _w_absent_threshold
          _w_absent_elapsed=$((now_ts - wifi_absent_since))
          if [ "$_wifi_in_snap" = "1" ]; then
            _w_absent_threshold="${TRANSPORT_ORPHAN_STABLE_SECS:-$TRANSPORT_ABSENCE_STABLE_SECS}"
          elif [ "$_boot_complete_now" = "1" ]; then
            _w_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT"
          else
            _w_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS"
          fi
          if [ "$_w_absent_elapsed" -ge "$_w_absent_threshold" ]; then
            if [ "$_boot_complete_now" != "1" ]; then
              debug_log "service: wifi fallback ready but restore deferred until boot_complete"
            else
              # AFWall family handoff and boot-complete are the authoritative safety
              # conditions. Unlock confidence is diagnostic-only and must not deadlock
              # restoration (it has produced false positives/negatives on Android 16).
              if [ "$_wifi_in_snap" = "1" ]; then
                log "service: wifi transport accepted via unreachable-stable fallback after ${_w_absent_elapsed}s (subtree present but unreachable from AFWall graph); attempting restore"
              else
                log "service: wifi transport accepted via absence-stable fallback after ${_w_absent_elapsed}s (no wifi-prefixed subtree detected in snapshot); attempting restore"
              fi
              if lowlevel_restore_wifi_if_allowed; then
                wifi_done=1
                wifi_pending_since=0
              else
                debug_log "service: wifi transport fallback path: restore not yet confirmed; will retry"
              fi
            fi
          fi
        fi
      fi

      # Oscillation/inconclusive guard:
      # If AFWall family handoff is done but transport subtree keeps drifting
      # between usable/unusable states for too long (common with VPN churn),
      # force a verified restore attempt instead of waiting indefinitely.
      if [ "$wifi_done" = "0" ] && [ "$wifi_pending_since" != "0" ] && [ "$now_ts" != "0" ]; then
        local _w_pending_elapsed _w_pending_threshold
        _w_pending_elapsed=$((now_ts - wifi_pending_since))
        _w_pending_threshold="$TRANSPORT_INCONCLUSIVE_SECS"
        [ "$_boot_complete_now" = "1" ] && _w_pending_threshold="$TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT"
        if [ "$_w_pending_elapsed" -ge "$_w_pending_threshold" ]; then
          if [ "$_boot_complete_now" != "1" ]; then
            debug_log "service: wifi inconclusive-time fallback deferred until boot_complete"
          else
            # Do not let unreliable unlock diagnostics hold a verified restore forever.
            log "service: wifi transport inconclusive for ${_w_pending_elapsed}s (in_snap=${_wifi_in_snap} reachable=${_wifi_reachable}); forcing verified restore attempt"
            if lowlevel_restore_wifi_if_allowed; then
              wifi_done=1
              wifi_pending_since=0
              log "service: wifi transport resolved via inconclusive-time fallback"
            else
              debug_log "service: wifi inconclusive-time fallback restore not yet confirmed; continuing retries"
            fi
          fi
        fi
      fi
    fi

    # ── Mobile data transport ───────────────────────────────────────────────
    if [ "$mobile_done" = "0" ]; then
      [ "$mobile_pending_since" = "0" ] && [ "$now_ts" != "0" ] && mobile_pending_since="$now_ts"
      local _mobile_in_snap=0 _mobile_reachable=0
      afwall_prefix_present_from_snapshot "$v4_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_in_snap=1
      afwall_prefix_present_from_snapshot "$v6_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_in_snap=1

      if [ "$_mobile_in_snap" = "1" ]; then
        afwall_prefix_reachable_from_snapshot "$v4_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_reachable=1
        afwall_prefix_reachable_from_snapshot "$v6_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_reachable=1
      fi

      if [ "$_mobile_in_snap" = "1" ] && [ "$_mobile_reachable" = "1" ]; then
        # Transport subtree is present AND reachable — reset "not-usable" timer.
        mobile_absent_since=0

        local _m_fp_v4 _m_fp_v6 _new_mobile_fp
        _m_fp_v4="$(afwall_transport_fingerprint_rooted_from_snapshot "$v4_snap" "$AFWALL_CHAIN_MOBILE")"
        _m_fp_v6="$(afwall_transport_fingerprint_rooted_from_snapshot "$v6_snap" "$AFWALL_CHAIN_MOBILE")"
        _new_mobile_fp="${_m_fp_v4}:${_m_fp_v6}"

        if [ -z "$mobile_last_fp" ]; then
          mobile_last_fp="$_new_mobile_fp"
          mobile_fp_stable_since="$now_ts"
          log "service: mobile subtree first seen fp=$_new_mobile_fp reachable=1"
        elif [ "$_new_mobile_fp" != "$mobile_last_fp" ]; then
          log "service: mobile subtree drift old=$mobile_last_fp new=$_new_mobile_fp reset"
          mobile_last_fp="$_new_mobile_fp"
          mobile_fp_stable_since="$now_ts"
        fi

        local _mobile_stable=0
        [ "$now_ts" != "0" ] && [ "$mobile_fp_stable_since" != "0" ] && \
          _mobile_stable=$((now_ts - mobile_fp_stable_since))
        local _mobile_settle="$TRANSPORT_SETTLE_SECS_EFFECTIVE"
        [ "$_boot_complete_now" = "1" ] && _mobile_settle="$TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE"
        if [ "$_mobile_stable" -ge "$_mobile_settle" ]; then
          if [ "$_boot_complete_now" != "1" ]; then
            debug_log "service: mobile transport stable but restore deferred until boot_complete"
          else
            log "service: mobile transport: subtree stable=${_mobile_stable}s fp=$mobile_last_fp — mobile ready; attempting restore"
            if lowlevel_restore_mobile_data_if_allowed; then
              mobile_done=1
              mobile_pending_since=0
            else
              debug_log "service: mobile transport: restore not yet confirmed; will retry"
            fi
          fi
        fi

      else
        # Transport either absent OR present-but-unreachable (orphan/stale chain).
        mobile_last_fp=""; mobile_fp_stable_since=0
        if [ "$_mobile_in_snap" = "1" ]; then
          debug_log "service: mobile subtree exists but is unreachable from AFWall graph — treating as absent for fallback"
        fi
        if [ "$mobile_absent_since" = "0" ] && [ "$now_ts" != "0" ]; then
          mobile_absent_since="$now_ts"
          debug_log "service: mobile: transport not usable (in_snap=${_mobile_in_snap} reachable=${_mobile_reachable})"
        fi
        if [ "$mobile_absent_since" != "0" ] && [ "$now_ts" != "0" ]; then
          local _m_absent_elapsed _m_absent_threshold
          _m_absent_elapsed=$((now_ts - mobile_absent_since))
          if [ "$_mobile_in_snap" = "1" ]; then
            _m_absent_threshold="${TRANSPORT_ORPHAN_STABLE_SECS:-$TRANSPORT_ABSENCE_STABLE_SECS}"
          elif [ "$_boot_complete_now" = "1" ]; then
            _m_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT"
          else
            _m_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS"
          fi
          if [ "$_m_absent_elapsed" -ge "$_m_absent_threshold" ]; then
            if [ "$_boot_complete_now" != "1" ]; then
              debug_log "service: mobile fallback ready but restore deferred until boot_complete"
            else
              # AFWall family handoff and boot-complete are the authoritative safety
              # conditions. Unlock confidence is diagnostic-only and must not deadlock
              # restoration (it has produced false positives/negatives on Android 16).
              if [ "$_mobile_in_snap" = "1" ]; then
                log "service: mobile transport accepted via unreachable-stable fallback after ${_m_absent_elapsed}s (subtree present but unreachable from AFWall graph); attempting restore"
              else
                log "service: mobile transport accepted via absence-stable fallback after ${_m_absent_elapsed}s (no mobile-prefixed subtree detected in snapshot); attempting restore"
              fi
              if lowlevel_restore_mobile_data_if_allowed; then
                mobile_done=1
                mobile_pending_since=0
              else
                debug_log "service: mobile transport fallback path: restore not yet confirmed; will retry"
              fi
            fi
          fi
        fi
      fi

      if [ "$mobile_done" = "0" ] && [ "$mobile_pending_since" != "0" ] && [ "$now_ts" != "0" ]; then
        local _m_pending_elapsed _m_pending_threshold
        _m_pending_elapsed=$((now_ts - mobile_pending_since))
        _m_pending_threshold="$TRANSPORT_INCONCLUSIVE_SECS"
        [ "$_boot_complete_now" = "1" ] && _m_pending_threshold="$TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT"
        if [ "$_m_pending_elapsed" -ge "$_m_pending_threshold" ]; then
          if [ "$_boot_complete_now" != "1" ]; then
            debug_log "service: mobile inconclusive-time fallback deferred until boot_complete"
          else
            # Do not let unreliable unlock diagnostics hold a verified restore forever.
            log "service: mobile transport inconclusive for ${_m_pending_elapsed}s (in_snap=${_mobile_in_snap} reachable=${_mobile_reachable}); forcing verified restore attempt"
            if lowlevel_restore_mobile_data_if_allowed; then
              mobile_done=1
              mobile_pending_since=0
              log "service: mobile transport resolved via inconclusive-time fallback"
            else
              debug_log "service: mobile inconclusive-time fallback restore not yet confirmed; continuing retries"
            fi
          fi
        fi
      fi
    fi

  }

  # ── Main polling loop ───────────────────────────────────────────────────────
  while :; do
    NOW="$(monotonic_seconds 2>/dev/null)" || NOW=0

    # ── Override / stop check ────────────────────────────────────────────────
    # Check before any state-modifying operation.  Manual action (action.sh)
    # writes manual_override + stop_requested and removes blocks; once either
    # marker is present the service must not repair or reassert blocks.
    if manual_override_active; then
      log "service: manual_override detected — stopping loop"
      clear_blackout_active
      rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
      remove_service_pid
      exit 0
    fi
    if stop_requested_active; then
      log "service: stop_requested detected — stopping loop"
      clear_blackout_active
      rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
      remove_service_pid
      exit 0
    fi

    # Cache sys.boot_completed result once per iteration.
    _boot_complete_now=0
    if sys_boot_completed; then
      _boot_complete_now=1
      if [ "$boot_complete_logged" = "0" ]; then
        log "service: sys.boot_completed=1 detected"
        boot_complete_logged=1
        _refresh_afwall_pkg "boot_completed" || true
      fi
    fi

    # Cheap unlock/gate tracking happens before any heavy AFWall graph reads.
    _poll_unlock_state || true
    _update_readiness_gate || true

    # ── Capture coherent per-poll filter-table snapshots ────────────────────
    # Capture each family once per poll, independent of unlock/boot diagnostics.
    # Family handoff keys only on the rooted live OUTPUT -> afwall graph.
    v4_snap="$(capture_filter_snapshot_v4 2>/dev/null)" || v4_snap=""
    v6_snap="$(capture_filter_snapshot_v6 2>/dev/null)" || v6_snap=""

    # ── Radio reassertion ───────────────────────────────────────────────────
    # Periodically re-assert Wi-Fi and mobile data off while blackout is active.
    # Self-heal: if START_TS was 0 (date failure at startup), initialise from NOW.
    [ "$last_reassert_ts" = "0" ] && [ "$NOW" != "0" ] && last_reassert_ts="$NOW"
    if [ "$NOW" != "0" ] && [ "$last_reassert_ts" != "0" ]; then
      _reassert_elapsed=$((NOW - last_reassert_ts))
      if [ "$_reassert_elapsed" -ge "$RADIO_REASSERT_INTERVAL" ]; then
        if [ "$wifi_done" = "0" ] || [ "$mobile_done" = "0" ]; then
          lowlevel_reassert_radios_off
        fi
        last_reassert_ts="$NOW"
      fi
    fi

    # ── C/D) Periodic blackout integrity reassertion ─────────────────────────
    # While the blackout is active, verify that the OUTPUT block (chain + DROP
    # rule + OUTPUT jump) is still intact for each family.  Repair immediately
    # if any layer is missing.  Uses BLACKOUT_REASSERT_INTERVAL (default 5s),
    # shorter than the radio reassertion interval, to minimise the unprotected
    # window if chains are disrupted by external tooling.
    [ "$last_blackout_reassert_ts" = "0" ] && [ "$NOW" != "0" ] && last_blackout_reassert_ts="$NOW"
    if [ "$NOW" != "0" ] && [ "$last_blackout_reassert_ts" != "0" ]; then
      _blackout_reassert_elapsed=$((NOW - last_blackout_reassert_ts))
      if [ "$_blackout_reassert_elapsed" -ge "$BLACKOUT_REASSERT_INTERVAL" ]; then
        last_blackout_reassert_ts="$NOW"
        if [ "$v4_blocked" = "1" ] && [ "$v4_released" = "0" ]; then
          if ! output_block_intact_v4; then
            log "service: INTEGRITY REPAIR v4: OUTPUT block missing or degraded — repairing"
            repair_output_block_v4 || log "service: v4 periodic repair FAILED"
            # Re-assert blackout state markers (must not be cleared by repair).
            mark_blackout_active
          else
            debug_log "service: blackout_reassert v4: intact"
          fi
        fi
        if [ "$v6_blocked" = "1" ] && [ "$v6_released" = "0" ]; then
          if ! output_block_intact_v6; then
            log "service: INTEGRITY REPAIR v6: OUTPUT block missing or degraded — repairing"
            repair_output_block_v6 || log "service: v6 periodic repair FAILED"
            mark_blackout_active
          else
            debug_log "service: blackout_reassert v6: intact"
          fi
        fi
        if [ "${ENABLE_FORWARD_BLOCK:-1}" != "0" ]; then
          if [ "$v4_fwd_blocked" = "1" ] && ! forward_block_intact_v4; then
            log "service: INTEGRITY REPAIR v4: FORWARD block degraded/orphaned — repairing"
            repair_forward_block_v4 || log "service: v4 FORWARD periodic repair FAILED"
          fi
          if [ "$v6_fwd_blocked" = "1" ] && ! forward_block_intact_v6; then
            log "service: INTEGRITY REPAIR v6: FORWARD block degraded/orphaned — repairing"
            repair_forward_block_v6 || log "service: v6 FORWARD periodic repair FAILED"
          fi
        fi
        if [ "${ENABLE_INPUT_BLOCK:-0}" = "1" ]; then
          if [ -f "${STATE_DIR}/ipv4_in_active" ] && ! input_block_intact_v4; then
            log "service: INTEGRITY REPAIR v4: INPUT block degraded/orphaned — repairing"
            repair_input_block_v4 || log "service: v4 INPUT periodic repair FAILED"
          fi
          if [ -f "${STATE_DIR}/ipv6_in_active" ] && ! input_block_intact_v6; then
            log "service: INTEGRITY REPAIR v6: INPUT block degraded/orphaned — repairing"
            repair_input_block_v6 || log "service: v6 INPUT periodic repair FAILED"
          fi
        fi
      fi
    fi

    # Unlock/boot diagnostic state was already polled before snapshot capture.

    # ── Absolute watchdogs independent of readiness/unlock gates ─────────────
    if [ "$_boot_complete_now" = "1" ] && [ "$watchdog_boot_start_ts" = "0" ]; then
      watchdog_boot_start_ts="$NOW"
      log "service: boot-complete watchdog armed start=${watchdog_boot_start_ts} timeout=${WATCHDOG_BOOT_COMPLETED_SECS}s"
    fi

    _watchdog_fire=0; _watchdog_reason=""; _watchdog_elapsed=0
    if [ "$NOW" != "0" ] && [ "$START_TS" != "0" ]; then
      _svc_elapsed=$((NOW - START_TS))
      if [ "$_svc_elapsed" -ge "$WATCHDOG_SERVICE_SECS" ]; then
        _watchdog_fire=1; _watchdog_reason="service_start"; _watchdog_elapsed="$_svc_elapsed"
      fi
    fi
    if [ "$_watchdog_fire" = "0" ] && [ "$NOW" != "0" ] && [ "$watchdog_boot_start_ts" != "0" ]; then
      _boot_elapsed=$((NOW - watchdog_boot_start_ts))
      if [ "$_boot_elapsed" -ge "$WATCHDOG_BOOT_COMPLETED_SECS" ]; then
        _watchdog_fire=1; _watchdog_reason="boot_completed"; _watchdog_elapsed="$_boot_elapsed"
      fi
    fi

    if [ "$_watchdog_fire" = "1" ]; then
      _last_var="watchdog_${_watchdog_reason}_last_ts"
      eval "_last=\${${_last_var}:-0}"
      if [ "$WATCHDOG_POLICY" = "unblock" ]; then
        log "service: WATCHDOG ${_watchdog_reason} elapsed=${_watchdog_elapsed}s policy=unblock — removing all module suppression"
        write_stop_requested
        recover_connectivity "service-watchdog-${_watchdog_reason}" "0"
        remove_service_pid
        exit 0
      fi
      if [ "$_last" = "0" ] || [ $((NOW - _last)) -ge "$WATCHDOG_SERVICE_SECS" ]; then
        eval "${_last_var}=\$NOW"
        log "service: WATCHDOG ${_watchdog_reason} elapsed=${_watchdog_elapsed}s policy=block — retaining unresolved module blocks"
        log "service: watchdog state: released v4=${v4_released}/done=${v4_done}/fp=${v4_last_fp:-na} v6=${v6_released}/done=${v6_done}/fp=${v6_last_fp:-na} readiness_gate=${readiness_gate_open} unlocked=${device_unlocked} unlock_confidence=${UNLOCK_CONFIDENCE:-unknown}"
        log "service: watchdog config: sourced=${CONFIG_SOURCED_FILES:-unknown} ignored=${CONFIG_IGNORED_FILES:-none} policy=${WATCHDOG_POLICY} service=${WATCHDOG_SERVICE_SECS}s boot=${WATCHDOG_BOOT_COMPLETED_SECS}s"
        log_blackout_integrity "v4" "watchdog_${_watchdog_reason}"
        log_blackout_integrity "v6" "watchdog_${_watchdog_reason}"
        log_transition_snapshot "v4" "watchdog_${_watchdog_reason}"
        log_transition_snapshot "v6" "watchdog_${_watchdog_reason}"
      fi
      log "service: watchdog degraded monitor sleeping ${WATCHDOG_DEGRADED_INTERVAL_SECS:-30}s; Action recovery remains available"
      sleep "${WATCHDOG_DEGRADED_INTERVAL_SECS:-30}"
      continue
    fi

    # Readiness/unlock gate is diagnostic-only; never skip AFWall graph checks.

    # ── Boot-completion diagnostic ──────────────────────────────────────────
    if [ "$_boot_complete_now" = "1" ]; then
      debug_log "service: sys.boot_completed=1 boot_accel=${BOOT_COMPLETE_ACCELERATE} v4_done=$v4_done v6_done=$v6_done wifi_done=$wifi_done mobile_done=$mobile_done"
    fi

    # ── IPv4 family handoff (composite readiness, non-blocking) ───────────
    if [ "$v4_blocked" = "1" ] && [ "$v4_done" = "0" ]; then

      if afwall_graph_present_from_snapshot "$v4_snap" && \
         afwall_graph_nontrivial_from_snapshot "$v4_snap"; then

        [ -z "$AFW_PKG" ] && _refresh_afwall_pkg "v4_graph_evidence" || true
        # Compute rooted AFWall graph fingerprint from this poll's snapshot.
        _new_v4_fp="$(afwall_rooted_graph_fingerprint_from_snapshot "$v4_snap")"

        if [ -z "$v4_last_fp" ]; then
          # First time a non-trivial AFWall graph is observed for v4.
          v4_last_fp="$_new_v4_fp"
          v4_fp_stable_since="$NOW"
          v4_graph_seen_ts="$NOW"
          log "service: v4 graph first seen fp=$_new_v4_fp"
          log_transition_snapshot "v4" "takeover_first"
        elif [ "$_new_v4_fp" != "$v4_last_fp" ]; then
          # Fingerprint drifted — AFWall is still populating rules.
          log "service: v4 graph drift old=$v4_last_fp new=$_new_v4_fp reset"
          v4_last_fp="$_new_v4_fp"
          v4_fp_stable_since="$NOW"
        fi

        # Compute how long the fingerprint has been continuously stable.
        _v4_stable=0
        [ "$NOW" != "0" ] && [ "$v4_fp_stable_since" != "0" ] && \
          _v4_stable=$((NOW - v4_fp_stable_since))

        # Determine corroborating evidence.
        _v4_corroborator="none"
        if [ "$_boot_complete_now" = "1" ] && [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          _v4_corroborator="process"
        elif [ "${UNLOCK_CONFIDENCE:-unknown}" = "unlocked" ] && afwall_secondary_evidence_present "$AFW_PKG"; then
          _v4_corroborator="file_mtime"
        fi
        afwall_rules_dense_from_snapshot "$v4_snap" "$AFWALL_RULE_DENSITY_MIN" && \
          [ "$_v4_corroborator" = "none" ] && \
          _v4_corroborator="$([ "$_boot_complete_now" = "1" ] && printf 'boot_complete_dense' || printf 'dense_graph')"

        # Select effective stability thresholds.
        _v4_fast_secs="$FAST_STABLE_SECS"
        _v4_slow_secs="$SLOW_STABLE_SECS"
        if [ "$_boot_complete_now" = "1" ]; then
          _v4_fast_secs="$FAMILY_FAST_SECS_POST_BOOT_EFFECTIVE"
          _v4_slow_secs="$FAMILY_SLOW_SECS_POST_BOOT_EFFECTIVE"
        fi

        _v4_strong_corroboration=0
        case "$_v4_corroborator" in
          process|file_mtime|boot_complete_dense) _v4_strong_corroboration=1 ;;
        esac

        # ── Fast path: corroboration + shorter stable window ──────────────
        if [ "$_v4_corroborator" != "none" ] && \
           [ "$_v4_stable" -ge "$_v4_fast_secs" ]; then
          v4_done=1; v4_path="fast"
          _v4_seen_elapsed=0
          [ "$NOW" != "0" ] && [ "$v4_graph_seen_ts" != "0" ] && \
            _v4_seen_elapsed=$((NOW - v4_graph_seen_ts))
          log "service: v4 fast-path confirmed stable=${_v4_stable}s seen_elapsed=${_v4_seen_elapsed}s corroboration=${_v4_corroborator} fp=$v4_last_fp"
          log_transition_snapshot "v4" "pre_remove"

        # ── Conservative path: longer stable window, no corroboration needed ──
        elif [ "$_v4_stable" -ge "$_v4_slow_secs" ]; then
          _v4_seen_elapsed=0
          [ "$NOW" != "0" ] && [ "$v4_graph_seen_ts" != "0" ] && \
            _v4_seen_elapsed=$((NOW - v4_graph_seen_ts))
          if [ "$_v4_corroborator" = "none" ]; then
            log "service: v4 conservative-path confirmed stable=${_v4_stable}s seen_elapsed=${_v4_seen_elapsed}s fp=$v4_last_fp (corroboration absent)"
          else
            log "service: v4 conservative-path confirmed stable=${_v4_stable}s seen_elapsed=${_v4_seen_elapsed}s corroboration=${_v4_corroborator} fp=$v4_last_fp"
          fi
          v4_done=1; v4_path="conservative"
          log_transition_snapshot "v4" "pre_remove"

        else
          # Not yet stable enough — log diagnostic and stay blocked.
          if [ "$_v4_corroborator" = "none" ]; then
            debug_log "service: v4 graph stable=${_v4_stable}s (need fast=${_v4_fast_secs}s/slow=${_v4_slow_secs}s) corroboration=none — conservative path active"
          else
            debug_log "service: v4 graph stable=${_v4_stable}s (need ${_v4_fast_secs}s) corroborator=${_v4_corroborator}"
          fi
        fi

      else
        # Graph absent or trivial — reset fingerprint state.
        if [ -n "$v4_last_fp" ]; then
          log "service: v4 AFWall graph gone/trivial — resetting stability"
          log_transition_snapshot "v4" "takeover_lost"
        fi
        v4_last_fp=""; v4_fp_stable_since=0
      fi

    fi # end v4 family handoff

    # ── IPv6 family handoff (composite readiness, non-blocking) ───────────
    if [ "$v6_blocked" = "1" ] && [ "$v6_done" = "0" ]; then

      if afwall_graph_present_from_snapshot "$v6_snap" && \
         afwall_graph_nontrivial_from_snapshot "$v6_snap"; then

        _new_v6_fp="$(afwall_rooted_graph_fingerprint_from_snapshot "$v6_snap")"

        if [ -z "$v6_last_fp" ]; then
          v6_last_fp="$_new_v6_fp"
          v6_fp_stable_since="$NOW"
          v6_graph_seen_ts="$NOW"
          log "service: v6 graph first seen fp=$_new_v6_fp"
          log_transition_snapshot "v6" "takeover_first"
        elif [ "$_new_v6_fp" != "$v6_last_fp" ]; then
          log "service: v6 graph drift old=$v6_last_fp new=$_new_v6_fp reset"
          v6_last_fp="$_new_v6_fp"
          v6_fp_stable_since="$NOW"
        fi

        _v6_stable=0
        [ "$NOW" != "0" ] && [ "$v6_fp_stable_since" != "0" ] && \
          _v6_stable=$((NOW - v6_fp_stable_since))

        _v6_corroborator="none"
        if [ "$_boot_complete_now" = "1" ] && [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          _v6_corroborator="process"
        elif [ "${UNLOCK_CONFIDENCE:-unknown}" = "unlocked" ] && afwall_secondary_evidence_present "$AFW_PKG"; then
          _v6_corroborator="file_mtime"
        fi
        afwall_rules_dense_from_snapshot "$v6_snap" "$AFWALL_RULE_DENSITY_MIN" && \
          [ "$_v6_corroborator" = "none" ] && \
          _v6_corroborator="$([ "$_boot_complete_now" = "1" ] && printf 'boot_complete_dense' || printf 'dense_graph')"

        _v6_fast_secs="$FAST_STABLE_SECS"
        _v6_slow_secs="$SLOW_STABLE_SECS"
        if [ "$_boot_complete_now" = "1" ]; then
          _v6_fast_secs="$FAMILY_FAST_SECS_POST_BOOT_EFFECTIVE"
          _v6_slow_secs="$FAMILY_SLOW_SECS_POST_BOOT_EFFECTIVE"
        fi

        _v6_strong_corroboration=0
        case "$_v6_corroborator" in
          process|file_mtime|boot_complete_dense) _v6_strong_corroboration=1 ;;
        esac

        if [ "$_v6_corroborator" != "none" ] && \
           [ "$_v6_stable" -ge "$_v6_fast_secs" ]; then
          v6_done=1; v6_path="fast"
          _v6_seen_elapsed=0
          [ "$NOW" != "0" ] && [ "$v6_graph_seen_ts" != "0" ] && \
            _v6_seen_elapsed=$((NOW - v6_graph_seen_ts))
          log "service: v6 fast-path confirmed stable=${_v6_stable}s seen_elapsed=${_v6_seen_elapsed}s corroboration=${_v6_corroborator} fp=$v6_last_fp"
          log_transition_snapshot "v6" "pre_remove"

        # ── Conservative path: longer stable window, no corroboration needed ──
        elif [ "$_v6_stable" -ge "$_v6_slow_secs" ]; then
          _v6_seen_elapsed=0
          [ "$NOW" != "0" ] && [ "$v6_graph_seen_ts" != "0" ] && \
            _v6_seen_elapsed=$((NOW - v6_graph_seen_ts))
          if [ "$_v6_corroborator" = "none" ]; then
            log "service: v6 conservative-path confirmed stable=${_v6_stable}s seen_elapsed=${_v6_seen_elapsed}s fp=$v6_last_fp (corroboration absent)"
          else
            log "service: v6 conservative-path confirmed stable=${_v6_stable}s seen_elapsed=${_v6_seen_elapsed}s corroboration=${_v6_corroborator} fp=$v6_last_fp"
          fi
          v6_done=1; v6_path="conservative"
          log_transition_snapshot "v6" "pre_remove"

        else
          if [ "$_v6_corroborator" = "none" ]; then
            debug_log "service: v6 graph stable=${_v6_stable}s (need fast=${_v6_fast_secs}s/slow=${_v6_slow_secs}s) corroboration=none — conservative path active"
          else
            debug_log "service: v6 graph stable=${_v6_stable}s (need ${_v6_fast_secs}s) corroborator=${_v6_corroborator}"
          fi
        fi

      else
        if [ -n "$v6_last_fp" ]; then
          log "service: v6 AFWall graph gone/trivial — resetting stability"
          log_transition_snapshot "v6" "takeover_lost"
        fi
        v6_last_fp=""; v6_fp_stable_since=0
      fi

    fi # end v6 family handoff

    # ── Transport readiness check ──────────────────────────────────────────
    # Only runs after at least one family's AFWall takeover is confirmed.
    # Uses the per-poll coherent snapshots (v4_snap, v6_snap).
    if [ "$v4_done" = "1" ] || [ "$v6_done" = "1" ]; then
      if [ "$wifi_done" = "0" ] || [ "$mobile_done" = "0" ]; then
        _check_transport_readiness
      fi
    fi

    # If a transport gate was skipped but the module still has a restore marker
    # (e.g. state carried across conservative boot order), retry restoration
    # until verified instead of exiting and requiring manual action.
    if [ "$_boot_complete_now" = "1" ] && [ "$wifi_done" = "1" ] && _ll_state_exists "wifi_was_enabled"; then
      if [ "$_wifi_restore_logged" = "0" ]; then
        log "service: wifi marker still present after done=1 — retrying Wi-Fi restore"
        _wifi_restore_logged=1
      fi
      lowlevel_restore_wifi_if_allowed || debug_log "service: wifi retry restore not yet confirmed"
    else
      _wifi_restore_logged=0
    fi
    if [ "$_boot_complete_now" = "1" ] && [ "$mobile_done" = "1" ] && _ll_state_exists "data_was_enabled"; then
      if [ "$_mobile_restore_logged" = "0" ]; then
        log "service: mobile marker still present after done=1 — retrying mobile restore"
        _mobile_restore_logged=1
      fi
      lowlevel_restore_mobile_data_if_allowed || debug_log "service: mobile retry restore not yet confirmed"
    else
      _mobile_restore_logged=0
    fi

    # ── Block release: remove blocks as soon as AFWall family handoff confirmed ─
    # The family OUTPUT blackout is removed as soon as AFWall's main graph is
    # confirmed (v4_done / v6_done).  Transport readiness (wifi_done / mobile_done)
    # controls only lower-layer radio restoration, NOT family block removal.
    # F) Integrity check immediately before removal: if block is already missing
    # at this point, log as an error condition (not a silent "success").
    if [ "$v4_done" = "1" ] && [ "$v4_released" = "0" ]; then
      log "service: v4 release preconditions satisfied: afwall_takeover=1 path=${v4_path:-confirmed}"
      _log_pre_remove_integrity_v4 "handoff"
      log_transition_snapshot "v4" "pre_remove"
      remove_output_block_v4
      if [ -f "${STATE_DIR}/ipv4_fwd_active" ] || forward_block_present_v4; then
        remove_forward_block_v4
      fi
      if [ -f "${STATE_DIR}/ipv4_in_active" ] || input_block_present_v4; then
        remove_input_block_v4
      fi
      if output_block_present_v4 || forward_block_present_v4 || input_block_present_v4; then
        log "service: ERROR: v4 release verification failed — module-owned layer still present; retrying"
      else
        v4_released=1
        log "service: v4 release verified absent — family block removed (OUTPUT/FORWARD/INPUT)"
      fi
      log "service: v4 block removed (intentional handoff)"
      [ "$wifi_done" = "0" ] && log "service: block removed; wifi restore deferred"
      [ "$mobile_done" = "0" ] && log "service: block removed; mobile restore deferred"
    fi

    if [ "$v6_done" = "1" ] && [ "$v6_released" = "0" ]; then
      log "service: v6 release preconditions satisfied: afwall_takeover=1 path=${v6_path:-confirmed}"
      _log_pre_remove_integrity_v6 "handoff"
      log_transition_snapshot "v6" "pre_remove"
      remove_output_block_v6
      if [ -f "${STATE_DIR}/ipv6_fwd_active" ] || forward_block_present_v6; then
        remove_forward_block_v6
      fi
      if [ -f "${STATE_DIR}/ipv6_in_active" ] || input_block_present_v6; then
        remove_input_block_v6
      fi
      if output_block_present_v6 || forward_block_present_v6 || input_block_present_v6; then
        log "service: ERROR: v6 release verification failed — module-owned layer still present; retrying"
      else
        v6_released=1
        log "service: v6 release verified absent — family block removed (OUTPUT/FORWARD/INPUT)"
      fi
      log "service: v6 block removed (intentional handoff)"
      [ "$wifi_done" = "0" ] && log "service: block removed; wifi restore deferred"
      [ "$mobile_done" = "0" ] && log "service: block removed; mobile restore deferred"
    fi

    # ── All done? ──────────────────────────────────────────────────────────
    # Family blocks are released as soon as AFWall takeover is confirmed.
    # The service continues until transport restore is also complete so that
    # lower-layer state (radios) is properly restored.
    _v4_complete=1; _v6_complete=1
    [ "$v4_blocked" = "1" ] && [ "$v4_released" = "0" ] && _v4_complete=0
    [ "$v6_blocked" = "1" ] && [ "$v6_released" = "0" ] && _v6_complete=0

    if [ "$_v4_complete" = "1" ] && [ "$_v6_complete" = "1" ]; then
      if [ "$wifi_done" = "0" ] || [ "$mobile_done" = "0" ]; then
        log "service: family handoff complete; transport gates not fully satisfied (wifi=${wifi_done} mobile=${mobile_done})"
      else
        log "service: handoff complete (v4=${v4_path:-skipped} v6=${v6_path:-skipped} wifi=done mobile=done)"
      fi

      # Finalize in verified mode: remove module-owned blocks first, then use
      # verified lowlevel restore helpers (with retry loop) so we do not clear
      # markers on command-ack alone.
      if [ "$_finalize_cleanup_done" = "0" ]; then
        clear_blackout_active
        rm -f "${STATE_DIR}/block_installed" "${STATE_DIR}/radio_off_pending" 2>/dev/null || true
        remove_block
        cleanup_legacy "service-finalize"
        _finalize_cleanup_done=1
      fi

      lowlevel_restore_wifi_if_allowed || \
        debug_log "service: Wi-Fi restore not yet confirmed at finalize"
      lowlevel_restore_mobile_data_if_allowed || \
        debug_log "service: mobile-data restore not yet confirmed at finalize"
      if _ll_state_exists "wifi_was_enabled" || _ll_state_exists "data_was_enabled"; then
        _wifi_marker=0; _mobile_marker=0
        _ll_state_exists "wifi_was_enabled" && _wifi_marker=1
        _ll_state_exists "data_was_enabled" && _mobile_marker=1
        if [ "$_finalize_defer_logged" = "0" ]; then
          log "service: finalization deferred: verified restore pending (wifi=${_wifi_marker} mobile=${_mobile_marker})"
          _finalize_defer_logged=1
        else
          debug_log "service: finalization still deferred (wifi=${_wifi_marker} mobile=${_mobile_marker})"
        fi
        sleep "$POLL_INTERVAL_SECS"
        continue
      fi
      _finalize_defer_logged=0
      lowlevel_restore_interfaces 2>/dev/null || true
      lowlevel_restore_bluetooth 2>/dev/null || true
      lowlevel_restore_tethering_note 2>/dev/null || true
      _ll_state_rm "mode" 2>/dev/null || true
      {
        printf 'completed_mono=%s\n' "$(monotonic_seconds)"
        printf 'v4_path=%s\n' "${v4_path:-skipped}"
        printf 'v6_path=%s\n' "${v6_path:-skipped}"
      } > "${STATE_DIR}/service_complete" 2>/dev/null || true
      remove_service_pid
      log "service: handoff complete — AFWall is now sole active protection"
      exit 0
    fi

    sleep "$POLL_INTERVAL_SECS"
  done
) &
_svc_pid="$!"
write_service_pid "$_svc_pid"
_svc_cmdline="$(tr '\0' ' ' < "/proc/${_svc_pid}/cmdline" 2>/dev/null)"
log "service: pid_file written pid=${_svc_pid} cmdline=${_svc_cmdline:-unreadable}"
exit 0
