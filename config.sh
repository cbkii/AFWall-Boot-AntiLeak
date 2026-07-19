#!/system/bin/sh
# AFWall Boot AntiLeak v5.1.0 - packaged configuration defaults.
# This file is loaded first. Optional config.local.sh is loaded second and
# overrides matching keys. Use reconfigure.sh instead of editing this file,
# because a module update may replace it.

# What it does: Records the installer profile family in logs and support reports. The actual blocks, radio handling, and timeout action are controlled by separate keys below.
# Accepted values: balanced = Standard or Minimal profile label; strict = Strict profile label; recovery_friendly = Recovery-friendly profile label. Changing this key alone does not change the other settings. Default: balanced.
LEAK_PROTECTION_MODE=balanced

# What it does: Decides whether this module still installs its early firewall block when an AFWall-owned startup script is present.
# Accepted values: auto = install the module block and supplement any AFWall script; prefer_module = always install the module block; prefer_afwall = skip the module block only when an AFWall-owned afwallstart script is detected, otherwise install it; off = never install this module's boot block. Default: auto.
INTEGRATION_MODE=auto

# What it does: Balances handoff speed against boot-time CPU and iptables I/O; shorter intervals detect AFWall+ changes sooner but run more checks.
# Accepted values: whole seconds from 1 upward. Examples: 1, 2, 5. Default: 2.
POLL_INTERVAL_SECS=2

# What it does: Retains the old fast timing field for compatibility and post-boot calculations; the v5 generation guard does not use it to bypass the full stability proof.
# Accepted values: whole seconds from 0 upward. Examples: 0, 2, 6. Default: 6.
FAST_STABLE_SECS=6

# What it does: Requires the final ordered AFWall+ rule graph to remain unchanged for this period before temporary OUTPUT protection is removed.
# Accepted values: whole seconds from 0 upward. Examples: 3, 6, 10. Default: 6.
SLOW_STABLE_SECS=6

# What it does: Prevents release during AFWall+'s delayed second rule pass by adding scheduling margin after AFWall+'s own startup delay.
# Accepted values: whole seconds from 0 upward. Examples: 0, 4, 10. Default: 4.
AFWALL_DELAY_GRACE_SECS=4

# What it does: Limits how often encrypted AFWall+ preference files are re-read while they are unavailable, reducing repeated boot I/O.
# Accepted values: whole seconds from 0 upward. Examples: 1, 2, 5. Default: 2.
AFWALL_PREFS_RETRY_SECS=2

# What it does: Starts the first timeout decision this long after the module worker begins, even if Android has not finished booting.
# Accepted values: whole seconds from 0 upward. Examples: 120, 300, 600. Default: 300.
WATCHDOG_SERVICE_SECS=300

# What it does: Starts a second timeout decision this long after Android reports boot complete, preventing an endless offline state after the framework is ready.
# Accepted values: whole seconds from 0 upward. Examples: 120, 240, 600. Default: 240.
WATCHDOG_BOOT_COMPLETED_SECS=240

# What it does: Defines the safety outcome when a configured timeout is reached without complete AFWall+ readiness proof.
# Accepted values: block = keep unresolved traffic blocked and continue low-rate diagnostics; unblock = remove module-owned blocks and restore connectivity even though AFWall+ readiness was not proven. Default: block.
WATCHDOG_POLICY=block

# What it does: Extends the early block to traffic routed through the phone, protecting hotspot, USB-tethered, and Bluetooth-tethered clients.
# Accepted values: 1 to enable, 0 to disable. Default: 1.
BLOCK_FORWARD=1

# What it does: Rejects new inbound network connections during handoff while keeping local loopback traffic available.
# Accepted values: 1 to enable, 0 to disable. Default: 0.
BLOCK_INPUT=0

# What it does: Chooses whether the kernel firewall alone is used or whether Wi-Fi, mobile data, interfaces, and tethering are also paused.
# Accepted values: off = firewall-only with no radio or service changes; safe = currently the same non-disruptive radio behavior as off, retained as a separate profile value; strict = disable Wi-Fi and mobile data, quiesce interfaces, and stop tethering until restore. Default: off.
RADIO_SUPPRESSION=off

# What it does: Determines which app process and preference directory are used to read AFWall+ startup delay and IPv6 ownership.
# Accepted values: auto = detect Donate, then Free, then the legacy package; dev.ukanth.ufirewall = AFWall+ Free; dev.ukanth.ufirewall.donate = AFWall+ Donate; com.ukanth.ufirewall = legacy AFWall package. Default: auto.
AFWALL_PACKAGE=auto

# What it does: Chooses whether Android's always-on VPN and lockdown state is only observed or actively enforced and later restored.
# Accepted values: off = do not manage lockdown state; preserve = record the existing state and avoid writes; restore = enforce the selected provider during protection and restore the recorded pre-boot state after handoff. Default: off.
VPN_LOCKDOWN_MODE=off

# What it does: Identifies which VPN app may be targeted when restore mode needs to enforce or restore Android lockdown.
# Accepted values: auto = use the currently configured always-on VPN provider when available; explicit package names = use only those apps, separated by spaces or commas; ch.protonvpn.android = Proton VPN example; com.wireguard.android = WireGuard example. Common examples: ch.protonvpn.android com.wireguard.android. Default: auto.
VPN_PROVIDER_PACKAGES=auto

# What it does: Adds detailed state transitions and diagnostic reasons to boot.log; it does not change firewall decisions.
# Accepted values: 1 to enable, 0 to disable. Default: 0.
DEBUG=0

# What it does: Allows network service restoration after the expected AFWall+ Wi-Fi or mobile subtree has remained missing for this long, avoiding a permanent wait on devices that do not create it.
# Accepted values: whole seconds from 0 upward. Examples: 1, 3, 5. Default: 3.
TRANSPORT_ABSENCE_STABLE_SECS=3

# What it does: Shortens the missing-subtree wait after Android is fully booted so connectivity is not delayed unnecessarily.
# Accepted values: whole seconds from 0 upward. Examples: 1, 2, 5. Default: 2.
TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=2

# What it does: Allows restoration when a transport subtree exists but is not reachable from the live AFWall+ graph, avoiding deadlock on stale chains.
# Accepted values: whole seconds from 0 upward. Examples: 1, 3, 5. Default: 3.
TRANSPORT_ORPHAN_STABLE_SECS=3

# What it does: Forces a verified transport restore attempt after the network transport state cannot be classified for this long.
# Accepted values: whole seconds from 0 upward. Examples: 10, 20, 30. Default: 20.
TRANSPORT_INCONCLUSIVE_SECS=20

# What it does: Uses a shorter unclassified-state limit after Android reports boot complete.
# Accepted values: whole seconds from 0 upward. Examples: 5, 8, 15. Default: 8.
TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=8

# What it does: Limits how often module-owned firewall chains are rechecked and repaired while handoff is pending; lower values increase iptables I/O.
# Accepted values: whole seconds from 0 upward. Examples: 5, 10, 20. Default: 10.
BLACKOUT_REASSERT_INTERVAL=10

# What it does: Limits how often strict lower-level network suppression is reapplied before restore; it has no practical effect when radio suppression is off.
# Accepted values: whole seconds from 0 upward. Examples: 5, 15, 30. Default: 15.
RADIO_REASSERT_INTERVAL=15

# What it does: Controls diagnostic checks for user-unlock and credential-storage availability; unlock never proves AFWall+ readiness or releases traffic.
# Accepted values: whole seconds from 0 upward. Examples: 5, 10, 30. Default: 10.
UNLOCK_POLL_INTERVAL=10

# What it does: Preserves an old diagnostic threshold for log compatibility; v5 release decisions ignore it.
# Accepted values: whole numbers from 0 upward. Examples: 0, 3, 5. Default: 3.
AFWALL_RULE_DENSITY_MIN=3

# Internal readiness overrides. This is not a user configuration key.
if [ -n "${MODDIR:-}" ] && [ -f "$MODDIR/bin/generation_guard.sh" ]; then
  # shellcheck source=bin/generation_guard.sh
  . "$MODDIR/bin/generation_guard.sh"
fi
