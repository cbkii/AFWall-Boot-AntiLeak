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

echo "[1/4] Latching manual override and stopping background service..."
write_manual_override
write_stop_requested
recover_stop_service_loop
echo "      Done."
echo ""

echo "[2/4] Running shared connectivity recovery pipeline..."
recover_connectivity "action" "0"
echo "      Done."
echo ""

echo "[3/4] Restoring lower-layer service/interface state..."
echo "      Done (handled by shared recovery pipeline)."
echo ""

echo "[4/4] Diagnostics"
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
