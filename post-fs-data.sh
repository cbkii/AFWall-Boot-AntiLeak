#!/system/bin/sh
# post-fs-data stage: install kernel-level traffic block and early blackout.
# Framework services (svc, am, etc.) are NOT available here; only kernel-space
# and /sys operations are performed.
MODDIR="${0%/*}"
. "$MODDIR/bin/common.sh"

load_config

log "post-fs-data: start (module=$MODULE_ID $MODULE_VERSION)"

# Remove legacy artifacts from older module versions (v1.x).
cleanup_legacy "post-fs-data"

# Evaluate integration mode and install the kernel-level block if appropriate.
if should_install_block; then
  log "post-fs-data: installing hard block"
  install_block
  log "post-fs-data: hard block installed"

  # Persist blackout state so service.sh knows radios must remain off.
  mark_blackout_active
  log "post-fs-data: blackout state persisted (radio_off_pending=1)"

  # Write a dedicated current-boot timestamp marker used by
  # afwall_secondary_evidence_present() to identify AFWall file activity
  # that occurred after this boot's block installation.
  mark_boot_marker
  log "post-fs-data: boot marker written"

  # Early lower-layer phase: quiesce any already-present interfaces.
  # Framework radio commands are intentionally deferred to service.sh.
  lowlevel_prepare_environment_early
else
  log "post-fs-data: block skipped per integration mode"
fi

log "post-fs-data: done"
