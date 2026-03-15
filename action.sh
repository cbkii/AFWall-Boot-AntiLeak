#!/system/bin/sh
# Module action hook: manual emergency recovery.
# Invoked from the Magisk app's module action button or directly by the user.
# Prints verbose status so the user can see exactly what is being done.
MODDIR="${0%/*}"
. "$MODDIR/bin/common.sh"

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║   AFWall Boot AntiLeak - Manual Recovery  ║"
echo "╚══════════════════════════════════════════╝"
echo ""

echo "[1/5] Latching manual override and stopping background service..."
# Write manual_override and stop_requested BEFORE removing the block so that
# the service loop cannot repair the block between the override latch and the
# remove_block call below.  Both markers persist until the next reboot
# (cleared by post-fs-data.sh) to prevent any re-block during this session.
write_manual_override
write_stop_requested
# Clear blackout state markers so the service loop — if it is still running and
# has not yet seen the override markers — cannot reassert radios off or repair
# the OUTPUT block after we remove it.
clear_blackout_active
rm -f "${STATE_DIR}/block_installed" "${STATE_DIR}/radio_off_pending" 2>/dev/null || true
log "action: manual override latched"
log "action: cleared blackout markers"

# Signal and kill the background service loop if it is still alive.
# This is a belt-and-suspenders fallback: the override markers are the primary
# mechanism; killing the PID ensures the loop cannot run even one more iteration.
if [ -f "${STATE_DIR}/service.pid" ]; then
  _svc_pid="$(cat "${STATE_DIR}/service.pid" 2>/dev/null)"
  if [ -n "$_svc_pid" ] && kill -0 "$_svc_pid" 2>/dev/null; then
    kill "$_svc_pid" 2>/dev/null || true
    log "action: service pid ${_svc_pid} signalled/killed"
    echo "      Background service (pid=${_svc_pid}) stopped."
  else
    log "action: service.pid present but process not running (pid=${_svc_pid:-empty})"
    echo "      Background service not running (pid=${_svc_pid:-empty})."
  fi
  rm -f "${STATE_DIR}/service.pid" 2>/dev/null || true
else
  log "action: service.pid not found (service already stopped or never started)"
  echo "      No background service PID found."
fi
echo "      Done."
echo ""

echo "[2/5] Removing kernel-level firewall block..."
remove_block
echo "      Done."
echo ""

echo "[3/5] Restoring lower-layer service/interface state..."
lowlevel_emergency_restore
echo "      Done."
echo ""

echo "[4/5] Cleaning up legacy artifacts..."
cleanup_legacy "action"
echo "      Done."
echo ""

echo "[5/5] Diagnostics"
echo "      State directory: $STATE_DIR"
if [ -d "$STATE_DIR" ]; then
  ls -la "$STATE_DIR" 2>/dev/null || echo "      (empty or unreadable)"
  if [ -d "${STATE_DIR}/ll" ]; then
    echo "      Lower-layer state (ll/):"
    ls -la "${STATE_DIR}/ll/" 2>/dev/null || echo "      (empty)"
  fi
else
  echo "      (state directory not found - no block was active)"
fi
echo ""
echo "      Last 20 log lines ($LOG_FILE):"
if [ -f "$LOG_FILE" ]; then
  tail -20 "$LOG_FILE" 2>/dev/null || echo "      (log unreadable)"
else
  echo "      (log not found)"
fi
echo ""
echo "Manual recovery complete."
log "action: manual recovery executed"

