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

echo "[1/3] Removing kernel-level traffic block..."
remove_block
echo "      Done."
echo ""

echo "[2/3] Cleaning up legacy artifacts..."
cleanup_legacy "action"
echo "      Done."
echo ""

echo "[3/3] Diagnostics"
echo "      State directory: $STATE_DIR"
if [ -d "$STATE_DIR" ]; then
  ls -la "$STATE_DIR" 2>/dev/null || echo "      (empty or unreadable)"
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
