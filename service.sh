#!/system/bin/sh
# service.sh - family-aware handoff: waits for AFWall IPv4 and IPv6 takeover
# independently before releasing each family's temporary block.
# Runs the entire logic in a background subshell so Magisk's service phase
# is not held up.
#
# Release logic per family:
#
#   Preferred path (liveness corroborated):
#     1. AFWall takeover present (chain + OUTPUT hook + non-trivial rules).
#     2. AFWall process alive for a sustained LIVENESS_SECS window.
#     3. Rule-graph signature stable throughout the window.
#     4. Brief final verify, then remove that family's temporary block.
#
#   Fallback path (liveness unreliable, but takeover clearly stable):
#     1. AFWall takeover present, rule-graph stable for FALLBACK_SECS.
#     2. Optional secondary evidence (AFWall data files newer than our block).
#     3. Brief final verify, then remove that family's temporary block.
#
# Families are handled independently — IPv6 readiness does NOT unlock IPv4
# and vice versa. Only families actually blocked by this module are considered.
(
  MODDIR="${0%/*}"
  . "$MODDIR/bin/common.sh"

  load_config
  TIMEOUT_SECS="${TIMEOUT_SECS:-120}"
  SETTLE_SECS="${SETTLE_SECS:-5}"
  # LIVENESS_SECS: sustained AFWall process-visibility window required for the
  # preferred handoff path. ~6 s as specified in the module design requirements.
  LIVENESS_SECS="${LIVENESS_SECS:-6}"
  # FALLBACK_SECS: extended rule-stability window used when liveness is not
  # visible. Must be longer than LIVENESS_SECS to be a meaningful fallback.
  FALLBACK_SECS="${FALLBACK_SECS:-$((LIVENESS_SECS * 2))}"

  log "service: start"
  log "service: config: timeout=${TIMEOUT_SECS}s settle=${SETTLE_SECS}s liveness=${LIVENESS_SECS}s fallback=${FALLBACK_SECS}s"
  log "service: config: fwd=${ENABLE_FORWARD_BLOCK:-1} in=${ENABLE_INPUT_BLOCK:-0} ll_mode=${LOWLEVEL_MODE:-safe}"

  # ── Detect AFWall package ───────────────────────────────────────────────────
  # Prefer donate variant (dev.ukanth.ufirewall.donate); fall back to free.
  # Used for process-level liveness checks and secondary evidence.
  AFW_PKG="$(resolve_afwall_pkg 2>/dev/null)" || AFW_PKG=""
  if [ -n "$AFW_PKG" ]; then
    log "service: AFWall pkg=$AFW_PKG"
  else
    log "service: AFWall package not found — liveness checks disabled; rule-detection only"
  fi

  # Remove any remaining legacy artifacts before entering the polling loop.
  cleanup_legacy "service"

  # ── Lower-layer suppression (Layer 1 and Layer 3) ──────────────────────────
  # Performs interface quiesce (Layer 1: no framework needed) and
  # service-level suppression (Layer 3: Wi-Fi/data/BT/tether shutdown once
  # framework is ready).
  # The iptables hard block (Layer 2) is already installed from post-fs-data.
  lowlevel_prepare_environment

  START_TS="$(date +%s 2>/dev/null)" || START_TS=0

  # ── Determine which families are actually blocked ───────────────────────────
  # Only track families for which this module installed an OUTPUT block.
  # Families not blocked are immediately marked done so they are not awaited.
  v4_blocked=0; v6_blocked=0
  if [ -f "${STATE_DIR}/ipv4_out_table" ]; then
    v4_blocked=1
    log "service: v4 OUTPUT block active (table=$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null))"
  else
    log "service: v4 OUTPUT block not installed — no v4 handoff needed"
  fi
  if [ -f "${STATE_DIR}/ipv6_out_table" ]; then
    v6_blocked=1
    log "service: v6 OUTPUT block active (table=$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null))"
  else
    log "service: v6 OUTPUT block not installed — no v6 handoff needed"
  fi

  # Log supplementary FORWARD/INPUT block state for diagnostics.
  [ -f "${STATE_DIR}/ipv4_fwd_active" ] && log "service: v4 FORWARD block active"
  [ -f "${STATE_DIR}/ipv6_fwd_active" ] && log "service: v6 FORWARD block active"
  [ -f "${STATE_DIR}/ipv4_in_active" ]  && log "service: v4 INPUT block active"
  [ -f "${STATE_DIR}/ipv6_in_active" ]  && log "service: v6 INPUT block active"

  if [ "$v4_blocked" = "0" ] && [ "$v6_blocked" = "0" ]; then
    log "service: no OUTPUT blocks installed — skipping handoff; restoring lower-layer"
    lowlevel_restore_changed_state
    exit 0
  fi

  # ── Per-family handoff tracking ─────────────────────────────────────────────
  # v4_done / v6_done: 1 once that family's block has been safely removed.
  v4_done=0; v6_done=0
  [ "$v4_blocked" = "0" ] && v4_done=1
  [ "$v6_blocked" = "0" ] && v6_done=1

  # Per-family state (all times in seconds since epoch; 0 = "not yet started").
  # takeover_ts: timestamp of first confirmed takeover detection in current window.
  # sig:         last observed rule-graph signature (rules:chains).
  # alive_ts:    start of current continuous liveness window (0 = not running).
  # fallback_ts: start of current stability window for the fallback path.
  # path:        "preferred" or "fallback" once handoff completes (for logging).
  v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0; v4_path=""
  v6_takeover_ts=0; v6_sig=""; v6_alive_ts=0; v6_fallback_ts=0; v6_path=""

  # ── Main polling loop ───────────────────────────────────────────────────────
  while :; do
    NOW="$(date +%s 2>/dev/null)" || NOW=0

    # ── Per-family timeout ─────────────────────────────────────────────────────
    # On timeout: fail closed — retain all unresolved blocks and log exactly
    # which conditions were not met. The lower-layer state is still restored
    # because it is service-level suppression; the iptables block stays.
    if [ "$START_TS" != "0" ] && [ "$NOW" != "0" ]; then
      ELAPSED=$((NOW - START_TS))
      if [ "$ELAPSED" -ge "$TIMEOUT_SECS" ]; then
        log "service: TIMEOUT ${TIMEOUT_SECS}s — fail-closed on unresolved families"
        if [ "$v4_done" = "0" ]; then
          log "service: TIMEOUT v4: block RETAINED — AFWall v4 takeover not confirmed (takeover_ts=$v4_takeover_ts sig=$v4_sig alive_ts=$v4_alive_ts fallback_ts=$v4_fallback_ts)"
          log_transition_snapshot "v4" "timeout"
        fi
        if [ "$v6_done" = "0" ]; then
          log "service: TIMEOUT v6: block RETAINED — AFWall v6 takeover not confirmed (takeover_ts=$v6_takeover_ts sig=$v6_sig alive_ts=$v6_alive_ts fallback_ts=$v6_fallback_ts)"
          log_transition_snapshot "v6" "timeout"
        fi
        # Restore lower-layer suppression even on timeout; iptables blocks remain.
        lowlevel_restore_changed_state
        exit 0
      fi
    fi

    # ── Boot-completion diagnostic hint ────────────────────────────────────────
    # sys.boot_completed is used for logging correlation only; it is NOT a gate.
    if [ "$(getprop sys.boot_completed 2>/dev/null)" = "1" ]; then
      debug_log "service: sys.boot_completed=1 elapsed=${ELAPSED:-?}s v4_done=$v4_done v6_done=$v6_done"
    fi

    # ──────────────────────────────────────────────────────────────────────────
    # IPv4 family handoff
    # ──────────────────────────────────────────────────────────────────────────
    if [ "$v4_blocked" = "1" ] && [ "$v4_done" = "0" ]; then

      if afwall_takeover_present_v4; then
        new_sig="$(afwall_takeover_signature_v4)"

        # First detection in this window: record timestamp and initial signature.
        if [ "$v4_takeover_ts" = "0" ]; then
          v4_takeover_ts="$NOW"
          v4_sig="$new_sig"
          v4_fallback_ts="$NOW"
          log "service: v4 takeover first detected (sig=$new_sig)"
          log_transition_snapshot "v4" "takeover_first"
        fi

        # If the rule-graph signature has changed, the chain is still being
        # populated. Reset liveness and fallback windows to ensure stability.
        if [ "$new_sig" != "$v4_sig" ]; then
          log "service: v4 sig changed ($v4_sig -> $new_sig) — resetting stability windows"
          v4_sig="$new_sig"
          v4_takeover_ts="$NOW"
          v4_alive_ts=0
          v4_fallback_ts="$NOW"
        fi

        # Check AFWall process liveness for preferred-path corroboration.
        # Liveness check uses process-level visibility (pidof / ps). This is
        # reliable for the service phase because Zygote is up and the AFWall
        # process should be running if it just applied rules. It is not required
        # to be foreground; background/service/receiver process presence suffices.
        if [ -n "$AFW_PKG" ] && afwall_process_present "$AFW_PKG"; then
          # Liveness confirmed this iteration.
          if [ "$v4_alive_ts" = "0" ]; then
            v4_alive_ts="$NOW"
            debug_log "service: v4 liveness window started"
          fi

          # ── Preferred path ──────────────────────────────────────────────────
          # Condition: liveness continuously observed for >= LIVENESS_SECS AND
          # rule-graph signature has been stable (no reset above) throughout.
          if [ "$NOW" != "0" ] && [ "$v4_alive_ts" != "0" ]; then
            alive_elapsed=$((NOW - v4_alive_ts))
            if [ "$alive_elapsed" -ge "$LIVENESS_SECS" ]; then
              log "service: v4 preferred-path: liveness confirmed ${alive_elapsed}s + takeover stable; settling ${SETTLE_SECS}s"
              sleep "$SETTLE_SECS"
              # Re-verify after settle to guard against transient matches.
              if afwall_takeover_present_v4; then
                log_transition_snapshot "v4" "pre_remove_preferred"
                remove_output_block_v4
                [ -f "${STATE_DIR}/ipv4_fwd_active" ] && remove_forward_block_v4
                [ -f "${STATE_DIR}/ipv4_in_active" ]  && remove_input_block_v4
                v4_done=1; v4_path="preferred"
                log "service: v4 block removed (preferred path; liveness=${alive_elapsed}s sig=$v4_sig)"
              else
                log "service: v4 takeover absent after settle — reset (preferred)"
                v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0
              fi
            fi
          fi

        else
          # Liveness not observed this iteration.
          if [ "$v4_alive_ts" != "0" ]; then
            log "service: v4 AFWall liveness lost — resetting liveness window"
          fi
          v4_alive_ts=0

          # ── Fallback path ───────────────────────────────────────────────────
          # Used when liveness is not visible but rule-graph has been stable for
          # an extended window. Allowed only when takeover evidence is clearly
          # present and stable; never fails open on ambiguous state.
          if [ "$v4_done" = "0" ] && \
             [ "$v4_fallback_ts" != "0" ] && [ "$NOW" != "0" ]; then
            fallback_elapsed=$((NOW - v4_fallback_ts))
            if [ "$fallback_elapsed" -ge "$FALLBACK_SECS" ]; then
              # Secondary evidence increases confidence (but is not mandatory).
              if afwall_secondary_evidence_present "$AFW_PKG"; then
                log "service: v4 fallback-path: stable ${fallback_elapsed}s + secondary-evidence; settling ${SETTLE_SECS}s"
              else
                log "service: v4 fallback-path: stable ${fallback_elapsed}s (no secondary-evidence); settling ${SETTLE_SECS}s"
              fi
              sleep "$SETTLE_SECS"
              if afwall_takeover_present_v4; then
                log_transition_snapshot "v4" "pre_remove_fallback"
                remove_output_block_v4
                [ -f "${STATE_DIR}/ipv4_fwd_active" ] && remove_forward_block_v4
                [ -f "${STATE_DIR}/ipv4_in_active" ]  && remove_input_block_v4
                v4_done=1; v4_path="fallback"
                log "service: v4 block removed (fallback path; stable=${fallback_elapsed}s sig=$v4_sig)"
              else
                log "service: v4 takeover absent after fallback settle — reset"
                v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0
              fi
            fi
          fi
        fi

      else
        # AFWall takeover not present for v4; reset all windows.
        if [ "$v4_takeover_ts" != "0" ]; then
          log "service: v4 takeover was present but is now absent — reset"
          log_transition_snapshot "v4" "takeover_lost"
        fi
        v4_takeover_ts=0; v4_sig=""; v4_alive_ts=0; v4_fallback_ts=0
      fi

    fi # end v4

    # ──────────────────────────────────────────────────────────────────────────
    # IPv6 family handoff (same logic as v4; evaluated independently)
    # ──────────────────────────────────────────────────────────────────────────
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

          # ── Preferred path ──────────────────────────────────────────────────
          if [ "$NOW" != "0" ] && [ "$v6_alive_ts" != "0" ]; then
            alive_elapsed=$((NOW - v6_alive_ts))
            if [ "$alive_elapsed" -ge "$LIVENESS_SECS" ]; then
              log "service: v6 preferred-path: liveness confirmed ${alive_elapsed}s + takeover stable; settling ${SETTLE_SECS}s"
              sleep "$SETTLE_SECS"
              if afwall_takeover_present_v6; then
                log_transition_snapshot "v6" "pre_remove_preferred"
                remove_output_block_v6
                [ -f "${STATE_DIR}/ipv6_fwd_active" ] && remove_forward_block_v6
                [ -f "${STATE_DIR}/ipv6_in_active" ]  && remove_input_block_v6
                v6_done=1; v6_path="preferred"
                log "service: v6 block removed (preferred path; liveness=${alive_elapsed}s sig=$v6_sig)"
              else
                log "service: v6 takeover absent after settle — reset (preferred)"
                v6_takeover_ts=0; v6_sig=""; v6_alive_ts=0; v6_fallback_ts=0
              fi
            fi
          fi

        else
          if [ "$v6_alive_ts" != "0" ]; then
            log "service: v6 AFWall liveness lost — resetting liveness window"
          fi
          v6_alive_ts=0

          # ── Fallback path ───────────────────────────────────────────────────
          if [ "$v6_done" = "0" ] && \
             [ "$v6_fallback_ts" != "0" ] && [ "$NOW" != "0" ]; then
            fallback_elapsed=$((NOW - v6_fallback_ts))
            if [ "$fallback_elapsed" -ge "$FALLBACK_SECS" ]; then
              if afwall_secondary_evidence_present "$AFW_PKG"; then
                log "service: v6 fallback-path: stable ${fallback_elapsed}s + secondary-evidence; settling ${SETTLE_SECS}s"
              else
                log "service: v6 fallback-path: stable ${fallback_elapsed}s (no secondary-evidence); settling ${SETTLE_SECS}s"
              fi
              sleep "$SETTLE_SECS"
              if afwall_takeover_present_v6; then
                log_transition_snapshot "v6" "pre_remove_fallback"
                remove_output_block_v6
                [ -f "${STATE_DIR}/ipv6_fwd_active" ] && remove_forward_block_v6
                [ -f "${STATE_DIR}/ipv6_in_active" ]  && remove_input_block_v6
                v6_done=1; v6_path="fallback"
                log "service: v6 block removed (fallback path; stable=${fallback_elapsed}s sig=$v6_sig)"
              else
                log "service: v6 takeover absent after fallback settle — reset"
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

    fi # end v6

    # ── All families resolved? ─────────────────────────────────────────────────
    if [ "$v4_done" = "1" ] && [ "$v6_done" = "1" ]; then
      log "service: all families handed off (v4=${v4_path:-skipped} v6=${v6_path:-skipped})"
      rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true

      # ── Stage C: restore lower-layer state changed by this module ───────────
      lowlevel_restore_changed_state
      log "service: handoff complete — AFWall is now sole active protection"
      exit 0
    fi

    sleep 2
  done
) &
exit 0
