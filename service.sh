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
#     4. Final settle: signature unchanged after SETTLE_SECS delay.
#     5. Remove that family's temporary block.
#
#   Fallback path (liveness unreliable, but takeover clearly stable):
#     1. AFWall takeover present, rule-graph stable for FALLBACK_SECS.
#     2. Optional secondary evidence (AFWall data files newer than our block).
#     3. Final settle: signature unchanged after SETTLE_SECS delay.
#     4. Remove that family's temporary block.
#
# Families are handled independently — IPv6 readiness does NOT unlock IPv4
# and vice versa. Only families actually blocked by this module are considered.
#
# Timeout behaviour is governed by TIMEOUT_POLICY (see config.sh):
#   unblock    — remove remaining blocks on timeout (default; matches historic
#                documented behaviour; restores networking if AFWall is absent)
#   fail_closed — retain blocks on timeout; require manual recovery
(
  MODDIR="${0%/*}"
  . "$MODDIR/bin/common.sh"

  load_config
  TIMEOUT_SECS="${TIMEOUT_SECS:-120}"
  TIMEOUT_POLICY="${TIMEOUT_POLICY:-unblock}"
  SETTLE_SECS="${SETTLE_SECS:-5}"
  # LIVENESS_SECS: sustained AFWall process-visibility window required for the
  # preferred handoff path. ~6 s as specified in the module design requirements.
  LIVENESS_SECS="${LIVENESS_SECS:-6}"
  # FALLBACK_SECS: extended rule-stability window used when liveness is not
  # visible. Must be longer than LIVENESS_SECS to be a meaningful fallback.
  FALLBACK_SECS="${FALLBACK_SECS:-$((LIVENESS_SECS * 2))}"

  log "service: start"
  log "service: config: timeout=${TIMEOUT_SECS}s policy=${TIMEOUT_POLICY} settle=${SETTLE_SECS}s liveness=${LIVENESS_SECS}s fallback=${FALLBACK_SECS}s"
  log "service: config: fwd=${ENABLE_FORWARD_BLOCK:-1} in=${ENABLE_INPUT_BLOCK:-0} ll_mode=${LOWLEVEL_MODE:-safe}"

  # Validate TIMEOUT_POLICY; default to unblock on unknown value.
  case "$TIMEOUT_POLICY" in
    unblock|fail_closed) ;;
    *)
      log "service: unknown TIMEOUT_POLICY='$TIMEOUT_POLICY'; defaulting to unblock"
      TIMEOUT_POLICY=unblock
      ;;
  esac

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
  # Use live iptables inspection (output_block_present_v4/v6) as the primary
  # source of truth. State files serve only as a table hint, not as sole proof.
  # This ensures correct behaviour even when state files were never written,
  # were lost, or were corrupted.
  v4_blocked=0; v6_blocked=0

  if output_block_present_v4; then
    v4_blocked=1
    if [ -f "${STATE_DIR}/ipv4_out_table" ]; then
      log "service: v4 OUTPUT block detected (state-file+live; table=$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null))"
    else
      log "service: v4 OUTPUT block detected (live detection; state-file missing)"
    fi
  else
    log "service: v4 OUTPUT block not detected — no v4 handoff needed"
  fi

  if output_block_present_v6; then
    v6_blocked=1
    if [ -f "${STATE_DIR}/ipv6_out_table" ]; then
      log "service: v6 OUTPUT block detected (state-file+live; table=$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null))"
    else
      log "service: v6 OUTPUT block detected (live detection; state-file missing)"
    fi
  else
    log "service: v6 OUTPUT block not detected — no v6 handoff needed"
  fi

  # Log supplementary FORWARD/INPUT block state using live detection + state files.
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

  # ── Final-settle confirmation helpers ──────────────────────────────────────
  # _sig_is_valid: returns 0 if a signature string is non-empty and not the
  # "na:na" error sentinel that afwall_takeover_signature_* emits when iptables
  # is unavailable. Used to distinguish a real signature from an error value.
  _sig_is_valid() { [ -n "$1" ] && [ "$1" != "na:na" ]; }

  # _settle_confirm_v4 / _settle_confirm_v6
  #
  # Purpose: Perform a final stability check after the liveness or fallback
  # window has been satisfied. Ensures the AFWall rule graph has not changed
  # during the settle delay before the block is actually removed.
  #
  # Arguments:
  #   $1 path_label — short label for log context ("preferred-path"/"fallback-path")
  #   $2 pre_sig    — rule-graph signature captured just before calling (caller
  #                   must pass the current v4_sig / v6_sig value)
  #
  # Behaviour:
  #   1. Sleeps SETTLE_SECS.
  #   2. Re-verifies AFWall takeover presence; returns 1 (logs reason) if absent.
  #   3. Computes post_sig; returns 1 if invalid (logs invalid sig).
  #   4. Compares post_sig to pre_sig; returns 1 (logs drift) if they differ.
  #   5. Returns 0 only when takeover is present AND signature is stable.
  #
  # On non-zero return the CALLER is responsible for resetting the family's
  # tracking state (takeover_ts, sig, alive_ts, fallback_ts = 0).
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
    log "service: v4 ${path_label}: settle confirmed (pre_sig=$pre_sig post_sig=$post_sig)"
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
    log "service: v6 ${path_label}: settle confirmed (pre_sig=$pre_sig post_sig=$post_sig)"
    return 0
  }

  # ── Main polling loop ───────────────────────────────────────────────────────
  while :; do
    NOW="$(date +%s 2>/dev/null)" || NOW=0

    # ── Per-family timeout ─────────────────────────────────────────────────────
    # Behaviour depends on TIMEOUT_POLICY:
    #   unblock    — removes remaining module-owned blocks for unresolved families
    #                (defensive, uses live detection to handle missing state files),
    #                then restores lower-layer state. Networking is restored.
    #   fail_closed — retains unresolved iptables blocks; only restores lower-layer
    #                 state (service-level suppression). Requires manual recovery.
    if [ "$START_TS" != "0" ] && [ "$NOW" != "0" ]; then
      ELAPSED=$((NOW - START_TS))
      if [ "$ELAPSED" -ge "$TIMEOUT_SECS" ]; then
        log "service: TIMEOUT ${TIMEOUT_SECS}s — policy=${TIMEOUT_POLICY}"

        if [ "$TIMEOUT_POLICY" = "unblock" ]; then
          # ── Timeout: unblock policy ──────────────────────────────────────────
          # Remove blocks per family. Use live detection to handle state-file
          # loss gracefully. removal functions already tolerate missing state.
          if [ "$v4_done" = "0" ]; then
            log "service: TIMEOUT v4: removing block by policy (takeover_ts=$v4_takeover_ts sig=$v4_sig alive_ts=$v4_alive_ts)"
            log_transition_snapshot "v4" "timeout_unblock"
            remove_output_block_v4
            if [ -f "${STATE_DIR}/ipv4_fwd_active" ] || forward_block_present_v4; then
              remove_forward_block_v4
            fi
            if [ -f "${STATE_DIR}/ipv4_in_active" ] || input_block_present_v4; then
              remove_input_block_v4
            fi
            log "service: TIMEOUT v4: block removed"
          fi
          if [ "$v6_done" = "0" ]; then
            log "service: TIMEOUT v6: removing block by policy (takeover_ts=$v6_takeover_ts sig=$v6_sig alive_ts=$v6_alive_ts)"
            log_transition_snapshot "v6" "timeout_unblock"
            remove_output_block_v6
            if [ -f "${STATE_DIR}/ipv6_fwd_active" ] || forward_block_present_v6; then
              remove_forward_block_v6
            fi
            if [ -f "${STATE_DIR}/ipv6_in_active" ] || input_block_present_v6; then
              remove_input_block_v6
            fi
            log "service: TIMEOUT v6: block removed"
          fi
          rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
          lowlevel_restore_changed_state
          log "service: TIMEOUT: networking restored (unblock policy)"

        else
          # ── Timeout: fail_closed policy ──────────────────────────────────────
          # Retain all unresolved family blocks. Log exactly why each was denied.
          if [ "$v4_done" = "0" ]; then
            log "service: TIMEOUT v4: block RETAINED by policy — AFWall v4 takeover not confirmed (takeover_ts=$v4_takeover_ts sig=$v4_sig alive_ts=$v4_alive_ts fallback_ts=$v4_fallback_ts)"
            log_transition_snapshot "v4" "timeout_fail_closed"
          fi
          if [ "$v6_done" = "0" ]; then
            log "service: TIMEOUT v6: block RETAINED by policy — AFWall v6 takeover not confirmed (takeover_ts=$v6_takeover_ts sig=$v6_sig alive_ts=$v6_alive_ts fallback_ts=$v6_fallback_ts)"
            log_transition_snapshot "v6" "timeout_fail_closed"
          fi
          # Restore lower-layer suppression state; iptables blocks remain.
          lowlevel_restore_changed_state
          log "service: TIMEOUT: lower-layer restored; iptables blocks retained (fail_closed policy)"
        fi

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
              log "service: v4 preferred-path: liveness confirmed ${alive_elapsed}s + takeover stable; settling ${SETTLE_SECS}s (pre_sig=$v4_sig)"
              if _settle_confirm_v4 "preferred-path" "$v4_sig"; then
                log_transition_snapshot "v4" "pre_remove_preferred"
                remove_output_block_v4
                if [ -f "${STATE_DIR}/ipv4_fwd_active" ] || forward_block_present_v4; then
                  remove_forward_block_v4
                fi
                if [ -f "${STATE_DIR}/ipv4_in_active" ] || input_block_present_v4; then
                  remove_input_block_v4
                fi
                v4_done=1; v4_path="preferred"
                log "service: v4 block removed (preferred path; liveness=${alive_elapsed}s sig=$v4_sig)"
              else
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
                log "service: v4 fallback-path: stable ${fallback_elapsed}s + secondary-evidence; settling ${SETTLE_SECS}s (pre_sig=$v4_sig)"
              else
                log "service: v4 fallback-path: stable ${fallback_elapsed}s (no secondary-evidence); settling ${SETTLE_SECS}s (pre_sig=$v4_sig)"
              fi
              if _settle_confirm_v4 "fallback-path" "$v4_sig"; then
                log_transition_snapshot "v4" "pre_remove_fallback"
                remove_output_block_v4
                if [ -f "${STATE_DIR}/ipv4_fwd_active" ] || forward_block_present_v4; then
                  remove_forward_block_v4
                fi
                if [ -f "${STATE_DIR}/ipv4_in_active" ] || input_block_present_v4; then
                  remove_input_block_v4
                fi
                v4_done=1; v4_path="fallback"
                log "service: v4 block removed (fallback path; stable=${fallback_elapsed}s sig=$v4_sig)"
              else
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
              log "service: v6 preferred-path: liveness confirmed ${alive_elapsed}s + takeover stable; settling ${SETTLE_SECS}s (pre_sig=$v6_sig)"
              if _settle_confirm_v6 "preferred-path" "$v6_sig"; then
                log_transition_snapshot "v6" "pre_remove_preferred"
                remove_output_block_v6
                if [ -f "${STATE_DIR}/ipv6_fwd_active" ] || forward_block_present_v6; then
                  remove_forward_block_v6
                fi
                if [ -f "${STATE_DIR}/ipv6_in_active" ] || input_block_present_v6; then
                  remove_input_block_v6
                fi
                v6_done=1; v6_path="preferred"
                log "service: v6 block removed (preferred path; liveness=${alive_elapsed}s sig=$v6_sig)"
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

          # ── Fallback path ───────────────────────────────────────────────────
          if [ "$v6_done" = "0" ] && \
             [ "$v6_fallback_ts" != "0" ] && [ "$NOW" != "0" ]; then
            fallback_elapsed=$((NOW - v6_fallback_ts))
            if [ "$fallback_elapsed" -ge "$FALLBACK_SECS" ]; then
              if afwall_secondary_evidence_present "$AFW_PKG"; then
                log "service: v6 fallback-path: stable ${fallback_elapsed}s + secondary-evidence; settling ${SETTLE_SECS}s (pre_sig=$v6_sig)"
              else
                log "service: v6 fallback-path: stable ${fallback_elapsed}s (no secondary-evidence); settling ${SETTLE_SECS}s (pre_sig=$v6_sig)"
              fi
              if _settle_confirm_v6 "fallback-path" "$v6_sig"; then
                log_transition_snapshot "v6" "pre_remove_fallback"
                remove_output_block_v6
                if [ -f "${STATE_DIR}/ipv6_fwd_active" ] || forward_block_present_v6; then
                  remove_forward_block_v6
                fi
                if [ -f "${STATE_DIR}/ipv6_in_active" ] || input_block_present_v6; then
                  remove_input_block_v6
                fi
                v6_done=1; v6_path="fallback"
                log "service: v6 block removed (fallback path; stable=${fallback_elapsed}s sig=$v6_sig)"
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
