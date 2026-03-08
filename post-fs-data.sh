#!/system/bin/sh
# post-fs-data stage: install kernel-level traffic block before any network
# interface becomes active. Framework services (svc, am, etc.) are NOT
# available here; only kernel-space operations are performed.
MODDIR="${0%/*}"
. "$MODDIR/bin/common.sh"

log "post-fs-data: start (module=$MODULE_ID v2.1.0)"

# Remove legacy artifacts from older module versions (v1.x).
cleanup_legacy "post-fs-data"

# Evaluate integration mode and install the kernel-level block if appropriate.
if should_install_block; then
  install_block
else
  log "post-fs-data: block skipped per integration mode"
fi

log "post-fs-data: done"