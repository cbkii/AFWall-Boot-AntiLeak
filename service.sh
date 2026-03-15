#!/system/bin/sh
# service.sh - composite-readiness handoff with coherent per-poll snapshots.
#
# Boot blackout model:
#   Stage A: Hard block installed in post-fs-data. Framework radio-off deferred.
#   Stage B: Late lower-layer suppression (Wi-Fi/data off, verified). Reasserted
#            periodically while waiting.
#   Stage C: Wait for per-family AFWall takeover (fast / conservative / boot-complete
#            path). Full AFWall graph fingerprints derived from coherent per-poll
#            snapshots. Non-blocking stability tracking (no inline sleep settle).
#   Stage D: Only remove global hard block when ALL required transports are ready.
#            Transport readiness requires reachability + subtree fingerprint stability.
#            Transport absence is accepted after TRANSPORT_ABSENCE_STABLE_SECS.
#   Stage E: Restore lower-layer state (only what the module changed).
#
# Timeout rules:
#   - Countdown does NOT begin before device unlock (when TIMEOUT_UNLOCK_GATED=1).
#   - Auto-unblocking on timeout is DISABLED by default (AUTO_TIMEOUT_UNBLOCK=0).
#   - TIMEOUT_POLICY=unblock is a legacy option; it requires AUTO_TIMEOUT_UNBLOCK=1
#     to have any effect; also subject to TIMEOUT_UNLOCK_GATED.
#
# Transport tracking:
#   wifi_done  = 1 when Wi-Fi release criteria are met (or not gating Wi-Fi).
#   mobile_done = 1 when mobile data release criteria are met (or not gating).
#   Global block is kept until BOTH wifi_done AND mobile_done.
#
# Runs in a background subshell so Magisk's service phase is not held up.
(
  MODDIR="${0%/*}"
  . "$MODDIR/bin/common.sh"

  load_config

  # ── Config with safe defaults ───────────────────────────────────────────────
  TIMEOUT_SECS="${TIMEOUT_SECS:-120}"
  TIMEOUT_POLICY="${TIMEOUT_POLICY:-fail_closed}"
  AUTO_TIMEOUT_UNBLOCK="${AUTO_TIMEOUT_UNBLOCK:-0}"
  TIMEOUT_UNLOCK_GATED="${TIMEOUT_UNLOCK_GATED:-1}"
  SETTLE_SECS="${SETTLE_SECS:-5}"
  LIVENESS_SECS="${LIVENESS_SECS:-6}"
  FALLBACK_SECS="${FALLBACK_SECS:-$((LIVENESS_SECS * 2))}"
  WIFI_AFWALL_GATE="${WIFI_AFWALL_GATE:-1}"
  MOBILE_AFWALL_GATE="${MOBILE_AFWALL_GATE:-1}"
  RADIO_REASSERT_INTERVAL="${RADIO_REASSERT_INTERVAL:-10}"
  BLACKOUT_REASSERT_INTERVAL="${BLACKOUT_REASSERT_INTERVAL:-5}"
  UNLOCK_POLL_INTERVAL="${UNLOCK_POLL_INTERVAL:-5}"
  # Retained as a last-resort safety net; primary transport-absence path is now
  # TRANSPORT_ABSENCE_STABLE_SECS.
  TRANSPORT_WAIT_SECS="${TRANSPORT_WAIT_SECS:-30}"

  # ── Composite-readiness timing ─────────────────────────────────────────────
  # POLL_INTERVAL_SECS: how often the loop iterates (1s default → faster reaction).
  # FAST_STABLE_SECS:   full-graph fingerprint must be stable this long + corroboration.
  # SLOW_STABLE_SECS:   full-graph fingerprint must be stable this long (no corroborator).
  # TRANSPORT_ABSENCE_STABLE_SECS: how long absence of a transport subtree must be
  #   stable (after main family confirmed) before accepting main-chain-only readiness.
  POLL_INTERVAL_SECS="${POLL_INTERVAL_SECS:-1}"
  FAST_STABLE_SECS="${FAST_STABLE_SECS:-2}"
  SLOW_STABLE_SECS="${SLOW_STABLE_SECS:-6}"
  TRANSPORT_ABSENCE_STABLE_SECS="${TRANSPORT_ABSENCE_STABLE_SECS:-3}"

  # ── Boot-completion acceleration ───────────────────────────────────────────
  BOOT_COMPLETE_ACCELERATE="${BOOT_COMPLETE_ACCELERATE:-1}"
  AFWALL_RULE_DENSITY_MIN="${AFWALL_RULE_DENSITY_MIN:-3}"
  LIVENESS_SECS_POST_BOOT="${LIVENESS_SECS_POST_BOOT:-2}"
  FALLBACK_SECS_POST_BOOT="${FALLBACK_SECS_POST_BOOT:-4}"
  SETTLE_SECS_POST_BOOT="${SETTLE_SECS_POST_BOOT:-1}"
  TRANSPORT_WAIT_SECS_POST_BOOT="${TRANSPORT_WAIT_SECS_POST_BOOT:-5}"
  # Absence-stable threshold post-boot: how many consecutive seconds with no
  # transport-specific chains (afwall-wifi* / afwall-3g*) in snapshots before
  # accepting that transport as absent and proceeding with radio restoration.
  # Must NOT be confused with TRANSPORT_WAIT_SECS_POST_BOOT (which gates a
  # different legacy detection wait path).
  TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT="${TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT:-2}"

  log "service: start ($MODULE_VERSION)"
  log "service: config: timeout=${TIMEOUT_SECS}s policy=${TIMEOUT_POLICY} auto_unblock=${AUTO_TIMEOUT_UNBLOCK} unlock_gated=${TIMEOUT_UNLOCK_GATED}"
  log "service: config: poll=${POLL_INTERVAL_SECS}s fast=${FAST_STABLE_SECS}s slow=${SLOW_STABLE_SECS}s transport_absence=${TRANSPORT_ABSENCE_STABLE_SECS}s absence_pb=${TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT}s"
  log "service: config: fwd=${ENABLE_FORWARD_BLOCK:-1} in=${ENABLE_INPUT_BLOCK:-0} ll_mode=${LOWLEVEL_MODE:-safe}"
  log "service: config: wifi_gate=${WIFI_AFWALL_GATE} mobile_gate=${MOBILE_AFWALL_GATE} reassert=${RADIO_REASSERT_INTERVAL}s blackout_reassert=${BLACKOUT_REASSERT_INTERVAL}s"
  log "service: config: boot_accel=${BOOT_COMPLETE_ACCELERATE} density_min=${AFWALL_RULE_DENSITY_MIN} liveness_pb=${LIVENESS_SECS_POST_BOOT}s fallback_pb=${FALLBACK_SECS_POST_BOOT}s settle_pb=${SETTLE_SECS_POST_BOOT}s twait_pb=${TRANSPORT_WAIT_SECS_POST_BOOT}s"
  log "service: snapshot backend v4=iptables-S"
  log "service: snapshot backend v6=ip6tables-S"

  # Write service PID so action.sh can signal this background loop if needed.
  write_service_pid "$$"
  log "service: pid=$$ started"

  # Validate TIMEOUT_POLICY; default to fail_closed on unknown value.
  case "$TIMEOUT_POLICY" in
    unblock|fail_closed) ;;
    *)
      log "service: unknown TIMEOUT_POLICY='$TIMEOUT_POLICY'; defaulting to fail_closed"
      TIMEOUT_POLICY=fail_closed
      ;;
  esac

  # Warn if TIMEOUT_POLICY=unblock but AUTO_TIMEOUT_UNBLOCK is not set.
  if [ "$TIMEOUT_POLICY" = "unblock" ] && [ "$AUTO_TIMEOUT_UNBLOCK" != "1" ]; then
    log "service: WARN: TIMEOUT_POLICY=unblock but AUTO_TIMEOUT_UNBLOCK=0; timeout will NOT unblock (set AUTO_TIMEOUT_UNBLOCK=1 to enable)"
  fi

  # ── Detect AFWall package ───────────────────────────────────────────────────
  AFW_PKG="$(resolve_afwall_pkg 2>/dev/null)" || AFW_PKG=""
  if [ -n "$AFW_PKG" ]; then
    log "service: AFWall pkg=$AFW_PKG"
  else
    log "service: AFWall package not found — liveness checks disabled; rule-detection only"
  fi

  # ── A) Legacy cleanup (scripts only) ────────────────────────────────────────
  # Only remove legacy afwallstart scripts; never touch current active
  # MOD_PRE_AFW* chains which were installed by post-fs-data this boot.
  cleanup_legacy_scripts_only "service"

  # ── Stage B: Late lower-layer suppression ──────────────────────────────────
  # Re-assert and verify Wi-Fi/data off-state now that framework is available.
  # This re-asserts any early-phase quiesce and adds service-level suppression.
  lowlevel_prepare_environment

  START_TS="$(date +%s 2>/dev/null)" || START_TS=0
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
  v4_blocked=0; v6_blocked=0
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

  if forward_block_present_v4 || [ -f "${STATE_DIR}/ipv4_fwd_active" ]; then
    log "service: v4 FORWARD block active"
  fi
  if forward_block_present_v6 || [ -f "${STATE_DIR}/ipv6_fwd_active" ]; then
    log "service: v6 FORWARD block active"
  fi
  if input_block_present_v4 || [ -f "${STATE_DIR}/ipv4_in_active" ]; then
    log "service: v4 INPUT block active"
  fi
  if input_block_present_v6 || [ -f "${STATE_DIR}/ipv6_in_active" ]; then
    log "service: v6 INPUT block active"
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
      log "service: no OUTPUT blocks detected and block_installed not set — skipping handoff; restoring lower-layer"
      clear_blackout_active
      lowlevel_restore_changed_state
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
  # v4_last_fp / v6_last_fp: last seen full AFWall graph fingerprint.
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
  if [ "$WIFI_AFWALL_GATE" != "1" ] || [ "$_wifi_was_suppressed" = "0" ]; then
    wifi_done=1
    log "service: wifi transport gate: skipped (gate=${WIFI_AFWALL_GATE} suppressed=${_wifi_was_suppressed})"
  fi
  if [ "$MOBILE_AFWALL_GATE" != "1" ] || [ "$_mobile_was_suppressed" = "0" ]; then
    mobile_done=1
    log "service: mobile transport gate: skipped (gate=${MOBILE_AFWALL_GATE} suppressed=${_mobile_was_suppressed})"
  fi

  # Per-transport fingerprint stable-since tracking.
  # *_last_fp:           last seen transport subtree fingerprint.
  # *_fp_stable_since:   timestamp when the current fingerprint was first seen.
  # *_absent_since:      timestamp when the transport prefix was first confirmed
  #                      absent from a snapshot (after main family confirmed).
  #                      0 means "not yet checked" or "subtree is present".
  wifi_last_fp="";   wifi_fp_stable_since=0;   wifi_absent_since=0
  mobile_last_fp=""; mobile_fp_stable_since=0; mobile_absent_since=0

  # One-time diagnostic flag: set when all family blocks are released but
  # transport restore is still pending, to avoid logging this every poll.
  _family_handoff_logged=0

  # ── Unlock state for timeout gating ────────────────────────────────────────
  device_unlocked=0
  unlock_ts=0
  timeout_start_ts=0  # timestamp when timeout countdown began (0 = not started)
  last_unlock_poll_ts=0  # timestamp of last lowlevel_device_is_unlocked probe

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
      log "service: ${context} v4 pre-remove integrity: ERROR: block already absent before intentional removal"
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
      log "service: ${context} v6 pre-remove integrity: ERROR: block already absent before intentional removal"
    fi
    log_blackout_integrity "v6" "${context}_pre_remove"
  }

  # ── Transport readiness check (snapshot-based, non-blocking) ─────────────────
  # Called once per poll iteration after at least one IP family is confirmed.
  # Uses the per-poll coherent snapshots (v4_snap, v6_snap) for all checks.
  # Stability is tracked via timestamps, not blocking sleep.
  _check_transport_readiness() {
    local now_ts="$NOW"

    # ── Wi-Fi transport ─────────────────────────────────────────────────────
    if [ "$wifi_done" = "0" ]; then
      # Check both v4 and v6 snapshots for any afwall-wifi-prefixed subtree.
      local _wifi_in_snap=0
      afwall_prefix_present_from_snapshot "$v4_snap" "$AFWALL_CHAIN_WIFI" && _wifi_in_snap=1
      afwall_prefix_present_from_snapshot "$v6_snap" "$AFWALL_CHAIN_WIFI" && _wifi_in_snap=1

      if [ "$_wifi_in_snap" = "1" ]; then
        # Transport subtree is present — reset absence counter.
        wifi_absent_since=0

        # Check reachability from within the AFWall graph.
        local _wifi_reachable=0
        afwall_prefix_reachable_from_snapshot "$v4_snap" "$AFWALL_CHAIN_WIFI" && _wifi_reachable=1
        afwall_prefix_reachable_from_snapshot "$v6_snap" "$AFWALL_CHAIN_WIFI" && _wifi_reachable=1

        if [ "$_wifi_reachable" = "0" ]; then
          debug_log "service: wifi subtree exists but is unreachable from AFWall graph — not accepting"
        else
          # Compute combined transport subtree fingerprint from both families.
          local _w_fp_v4 _w_fp_v6 _new_wifi_fp
          _w_fp_v4="$(afwall_transport_fingerprint_from_snapshot "$v4_snap" "$AFWALL_CHAIN_WIFI")"
          _w_fp_v6="$(afwall_transport_fingerprint_from_snapshot "$v6_snap" "$AFWALL_CHAIN_WIFI")"
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
          local _wifi_settle="$SETTLE_SECS"
          [ "$_boot_complete_now" = "1" ] && _wifi_settle="$SETTLE_SECS_POST_BOOT"
          if [ "$_wifi_stable" -ge "$_wifi_settle" ]; then
            wifi_done=1
            log "service: wifi transport: subtree stable=${_wifi_stable}s fp=$wifi_last_fp — Wi-Fi ready"
            lowlevel_restore_wifi_if_allowed
          fi
        fi
      else
        # No wifi prefix in either snapshot — track absence stability.
        # Reset fingerprint state since there is nothing to track.
        wifi_last_fp=""; wifi_fp_stable_since=0
        if [ "$wifi_absent_since" = "0" ] && [ "$now_ts" != "0" ]; then
          wifi_absent_since="$now_ts"
          debug_log "service: wifi: no ${AFWALL_CHAIN_WIFI}-prefix subtree seen in snapshot"
        fi
        if [ "$wifi_absent_since" != "0" ] && [ "$now_ts" != "0" ]; then
          local _w_absent_elapsed _w_absent_threshold
          _w_absent_elapsed=$((now_ts - wifi_absent_since))
          _w_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS"
          [ "$_boot_complete_now" = "1" ] && _w_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT"
          if [ "$_w_absent_elapsed" -ge "$_w_absent_threshold" ]; then
            wifi_done=1
            log "service: wifi transport accepted via absence-stable fallback after ${_w_absent_elapsed}s (no wifi-prefixed subtree detected in snapshot)"
            lowlevel_restore_wifi_if_allowed
          fi
        fi
      fi
    fi

    # ── Mobile data transport ───────────────────────────────────────────────
    if [ "$mobile_done" = "0" ]; then
      local _mobile_in_snap=0
      afwall_prefix_present_from_snapshot "$v4_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_in_snap=1
      afwall_prefix_present_from_snapshot "$v6_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_in_snap=1

      if [ "$_mobile_in_snap" = "1" ]; then
        mobile_absent_since=0

        local _mobile_reachable=0
        afwall_prefix_reachable_from_snapshot "$v4_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_reachable=1
        afwall_prefix_reachable_from_snapshot "$v6_snap" "$AFWALL_CHAIN_MOBILE" && _mobile_reachable=1

        if [ "$_mobile_reachable" = "0" ]; then
          debug_log "service: mobile subtree exists but is unreachable from AFWall graph — not accepting"
        else
          local _m_fp_v4 _m_fp_v6 _new_mobile_fp
          _m_fp_v4="$(afwall_transport_fingerprint_from_snapshot "$v4_snap" "$AFWALL_CHAIN_MOBILE")"
          _m_fp_v6="$(afwall_transport_fingerprint_from_snapshot "$v6_snap" "$AFWALL_CHAIN_MOBILE")"
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
          local _mobile_settle="$SETTLE_SECS"
          [ "$_boot_complete_now" = "1" ] && _mobile_settle="$SETTLE_SECS_POST_BOOT"
          if [ "$_mobile_stable" -ge "$_mobile_settle" ]; then
            mobile_done=1
            log "service: mobile transport: subtree stable=${_mobile_stable}s fp=$mobile_last_fp — mobile ready"
            lowlevel_restore_mobile_data_if_allowed
          fi
        fi
      else
        mobile_last_fp=""; mobile_fp_stable_since=0
        if [ "$mobile_absent_since" = "0" ] && [ "$now_ts" != "0" ]; then
          mobile_absent_since="$now_ts"
          debug_log "service: mobile: no ${AFWALL_CHAIN_MOBILE}-prefix subtree seen in snapshot"
        fi
        if [ "$mobile_absent_since" != "0" ] && [ "$now_ts" != "0" ]; then
          local _m_absent_elapsed _m_absent_threshold
          _m_absent_elapsed=$((now_ts - mobile_absent_since))
          _m_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS"
          [ "$_boot_complete_now" = "1" ] && _m_absent_threshold="$TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT"
          if [ "$_m_absent_elapsed" -ge "$_m_absent_threshold" ]; then
            mobile_done=1
            log "service: mobile transport accepted via absence-stable fallback after ${_m_absent_elapsed}s (no mobile-prefixed subtree detected in snapshot)"
            lowlevel_restore_mobile_data_if_allowed
          fi
        fi
      fi
    fi

  }

  # ── Main polling loop ───────────────────────────────────────────────────────
  while :; do
    NOW="$(date +%s 2>/dev/null)" || NOW=0

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

    # Cache sys.boot_completed result once per iteration to avoid repeated
    # getprop calls across all the boot-completion acceleration checks below.
    _boot_complete_now=0
    if [ "$BOOT_COMPLETE_ACCELERATE" = "1" ] && sys_boot_completed; then
      _boot_complete_now=1
    fi

    # ── Capture coherent per-poll filter-table snapshots ────────────────────
    # One consistent read of the filter table per family per iteration.
    # All presence / fingerprint / reachability checks below use these
    # variables — none of them call iptables independently.
    v4_snap=""; v6_snap=""
    if [ "$v4_blocked" = "1" ] && [ "$v4_done" = "0" ]; then
      v4_snap="$(capture_filter_snapshot_v4 2>/dev/null)" || v4_snap=""
    fi
    if [ "$v6_blocked" = "1" ] && [ "$v6_done" = "0" ]; then
      v6_snap="$(capture_filter_snapshot_v6 2>/dev/null)" || v6_snap=""
    fi
    # Transport checks also need snapshots even after family is confirmed.
    if [ "$wifi_done" = "0" ] || [ "$mobile_done" = "0" ]; then
      [ -z "$v4_snap" ] && v4_snap="$(capture_filter_snapshot_v4 2>/dev/null)"
      [ -z "$v6_snap" ] && v6_snap="$(capture_filter_snapshot_v6 2>/dev/null)"
    fi

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
      fi
    fi

    # ── Unlock detection ────────────────────────────────────────────────────
    # Determine if the device has been unlocked; used for timeout gating.
    # Probe only when the configured UNLOCK_POLL_INTERVAL has elapsed.
    if [ "$device_unlocked" = "0" ] && [ "$NOW" != "0" ]; then
      _do_unlock_probe=0
      if [ "$last_unlock_poll_ts" = "0" ]; then
        _do_unlock_probe=1
      elif [ $((NOW - last_unlock_poll_ts)) -ge "$UNLOCK_POLL_INTERVAL" ]; then
        _do_unlock_probe=1
      fi
      if [ "$_do_unlock_probe" = "1" ]; then
        last_unlock_poll_ts="$NOW"
        if lowlevel_device_is_unlocked; then
          device_unlocked=1
          unlock_ts="$NOW"
          _unlock_elapsed=0
          [ "$START_TS" != "0" ] && _unlock_elapsed=$((NOW - START_TS))
          log "service: device unlock detected (elapsed=${_unlock_elapsed}s from start)"
        else
          debug_log "service: device not yet unlocked — timeout gate active"
        fi
      fi
    fi

    # ── Timeout countdown and timeout start ─────────────────────────────────
    # Timeout only starts after unlock (when TIMEOUT_UNLOCK_GATED=1).
    if [ "$timeout_start_ts" = "0" ]; then
      if [ "$TIMEOUT_UNLOCK_GATED" = "1" ]; then
        if [ "$device_unlocked" = "1" ]; then
          timeout_start_ts="$NOW"
          log "service: timeout countdown started after unlock (timeout=${TIMEOUT_SECS}s)"
        fi
        # else: waiting for unlock; do not start timeout
      else
        # Not gated by unlock: start counting from service.sh start.
        # Use START_TS if it is a valid (non-zero) timestamp; fall back to NOW.
        timeout_start_ts="$START_TS"
        [ "$timeout_start_ts" = "0" ] && timeout_start_ts="$NOW"
      fi
    fi

    # ── Timeout check ───────────────────────────────────────────────────────
    if [ "$timeout_start_ts" != "0" ] && [ "$NOW" != "0" ]; then
      ELAPSED_SINCE_TIMEOUT_START=$((NOW - timeout_start_ts))
      if [ "$ELAPSED_SINCE_TIMEOUT_START" -ge "$TIMEOUT_SECS" ]; then
        log "service: TIMEOUT ${TIMEOUT_SECS}s reached — policy=${TIMEOUT_POLICY} auto_unblock=${AUTO_TIMEOUT_UNBLOCK} unlocked=${device_unlocked}"

        # Check whether timeout-based unblocking is permitted.
        if [ "$AUTO_TIMEOUT_UNBLOCK" = "1" ] && \
           [ "$TIMEOUT_POLICY" = "unblock" ] && \
           [ "$device_unlocked" = "1" ]; then
          # ── Timeout: unblock policy (user opted in, device unlocked) ──────
          log "service: TIMEOUT: unblocking per AUTO_TIMEOUT_UNBLOCK=1 + TIMEOUT_POLICY=unblock"
          if [ "$v4_done" = "0" ] || [ "$v4_released" = "0" ]; then
            log "service: TIMEOUT v4: removing block"
            _log_pre_remove_integrity_v4 "timeout"
            log_transition_snapshot "v4" "timeout_unblock"
            remove_output_block_v4
            if [ -f "${STATE_DIR}/ipv4_fwd_active" ] || forward_block_present_v4; then
              remove_forward_block_v4
            fi
            if [ -f "${STATE_DIR}/ipv4_in_active" ] || input_block_present_v4; then
              remove_input_block_v4
            fi
          fi
          if [ "$v6_done" = "0" ] || [ "$v6_released" = "0" ]; then
            log "service: TIMEOUT v6: removing block"
            _log_pre_remove_integrity_v6 "timeout"
            log_transition_snapshot "v6" "timeout_unblock"
            remove_output_block_v6
            if [ -f "${STATE_DIR}/ipv6_fwd_active" ] || forward_block_present_v6; then
              remove_forward_block_v6
            fi
            if [ -f "${STATE_DIR}/ipv6_in_active" ] || input_block_present_v6; then
              remove_input_block_v6
            fi
          fi
          rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
          clear_blackout_active
          lowlevel_restore_changed_state
          log "service: TIMEOUT: timeout unblock triggered — stop flag set, loop exiting"
          log "service: TIMEOUT: networking restored (unblock policy after unlock)"
        else
          # ── Timeout: fail_closed or auto_unblock disabled or not unlocked ──
          _reason=""
          if [ "$AUTO_TIMEOUT_UNBLOCK" != "1" ]; then
            _reason="AUTO_TIMEOUT_UNBLOCK=0 (auto-unblocking disabled)"
          elif [ "$TIMEOUT_POLICY" != "unblock" ]; then
            _reason="TIMEOUT_POLICY=${TIMEOUT_POLICY}"
          else
            _reason="device not yet unlocked"
          fi
          if [ "$v4_done" = "0" ] || [ "$v4_released" = "0" ]; then
            log "service: TIMEOUT v4: block RETAINED — ${_reason}"
            log_transition_snapshot "v4" "timeout_fail_closed"
          fi
          if [ "$v6_done" = "0" ] || [ "$v6_released" = "0" ]; then
            log "service: TIMEOUT v6: block RETAINED — ${_reason}"
            log_transition_snapshot "v6" "timeout_fail_closed"
          fi
          lowlevel_restore_changed_state
          log "service: TIMEOUT: lower-layer restored; iptables blocks retained (${_reason})"
        fi

        remove_service_pid
        exit 0
      fi
    fi

    # ── Boot-completion diagnostic ──────────────────────────────────────────
    if [ "$_boot_complete_now" = "1" ]; then
      debug_log "service: sys.boot_completed=1 boot_accel=${BOOT_COMPLETE_ACCELERATE} v4_done=$v4_done v6_done=$v6_done wifi_done=$wifi_done mobile_done=$mobile_done"
    fi

    # ── IPv4 family handoff (composite readiness, non-blocking) ───────────
    if [ "$v4_blocked" = "1" ] && [ "$v4_done" = "0" ]; then

      if afwall_graph_present_from_snapshot "$v4_snap" && \
         afwall_graph_nontrivial_from_snapshot "$v4_snap"; then

        # Compute full AFWall graph fingerprint from this poll's snapshot.
        _new_v4_fp="$(afwall_graph_fingerprint_from_snapshot "$v4_snap")"

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
        if [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          _v4_corroborator="process"
        elif afwall_secondary_evidence_present "$AFW_PKG"; then
          _v4_corroborator="file_mtime"
        fi
        [ "$_boot_complete_now" = "1" ] && \
          afwall_rules_dense_v4 "$AFWALL_RULE_DENSITY_MIN" && \
          [ "$_v4_corroborator" = "none" ] && _v4_corroborator="boot_complete_dense"

        # Select effective stability thresholds.
        _v4_fast_secs="$FAST_STABLE_SECS"
        _v4_slow_secs="$SLOW_STABLE_SECS"
        if [ "$_boot_complete_now" = "1" ]; then
          _v4_fast_secs="$LIVENESS_SECS_POST_BOOT"
          _v4_slow_secs="$FALLBACK_SECS_POST_BOOT"
        fi

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

        _new_v6_fp="$(afwall_graph_fingerprint_from_snapshot "$v6_snap")"

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
        if [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          _v6_corroborator="process"
        elif afwall_secondary_evidence_present "$AFW_PKG"; then
          _v6_corroborator="file_mtime"
        fi
        [ "$_boot_complete_now" = "1" ] && \
          afwall_rules_dense_v6 "$AFWALL_RULE_DENSITY_MIN" && \
          [ "$_v6_corroborator" = "none" ] && _v6_corroborator="boot_complete_dense"

        _v6_fast_secs="$FAST_STABLE_SECS"
        _v6_slow_secs="$SLOW_STABLE_SECS"
        if [ "$_boot_complete_now" = "1" ]; then
          _v6_fast_secs="$LIVENESS_SECS_POST_BOOT"
          _v6_slow_secs="$FALLBACK_SECS_POST_BOOT"
        fi

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
      v4_released=1
      log "service: v4 block removed (intentional handoff)"
      log "service: v4 handoff confirmed — removing family block immediately"
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
      v6_released=1
      log "service: v6 block removed (intentional handoff)"
      log "service: v6 handoff confirmed — removing family block immediately"
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

    # Log once if family blocks are released but transport restore is still pending.
    if [ "$_v4_complete" = "1" ] && [ "$_v6_complete" = "1" ] && \
       { [ "$wifi_done" = "0" ] || [ "$mobile_done" = "0" ]; } && \
       [ "$_family_handoff_logged" = "0" ]; then
      log "service: family handoff complete but transport restore still pending (wifi=${wifi_done} mobile=${mobile_done})"
      _family_handoff_logged=1
    fi

    if [ "$_v4_complete" = "1" ] && [ "$_v6_complete" = "1" ] && \
       [ "$wifi_done" = "1" ] && [ "$mobile_done" = "1" ]; then
      log "service: handoff complete (v4=${v4_path:-skipped} v6=${v6_path:-skipped} wifi=done mobile=done)"
      rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
      clear_blackout_active

      # Stage E: restore remaining lower-layer state not yet restored by
      # transport-specific helpers.
      # Wi-Fi and mobile data are restored here for the case where transport
      # gating was bypassed (AFWALL_GATE=0 or service not suppressed) — the
      # transport-specific helper calls inside _check_transport_readiness would
      # have been skipped if wifi_done/mobile_done started as 1.
      lowlevel_restore_wifi_if_allowed || \
        log "service: WARN: Wi-Fi restore encountered an error"
      lowlevel_restore_mobile_data_if_allowed || \
        log "service: WARN: mobile-data restore encountered an error"
      lowlevel_restore_interfaces 2>/dev/null || true
      lowlevel_restore_bluetooth 2>/dev/null || true
      lowlevel_restore_tethering_note 2>/dev/null || true
      _ll_state_rm "mode" 2>/dev/null || true
      remove_service_pid
      log "service: handoff complete — AFWall is now sole active protection"
      exit 0
    fi

    sleep "$POLL_INTERVAL_SECS"
  done
) &
exit 0
