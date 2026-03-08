#!/system/bin/sh
# AFWall Boot AntiLeak - User Configuration
# This file is sourced during boot. Keep syntax POSIX/ash compatible.
# Place a custom copy at /data/adb/AFWall-Boot-AntiLeak/config.sh to
# override the module's built-in defaults without modifying the module itself.

# ── Integration mode ──────────────────────────────────────────────────────────
# Controls how this module coordinates with AFWall+'s own optional startup
# leak protection feature.
#
#   auto          - Inspect AFWall state and choose the safest behaviour.
#                   If AFWall startup chains are found the module block still
#                   runs as a supplement. (default)
#   prefer_module - Always install the module block regardless of AFWall state.
#   prefer_afwall - Skip the module block if AFWall startup chains are already
#                   active; fall back to module block if they are absent.
#   off           - Disable module blocking entirely. Use only in emergencies.
#
INTEGRATION_MODE=auto

# ── Timeout ───────────────────────────────────────────────────────────────────
# Maximum seconds to wait for AFWall rules before force-unblocking.
# Increase on very slow devices. Conservative default: 120 s.
TIMEOUT_SECS=120

# ── Settle delay ──────────────────────────────────────────────────────────────
# Seconds to pause after AFWall rules are first detected before removing the
# module block. Gives AFWall time to finish adding per-app rules.
SETTLE_SECS=5

# ── Debug logging ─────────────────────────────────────────────────────────────
# Set to 1 to enable verbose [DEBUG] entries in the boot log.
# Log path: /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
DEBUG=0
