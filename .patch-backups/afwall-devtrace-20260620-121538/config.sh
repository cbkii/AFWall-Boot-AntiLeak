#!/system/bin/sh
# AFWall Boot AntiLeak v4.1.0 - User Configuration
# Breaking-change note: v4.1.0 reads only this module-local file and optional
# config.local.sh in the same directory. Old /data/adb/AFWall-Boot-AntiLeak
# config files are ignored; clean uninstall, reboot, reinstall, and reconfigure
# is recommended when upgrading from older releases.

# Recommended default for most users; balanced keeps the kernel firewall as the main protection while avoiding disruptive radio toggles. Accepted: balanced, strict, recovery_friendly.
LEAK_PROTECTION_MODE=balanced

# Controls how this module coexists with AFWall's own startup-leak option; leave auto unless you intentionally want to force or disable module blocking. Accepted: auto, prefer_module, prefer_afwall, off.
INTEGRATION_MODE=auto

# Seconds between AFWall rule-graph checks; lower values react faster but call iptables more often during the short boot handoff. Default: 1.
POLL_INTERVAL_SECS=1

# Stable seconds needed for a quick release when the rooted graph also has a strong/dense corroborating signal. Default: 2; raise on very slow devices.
FAST_STABLE_SECS=2

# Stable seconds needed when the rooted graph alone proves handoff; this prevents releasing during AFWall rule churn without making unlock mandatory. Default: 6.
SLOW_STABLE_SECS=6

# Maximum seconds from service start before watchdog action; block is safest, unblock is easier to recover. Default: 180.
WATCHDOG_SERVICE_SECS=180

# Maximum seconds after Android reports boot complete before watchdog action; useful when the service started early but AFWall never appears. Default: 120.
WATCHDOG_BOOT_COMPLETED_SECS=120

# What to do when proof never arrives: block keeps unresolved protection and logs diagnostics; unblock removes module suppression so networking can recover without proven AFWall readiness. Accepted: block, unblock. Default: block.
WATCHDOG_POLICY=block

# Protects tethered clients during boot by adding a temporary FORWARD-chain blackout; keep enabled unless you never tether and need maximum compatibility. Accepted: 1 or 0. Default: 1.
BLOCK_FORWARD=1

# Adds temporary inbound INPUT blocking; leave off unless you use AFWall inbound rules and accept possible boot-time service disruption. Accepted: 1 or 0. Default: 0.
BLOCK_INPUT=0

# Optional radio/service suppression beneath the firewall: off is fastest and recommended for modern Pixel-style devices; safe is moderate; strict is strongest but may slow Wi-Fi/mobile/VPN recovery. Accepted: off, safe, strict. Default: off.
RADIO_SUPPRESSION=off

# AFWall package to watch for optional corroboration only; auto checks free/donate packages, or set a package explicitly. Accepted: auto, dev.ukanth.ufirewall, dev.ukanth.ufirewall.donate, com.ukanth.ufirewall.
AFWALL_PACKAGE=auto

# Android always-on VPN lockdown handling: off leaves it alone; preserve records/respects existing state; restore may enforce during protection then restore the pre-boot state. Accepted: off, preserve, restore. Default: off.
VPN_LOCKDOWN_MODE=off

# VPN provider discovery: use auto for Android/package detection or list packages manually when detection fails.
# Common examples: ch.protonvpn.android com.wireguard.android com.mullvad.mullvadvpn com.nordvpn.android
VPN_PROVIDER_PACKAGES=auto

# Verbose boot log details for troubleshooting; leave off unless collecting diagnostics. Accepted: 1 or 0. Default: 0.
DEBUG=0

# Advanced — normally leave unchanged: these tune rare timing edges after the safe AFWall handoff proof is already independent of unlock/radio/VPN state.
# Stable seconds before accepting a missing transport subtree as absent for radio restore; does not affect family firewall release. Default: 3.
TRANSPORT_ABSENCE_STABLE_SECS=3

# Advanced: shorter post-boot absence window for transport restore once Android is fully up. Default: 2.
TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=2

# Advanced: stable seconds before treating unreachable Wi-Fi/mobile AFWall chains as orphaned instead of blocking restore forever. Default: 3.
TRANSPORT_ORPHAN_STABLE_SECS=3

# Advanced: maximum seconds to tolerate inconclusive transport restore state before forcing a verified restore attempt. Default: 20.
TRANSPORT_INCONCLUSIVE_SECS=20

# Advanced: shorter post-boot inconclusive window for transport restore retries. Default: 8.
TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=8

# Advanced: seconds between firewall integrity repairs while a family blackout is still active. Default: 5.
BLACKOUT_REASSERT_INTERVAL=5

# Advanced: seconds between lower-layer radio/service suppression reassertions while restore is pending. Default: 10.
RADIO_REASSERT_INTERVAL=10

# Advanced: seconds between unlock-confidence diagnostic probes; unlock never gates family release. Default: 5.
UNLOCK_POLL_INTERVAL=5

# Advanced: minimum rule count in AFWall's main chain used as a dense-graph accelerator, not a mandatory gate. Default: 3.
AFWALL_RULE_DENSITY_MIN=3
