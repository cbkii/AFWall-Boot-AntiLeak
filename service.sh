#!/system/bin/sh
# service.sh - transport-aware handoff with unlock-gated timeout.
#
# Boot blackout model:
#   Stage A: Hard block installed in post-fs-data. Framework radio-off deferred.
#   Stage B: Late lower-layer suppression (Wi-Fi/data off, verified). Reasserted
#            periodically while waiting.
#   Stage C: Wait for per-family AFWall takeover (preferred or fallback path).
#            Also wait for transport-specific chain readiness (afwall-wifi /
#            afwall-3g) before releasing the corresponding radio.
#   Stage D: Only remove global hard block when ALL required transports are ready.
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
  UNLOCK_POLL_INTERVAL="${UNLOCK_POLL_INTERVAL:-5}"
  # How long to wait for transport-specific chains before falling back to
  # main-chain-only readiness (AFWall may not emit afwall-wifi / afwall-3g).
  TRANSPORT_WAIT_SECS="${TRANSPORT_WAIT_SECS:-30}"

  log "service: start ($MODULE_VERSION)"
  log "service: config: timeout=${TIMEOUT_SECS}s policy=${TIMEOUT_POLICY} auto_unblock=${AUTO_TIMEOUT_UNBLOCK} unlock_gated=${TIMEOUT_UNLOCK_GATED}"
  log "service: config: settle=${SETTLE_SECS}s liveness=${LIVENESS_SECS}s fallback=${FALLBACK_SECS}s transport_wait=${TRANSPORT_WAIT_SECS}s"
  log "service: config: fwd=${ENABLE_FORWARD_BLOCK:-1} in=${ENABLE_INPUT_BLOCK:-0} ll_mode=${LOWLEVEL_MODE:-safe}"
  log "service: config: wifi_gate=${WIFI_AFWALL_GATE} mobile_gate=${MOBILE_AFWALL_GATE} reassert_interval=${RADIO_REASSERT_INTERVAL}s"

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

  # Remove any remaining legacy artifacts.
  cleanup_legacy "service"

  # ── Stage B: Late lower-layer suppression ──────────────────────────────────
  # Re-assert and verify Wi-Fi/data off-state now that framework is available.
  # This re-asserts any early-phase quiesce and adds service-level suppression.
  lowlevel_prepare_environment

  START_TS="$(date +%s 2>/dev/null)" || START_TS=0
  last_reassert_ts="$START_TS"

  # ── Determine which families are actually blocked ───────────────────────────
  v4_blocked=0; v6_blocked=0

  if output_block_present_v4; then
    v4_blocked=1
    if [ -f "${STATE_DIR}/ipv4_out_table" ]; then
      log "service: v4 OUTPUT block detected (table=$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null))"
    else
      log "service: v4 OUTPUT block detected (live; state-file missing)"
    fi
  else
    log "service: v4 OUTPUT block not detected — no v4 handoff needed"
  fi

  if output_block_present_v6; then
    v6_blocked=1
    if [ -f "${STATE_DIR}/ipv6_out_table" ]; then
      log "service: v6 OUTPUT block detected (table=$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null))"
    else
      log "service: v6 OUTPUT block detected (live; state-file missing)"
    fi
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

  if [ "$v4_blocked" = "0" ] && [ "$v6_blocked" = "0" ]; then
    log "service: no OUTPUT blocks detected — skipping handoff; restoring lower-layer"
    clear_blackout_active
    lowlevel_restore_changed_state
    exit 0
  fi

  # ── Per-family handoff tracking ─────────────────────────────────────────────
  # v4_done/v6_done: AFWall takeover confirmed for that family.
  # v4_released/v6_released: block has been removed for that family.
  v4_done=0; v6_done=0
  v4_released=0; v6_released=0
  [ "$v4_blocked" = "0" ] && v4_done=1 && v4_released=1
  [ "$v6_blocked" = "0" ] && v6_done=1 && v6_released=1

  v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0; v4_path=""
  v6_takeover_ts=0; v6_sig=""; v6_alive_ts=0; v6_fallback_ts=0; v6_path=""

  # ── Transport readiness tracking ────────────────────────────────────────────
  # wifi_done/mobile_done: 1 when the corresponding transport's AFWall readiness
  # is confirmed (or when gating is not required for that transport).
  #
  # Gating is bypassed if:
  #   - The corresponding AFWALL_GATE flag is 0, OR
  #   - The module did not suppress that service (state file absent), OR
  #   - AFWall doesn't use transport-specific chains (graceful fallback)

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

  # Per-transport stability windows (timestamps and signatures)
  wifi_check_ts=0; wifi_sig=""
  mobile_check_ts=0; mobile_sig=""
  # Track whether transport chains were found (for fallback to main-chain readiness)
  wifi_chain_seen=0; mobile_chain_seen=0

  # ── Unlock state for timeout gating ────────────────────────────────────────
  device_unlocked=0
  unlock_ts=0
  timeout_start_ts=0  # timestamp when timeout countdown began (0 = not started)
  last_unlock_poll_ts=0  # timestamp of last lowlevel_device_is_unlocked probe

  # ── Signature validity helper ───────────────────────────────────────────────
  _sig_is_valid() { [ -n "$1" ] && [ "$1" != "na:na" ]; }

  # ── Final-settle helpers ────────────────────────────────────────────────────
  _settle_confirm_v4() {
    local path_label="$1" pre_sig="$2" post_sig
    sleep "$SETTLE_SECS"
    if ! afwall_takeover_present_v4; then
      log "service: v4 ${path_label}: takeover absent after settle — reset"
      return 1
    fi
    post_sig="$(afwall_takeover_signature_v4)"
    if ! _sig_is_valid "$post_sig"; then
      log "service: v4 ${path_label}: post_sig invalid (${post_sig:-empty}) — reset"
      return 1
    fi
    if [ "$post_sig" != "$pre_sig" ]; then
      log "service: v4 ${path_label}: settle sig drift (pre=$pre_sig post=$post_sig) — reset"
      return 1
    fi
    log "service: v4 ${path_label}: settle confirmed (sig=$pre_sig)"
    return 0
  }

  _settle_confirm_v6() {
    local path_label="$1" pre_sig="$2" post_sig
    sleep "$SETTLE_SECS"
    if ! afwall_takeover_present_v6; then
      log "service: v6 ${path_label}: takeover absent after settle — reset"
      return 1
    fi
    post_sig="$(afwall_takeover_signature_v6)"
    if ! _sig_is_valid "$post_sig"; then
      log "service: v6 ${path_label}: post_sig invalid (${post_sig:-empty}) — reset"
      return 1
    fi
    if [ "$post_sig" != "$pre_sig" ]; then
      log "service: v6 ${path_label}: settle sig drift (pre=$pre_sig post=$post_sig) — reset"
      return 1
    fi
    log "service: v6 ${path_label}: settle confirmed (sig=$pre_sig)"
    return 0
  }

  # ── Transport readiness check ────────────────────────────────────────────────
  # Called after the main AFWall chain is confirmed stable for at least one family.
  # Updates wifi_done and mobile_done based on transport-specific chain evidence.
  _check_transport_readiness() {
    local fam_ready=0
    [ "$v4_done" = "1" ] || [ "$v6_done" = "1" ] && fam_ready=1
    [ "$fam_ready" = "1" ] || return 0

    local now_ts
    now_ts="$(date +%s 2>/dev/null)" || now_ts=0

    # First confirmed takeover timestamp from either family.
    # Used for the transport-chain fallback timer so the fallback works
    # correctly even when only one IP family was blocked/confirmed.
    local _afwall_confirmed_ts
    _afwall_confirmed_ts="${v4_takeover_ts:-0}"
    if [ "$_afwall_confirmed_ts" = "0" ]; then
      _afwall_confirmed_ts="${v6_takeover_ts:-0}"
    fi

    # ── Wi-Fi transport ───────────────────────────────────────────────────────
    if [ "$wifi_done" = "0" ]; then
      local w_sig_v4 w_sig_v6 w_sig
      # Check for afwall-wifi chain in either family
      if afwall_wifi_chain_present_v4 || afwall_wifi_chain_present_v6; then
        wifi_chain_seen=1
        w_sig_v4="$(afwall_wifi_signature_v4 2>/dev/null)" || w_sig_v4="na"
        w_sig_v6="$(afwall_wifi_signature_v6 2>/dev/null)" || w_sig_v6="na"
        w_sig="${w_sig_v4}:${w_sig_v6}"
        if [ "$wifi_check_ts" = "0" ]; then
          wifi_check_ts="$now_ts"
          wifi_sig="$w_sig"
          log "service: wifi transport: ${AFWALL_CHAIN_WIFI} chain first seen (sig=${w_sig})"
        elif [ "$w_sig" != "$wifi_sig" ]; then
          log "service: wifi transport: sig changed ($wifi_sig -> $w_sig) — reset"
          wifi_check_ts="$now_ts"
          wifi_sig="$w_sig"
        else
          local w_elapsed
          w_elapsed=$((now_ts - wifi_check_ts))
          if [ "$w_elapsed" -ge "$SETTLE_SECS" ]; then
            wifi_done=1
            log "service: wifi transport: ${AFWALL_CHAIN_WIFI} chain stable (sig=${w_sig} elapsed=${w_elapsed}s) — Wi-Fi ready"
            lowlevel_restore_wifi_if_allowed
          fi
        fi
      else
        # Transport chain not (yet) present.
        # If enough time has passed since main chain was first confirmed and
        # we have never seen the transport chain, fall back to main-chain-only
        # readiness (AFWall may not be using transport-specific chains).
        if [ "$wifi_chain_seen" = "0" ] && \
           [ "$now_ts" != "0" ] && [ "$_afwall_confirmed_ts" != "0" ]; then
          local w_wait
          w_wait=$((now_ts - _afwall_confirmed_ts))
          if [ "$w_wait" -ge "$TRANSPORT_WAIT_SECS" ]; then
            wifi_done=1
            log "service: wifi transport: no ${AFWALL_CHAIN_WIFI} chain after ${w_wait}s; accepting main chain readiness"
            lowlevel_restore_wifi_if_allowed
          fi
        fi
      fi
    fi

    # ── Mobile data transport ─────────────────────────────────────────────────
    if [ "$mobile_done" = "0" ]; then
      local m_sig_v4 m_sig_v6 m_sig
      if afwall_mobile_chain_present_v4 || afwall_mobile_chain_present_v6; then
        mobile_chain_seen=1
        m_sig_v4="$(afwall_mobile_signature_v4 2>/dev/null)" || m_sig_v4="na"
        m_sig_v6="$(afwall_mobile_signature_v6 2>/dev/null)" || m_sig_v6="na"
        m_sig="${m_sig_v4}:${m_sig_v6}"
        if [ "$mobile_check_ts" = "0" ]; then
          mobile_check_ts="$now_ts"
          mobile_sig="$m_sig"
          log "service: mobile transport: ${AFWALL_CHAIN_MOBILE} chain first seen (sig=${m_sig})"
        elif [ "$m_sig" != "$mobile_sig" ]; then
          log "service: mobile transport: sig changed ($mobile_sig -> $m_sig) — reset"
          mobile_check_ts="$now_ts"
          mobile_sig="$m_sig"
        else
          local m_elapsed
          m_elapsed=$((now_ts - mobile_check_ts))
          if [ "$m_elapsed" -ge "$SETTLE_SECS" ]; then
            mobile_done=1
            log "service: mobile transport: ${AFWALL_CHAIN_MOBILE} chain stable (sig=${m_sig} elapsed=${m_elapsed}s) — mobile ready"
            lowlevel_restore_mobile_data_if_allowed
          fi
        fi
      else
        if [ "$mobile_chain_seen" = "0" ] && \
           [ "$now_ts" != "0" ] && [ "$_afwall_confirmed_ts" != "0" ]; then
          local m_wait
          m_wait=$((now_ts - _afwall_confirmed_ts))
          if [ "$m_wait" -ge "$TRANSPORT_WAIT_SECS" ]; then
            mobile_done=1
            log "service: mobile transport: no ${AFWALL_CHAIN_MOBILE} chain after ${m_wait}s; accepting main chain readiness"
            lowlevel_restore_mobile_data_if_allowed
          fi
        fi
      fi
    fi
  }

  # ── Main polling loop ───────────────────────────────────────────────────────
  while :; do
    NOW="$(date +%s 2>/dev/null)" || NOW=0

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

        exit 0
      fi
    fi

    # ── Boot-completion diagnostic ──────────────────────────────────────────
    if [ "$(getprop sys.boot_completed 2>/dev/null)" = "1" ]; then
      debug_log "service: sys.boot_completed=1 v4_done=$v4_done v6_done=$v6_done wifi_done=$wifi_done mobile_done=$mobile_done"
    fi

    # ── IPv4 family handoff ────────────────────────────────────────────────
    if [ "$v4_blocked" = "1" ] && [ "$v4_done" = "0" ]; then

      if afwall_takeover_present_v4; then
        new_sig="$(afwall_takeover_signature_v4)"

        if [ "$v4_takeover_ts" = "0" ]; then
          v4_takeover_ts="$NOW"
          v4_sig="$new_sig"
          v4_fallback_ts="$NOW"
          log "service: v4 takeover first detected (sig=$new_sig)"
          log_transition_snapshot "v4" "takeover_first"
        fi

        if [ "$new_sig" != "$v4_sig" ]; then
          log "service: v4 sig changed ($v4_sig -> $new_sig) — resetting stability windows"
          v4_sig="$new_sig"
          v4_takeover_ts="$NOW"
          v4_alive_ts=0
          v4_fallback_ts="$NOW"
        fi

        if [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          if [ "$v4_alive_ts" = "0" ]; then
            v4_alive_ts="$NOW"
            debug_log "service: v4 liveness window started"
          fi

          # Preferred path: liveness confirmed for >= LIVENESS_SECS
          if [ "$NOW" != "0" ] && [ "$v4_alive_ts" != "0" ]; then
            alive_elapsed=$((NOW - v4_alive_ts))
            if [ "$alive_elapsed" -ge "$LIVENESS_SECS" ]; then
              log "service: v4 preferred-path: liveness ${alive_elapsed}s + takeover stable; settling ${SETTLE_SECS}s"
              if _settle_confirm_v4 "preferred-path" "$v4_sig"; then
                v4_done=1; v4_path="preferred"
                log "service: v4 takeover confirmed (preferred path; liveness=${alive_elapsed}s sig=$v4_sig)"
              else
                v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0
              fi
            fi
          fi

        else
          if [ "$v4_alive_ts" != "0" ]; then
            log "service: v4 AFWall liveness lost — resetting liveness window"
          fi
          v4_alive_ts=0

          # Fallback path: stability window without liveness
          if [ "$v4_fallback_ts" != "0" ] && [ "$NOW" != "0" ]; then
            fallback_elapsed=$((NOW - v4_fallback_ts))
            if [ "$fallback_elapsed" -ge "$FALLBACK_SECS" ]; then
              if afwall_secondary_evidence_present "$AFW_PKG"; then
                log "service: v4 fallback-path: stable ${fallback_elapsed}s + secondary-evidence; settling ${SETTLE_SECS}s"
              else
                log "service: v4 fallback-path: stable ${fallback_elapsed}s; settling ${SETTLE_SECS}s"
              fi
              if _settle_confirm_v4 "fallback-path" "$v4_sig"; then
                v4_done=1; v4_path="fallback"
                log "service: v4 takeover confirmed (fallback path; stable=${fallback_elapsed}s sig=$v4_sig)"
              else
                v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0
              fi
            fi
          fi
        fi

      else
        if [ "$v4_takeover_ts" != "0" ]; then
          log "service: v4 takeover was present but is now absent — reset"
          log_transition_snapshot "v4" "takeover_lost"
        fi
        v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0
      fi

    fi # end v4 family handoff

    # ── IPv6 family handoff ────────────────────────────────────────────────
    if [ "$v6_blocked" = "1" ] && [ "$v6_done" = "0" ]; then

      if afwall_takeover_present_v6; then
        new_sig="$(afwall_takeover_signature_v6)"

        if [ "$v6_takeover_ts" = "0" ]; then
          v6_takeover_ts="$NOW"
          v6_sig="$new_sig"
          v6_fallback_ts="$NOW"
          log "service: v6 takeover first detected (sig=$new_sig)"
          log_transition_snapshot "v6" "takeover_first"
        fi

        if [ "$new_sig" != "$v6_sig" ]; then
          log "service: v6 sig changed ($v6_sig -> $new_sig) — resetting stability windows"
          v6_sig="$new_sig"
          v6_takeover_ts="$NOW"
          v6_alive_ts=0
          v6_fallback_ts="$NOW"
        fi

        if [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          if [ "$v6_alive_ts" = "0" ]; then
            v6_alive_ts="$NOW"
            debug_log "service: v6 liveness window started"
          fi

          if [ "$NOW" != "0" ] && [ "$v6_alive_ts" != "0" ]; then
            alive_elapsed=$((NOW - v6_alive_ts))
            if [ "$alive_elapsed" -ge "$LIVENESS_SECS" ]; then
              log "service: v6 preferred-path: liveness ${alive_elapsed}s + takeover stable; settling ${SETTLE_SECS}s"
              if _settle_confirm_v6 "preferred-path" "$v6_sig"; then
                v6_done=1; v6_path="preferred"
                log "service: v6 takeover confirmed (preferred path; liveness=${alive_elapsed}s sig=$v6_sig)"
              else
                v6_takeover_ts=0; v6_sig=""; v6_alive_ts=0; v6_fallback_ts=0
              fi
            fi
          fi

        else
          if [ "$v6_alive_ts" != "0" ]; then
            log "service: v6 AFWall liveness lost — resetting liveness window"
          fi
          v6_alive_ts=0

          if [ "$v6_fallback_ts" != "0" ] && [ "$NOW" != "0" ]; then
            fallback_elapsed=$((NOW - v6_fallback_ts))
            if [ "$fallback_elapsed" -ge "$FALLBACK_SECS" ]; then
              if afwall_secondary_evidence_present "$AFW_PKG"; then
                log "service: v6 fallback-path: stable ${fallback_elapsed}s + secondary-evidence; settling ${SETTLE_SECS}s"
              else
                log "service: v6 fallback-path: stable ${fallback_elapsed}s; settling ${SETTLE_SECS}s"
              fi
              if _settle_confirm_v6 "fallback-path" "$v6_sig"; then
                v6_done=1; v6_path="fallback"
                log "service: v6 takeover confirmed (fallback path; stable=${fallback_elapsed}s sig=$v6_sig)"
              else
                v6_takeover_ts=0; v6_sig=""; v6_alive_ts=0; v6_fallback_ts=0
              fi
            fi
          fi
        fi

      else
        if [ "$v6_takeover_ts" != "0" ]; then
          log "service: v6 takeover was present but is now absent — reset"
          log_transition_snapshot "v6" "takeover_lost"
        fi
        v6_takeover_ts=0; v6_sig=""; v6_alive_ts=0; v6_fallback_ts=0
      fi

    fi # end v6 family handoff

    # ── Transport readiness check ──────────────────────────────────────────
    # Only runs after at least one family's AFWall takeover is confirmed.
    if [ "$v4_done" = "1" ] || [ "$v6_done" = "1" ]; then
      if [ "$wifi_done" = "0" ] || [ "$mobile_done" = "0" ]; then
        _check_transport_readiness
      fi
    fi

    # ── Block release: remove blocks when transports are ready ────────────
    # Safety rule: do not remove a family's block until ALL required transports
    # are ready, to prevent unprotected windows on any transport.
    if [ "$v4_done" = "1" ] && [ "$wifi_done" = "1" ] && [ "$mobile_done" = "1" ] && \
       [ "$v4_released" = "0" ]; then
      log "service: v4 all transports ready; removing v4 block (path=${v4_path:-confirmed})"
      log_transition_snapshot "v4" "pre_remove"
      remove_output_block_v4
      if [ -f "${STATE_DIR}/ipv4_fwd_active" ] || forward_block_present_v4; then
        remove_forward_block_v4
      fi
      if [ -f "${STATE_DIR}/ipv4_in_active" ] || input_block_present_v4; then
        remove_input_block_v4
      fi
      v4_released=1
      log "service: v4 block removed"
    fi

    if [ "$v6_done" = "1" ] && [ "$wifi_done" = "1" ] && [ "$mobile_done" = "1" ] && \
       [ "$v6_released" = "0" ]; then
      log "service: v6 all transports ready; removing v6 block (path=${v6_path:-confirmed})"
      log_transition_snapshot "v6" "pre_remove"
      remove_output_block_v6
      if [ -f "${STATE_DIR}/ipv6_fwd_active" ] || forward_block_present_v6; then
        remove_forward_block_v6
      fi
      if [ -f "${STATE_DIR}/ipv6_in_active" ] || input_block_present_v6; then
        remove_input_block_v6
      fi
      v6_released=1
      log "service: v6 block removed"
    fi

    # ── All done? ──────────────────────────────────────────────────────────
    # Only declare handoff complete when all blocked families are released AND
    # all transport gates are satisfied.
    _v4_complete=1; _v6_complete=1
    [ "$v4_blocked" = "1" ] && [ "$v4_released" = "0" ] && _v4_complete=0
    [ "$v6_blocked" = "1" ] && [ "$v6_released" = "0" ] && _v6_complete=0

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
      log "service: handoff complete — AFWall is now sole active protection"
      exit 0
    fi

    sleep 2
  done
) &
exit 0
