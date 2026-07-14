#!/system/bin/sh
# AFWall Boot AntiLeak v5.0.0 - packaged configuration defaults.
# This file is loaded first. Optional config.local.sh is loaded second and
# overrides matching keys. Use reconfigure.sh instead of editing this file,
# because a module update may replace it.

# What it does: Selects the main protection style used while AFWall+ starts.
# Accepted values: balanced, strict, recovery_friendly. Default: balanced.
LEAK_PROTECTION_MODE=balanced

# What it does: Controls whether the module installs its own boot-time network block.
# Accepted values: auto, prefer_module, prefer_afwall, off. Default: auto.
INTEGRATION_MODE=auto

# What it does: Sets how often the module checks the live AFWall+ rules during boot.
# Accepted values: whole seconds from 1 upward. Examples: 1, 2, 5. Default: 2.
POLL_INTERVAL_SECS=2

# What it does: Keeps compatibility with older timing logic; v5 does not use it as a faster release path.
# Accepted values: whole seconds from 0 upward. Examples: 0, 2, 6. Default: 6.
FAST_STABLE_SECS=6

# What it does: Sets how long the final AFWall+ rules must stay unchanged before traffic is released.
# Accepted values: whole seconds from 0 upward. Examples: 3, 6, 10. Default: 6.
SLOW_STABLE_SECS=6

# What it does: Adds extra time after the AFWall+ startup delay before final rule checking begins.
# Accepted values: whole seconds from 0 upward. Examples: 0, 4, 10. Default: 4.
AFWALL_DELAY_GRACE_SECS=4

# What it does: Sets how often the module retries reading AFWall+ startup settings when they are unavailable.
# Accepted values: whole seconds from 0 upward. Examples: 1, 2, 5. Default: 2.
AFWALL_PREFS_RETRY_SECS=2

# What it does: Sets the maximum wait from module service start before the watchdog acts.
# Accepted values: whole seconds from 0 upward. Examples: 120, 300, 600. Default: 300.
WATCHDOG_SERVICE_SECS=300

# What it does: Sets the maximum wait after Android reports boot complete before the watchdog acts.
# Accepted values: whole seconds from 0 upward. Examples: 120, 240, 600. Default: 240.
WATCHDOG_BOOT_COMPLETED_SECS=240

# What it does: Chooses what happens if the module cannot prove that AFWall+ is ready.
# Accepted values: block, unblock. Default: block.
WATCHDOG_POLICY=block

# What it does: Temporarily blocks forwarded traffic from hotspot, USB tethering, or Bluetooth tethering.
# Accepted values: 1 to enable, 0 to disable. Default: 1.
BLOCK_FORWARD=1

# What it does: Temporarily blocks incoming connections during boot while keeping loopback available.
# Accepted values: 1 to enable, 0 to disable. Default: 0.
BLOCK_INPUT=0

# What it does: Optionally pauses lower-level network services in addition to the firewall block.
# Accepted values: off, safe, strict. Default: off.
RADIO_SUPPRESSION=off

# What it does: Tells the module which AFWall+ package to inspect for its process and settings.
# Accepted values: auto, dev.ukanth.ufirewall, dev.ukanth.ufirewall.donate, com.ukanth.ufirewall. Default: auto.
AFWALL_PACKAGE=auto

# What it does: Controls how Android always-on VPN lockdown is handled during boot and recovery.
# Accepted values: off, preserve, restore. Default: off.
VPN_LOCKDOWN_MODE=off

# What it does: Selects the VPN app package used when VPN lockdown restore is enabled.
# Accepted values: auto, or Android package names separated by spaces or commas. Examples: ch.protonvpn.android, com.wireguard.android. Default: auto.
VPN_PROVIDER_PACKAGES=auto

# What it does: Enables more detailed boot logging for troubleshooting.
# Accepted values: 1 to enable, 0 to disable. Default: 0.
DEBUG=0

# What it does: Sets how long a missing AFWall+ transport chain must stay missing before restore continues.
# Accepted values: whole seconds from 0 upward. Examples: 1, 3, 5. Default: 3.
TRANSPORT_ABSENCE_STABLE_SECS=3

# What it does: Uses a shorter missing-transport wait after Android has completed booting.
# Accepted values: whole seconds from 0 upward. Examples: 1, 2, 5. Default: 2.
TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=2

# What it does: Sets how long an unreachable AFWall+ transport chain must remain unchanged before it is treated as unused.
# Accepted values: whole seconds from 0 upward. Examples: 1, 3, 5. Default: 3.
TRANSPORT_ORPHAN_STABLE_SECS=3

# What it does: Sets how long an unclear transport state may continue before a verified restore attempt is made.
# Accepted values: whole seconds from 0 upward. Examples: 10, 20, 30. Default: 20.
TRANSPORT_INCONCLUSIVE_SECS=20

# What it does: Uses a shorter unclear-transport timeout after Android has completed booting.
# Accepted values: whole seconds from 0 upward. Examples: 5, 8, 15. Default: 8.
TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=8

# What it does: Sets how often the module checks and repairs its firewall block while waiting for AFWall+.
# Accepted values: whole seconds from 0 upward. Examples: 5, 10, 20. Default: 10.
BLACKOUT_REASSERT_INTERVAL=10

# What it does: Sets how often lower-level radio or service suppression is re-applied while restore is pending.
# Accepted values: whole seconds from 0 upward. Examples: 5, 15, 30. Default: 15.
RADIO_REASSERT_INTERVAL=15

# What it does: Sets how often unlock status is checked for diagnostics; unlock does not release the firewall.
# Accepted values: whole seconds from 0 upward. Examples: 5, 10, 30. Default: 10.
UNLOCK_POLL_INTERVAL=10

# What it does: Keeps a diagnostic rule-count threshold for compatibility; v5 does not use it to release traffic early.
# Accepted values: whole numbers from 0 upward. Examples: 0, 3, 5. Default: 3.
AFWALL_RULE_DENSITY_MIN=3

# Internal readiness overrides. This is not a user configuration key.
if [ -n "${MODDIR:-}" ] && [ -f "$MODDIR/bin/generation_guard.sh" ]; then
  # shellcheck source=bin/generation_guard.sh
  . "$MODDIR/bin/generation_guard.sh"
fi
