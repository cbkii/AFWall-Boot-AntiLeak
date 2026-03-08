#!/system/bin/sh
# Cleanup when the module is removed via Magisk.
# Removes only module-owned firewall chains and state files.
# Does NOT blindly re-enable Wi-Fi or mobile data.
MODDIR="${0%/*}"
. "$MODDIR/bin/common.sh"

log "uninstall: start"

# Remove module-owned firewall chains from all tables.
remove_block

# Restore any lower-layer service/interface state changed by this module.
# Only restores Wi-Fi / mobile data / Bluetooth if the module disabled them.
lowlevel_emergency_restore

# Remove legacy artifacts from previous module versions.
cleanup_legacy "uninstall"

log "uninstall: removing module state and logs"
# Remove state files first so the log entry above is preserved briefly.
rm -rf "${STATE_DIR}" 2>/dev/null || true

log "uninstall: done"
# Remove the entire module data directory last (this also removes the log).
rm -rf "${MODULE_DATA}" 2>/dev/null || true
