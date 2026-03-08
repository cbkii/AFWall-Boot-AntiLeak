#!/system/bin/sh
# AFWall Boot AntiLeak - User Configuration
# This file is sourced during boot. Keep syntax POSIX/ash compatible.
# Place a custom copy at /data/adb/AFWall-Boot-AntiLeak/config.sh to
# override the module's built-in defaults without modifying the module itself.

# ── Integration mode ──────────────────────────────────────────────────────────
# Controls how this module coordinates with AFWall+'s optional "Fix Startup
# Data Leak" (fixLeak) feature.
#
# Background: AFWall+'s fixLeak feature installs a startup script called
# 'afwallstart' into init.d or su.d paths (/etc/init.d/, /su/su.d/, etc.).
# On modern Android (8+) this mechanism is rarely effective because init.d/su.d
# is not supported without a special kernel or SuperSU. On Android 16 Pixel
# devices it is effectively non-functional. The module checks for the presence
# of that script to determine whether to defer.
#
#   auto          - Inspect AFWall state. Install the module block as primary
#                   (or supplemental) protection regardless of AFWall state.
#                   Recommended default. (default)
#   prefer_module - Always install the module block, regardless of any detected
#                   AFWall startup-script. Belt-and-suspenders maximum safety.
#   prefer_afwall - Skip the module block only when an AFWall-owned afwallstart
#                   script is detected in init.d/su.d paths. On modern Android
#                   this is effectively the same as auto because init.d/su.d is
#                   unsupported. Use only if you have confirmed init.d support.
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
