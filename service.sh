#!/system/bin/sh
# late_start service stage: poll for AFWall+ rule readiness and remove the
# module's temporary kernel-level block only when it is safe to do so.
# Runs the polling loop in a background subshell so Magisk's service phase
# is not held up.
(
  MODDIR="${0%/*}"
  . "$MODDIR/bin/common.sh"

  load_config
  TIMEOUT_SECS="${TIMEOUT_SECS:-120}"
  SETTLE_SECS="${SETTLE_SECS:-5}"

  log "service: start (timeout=${TIMEOUT_SECS}s settle=${SETTLE_SECS}s fwd=${ENABLE_FORWARD_BLOCK:-1} in=${ENABLE_INPUT_BLOCK:-0})"

  # Resolve AFWall package for diagnostic logging only.
  AFW_PKG="$(resolve_afwall_pkg 2>/dev/null)" || AFW_PKG=""
  if [ -n "$AFW_PKG" ]; then
    log "service: AFWall pkg=$AFW_PKG"
  else
    log "service: AFWall package not found (will rely on iptables rule detection)"
  fi

  # Remove any remaining legacy artifacts before entering the polling loop.
  cleanup_legacy "service"

  START_TS="$(date +%s 2>/dev/null)" || START_TS=0

  while :; do
    # ── Primary release condition ───────────────────────────────────────────
    # Only unblock when AFWall's own chains are installed and jumped to from
    # OUTPUT. This is the documented signal that AFWall rules are fully active.
    # Once OUTPUT is confirmed, AFWall has also applied any FORWARD/INPUT rules
    # based on the user's tether/LAN/VPN/INPUT chain settings.
    if afwall_rules_present; then
      log "service: AFWall rules detected; settling ${SETTLE_SECS}s"
      sleep "$SETTLE_SECS"
      # Re-verify after the settle delay to guard against transient matches.
      if afwall_rules_present; then
        # Log supplementary FORWARD/INPUT hook state for diagnostics.
        if afwall_forward_hook_present; then
          log "service: AFWall FORWARD hook present (tether rules active)"
        else
          log "service: AFWall FORWARD hook absent (tether control not active or not configured)"
        fi
        if afwall_input_hook_present; then
          log "service: AFWall INPUT hook present"
        fi
        remove_block
        log "service: block removed (AFWall rules confirmed after settle)"
        exit 0
      fi
      log "service: AFWall rules absent after settle; continuing to poll"
    fi

    # ── Failsafe: timeout ───────────────────────────────────────────────────
    # If AFWall never becomes ready (e.g. not installed) we must not block
    # the user's internet connection indefinitely.
    if [ "$START_TS" != "0" ]; then
      NOW="$(date +%s 2>/dev/null)" || NOW=0
      if [ "$NOW" != "0" ] && [ $((NOW - START_TS)) -ge "$TIMEOUT_SECS" ]; then
        log "service: timeout ${TIMEOUT_SECS}s reached; removing block (failsafe)"
        remove_block
        exit 0
      fi
    fi

    # ── Secondary hint: sys.boot_completed ─────────────────────────────────
    # Used only as a diagnostic hint. If boot is complete but AFWall rules
    # are absent, continue polling until the timeout expires so that a slow
    # AFWall startup still gets a chance to apply its rules.
    if [ "$(getprop sys.boot_completed 2>/dev/null)" = "1" ]; then
      debug_log "service: sys.boot_completed=1 but no AFWall rules yet"
    fi

    sleep 2
  done
) &
exit 0