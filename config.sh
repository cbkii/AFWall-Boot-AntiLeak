#!/system/bin/sh
# AFWall Boot AntiLeak v4.4.4 - User Configuration
# Breaking-change note: v4.4.4 reads only this module-local file and optional
# config.local.sh in the same directory. Old /data/adb/AFWall-Boot-AntiLeak
# config files are ignored; clean uninstall, reboot, reinstall, and reconfigure
# is recommended when upgrading from older releases.

# Recommended default for most users; balanced keeps the kernel firewall as the main protection while avoiding disruptive radio toggles. Accepted: balanced, strict, recovery_friendly.
LEAK_PROTECTION_MODE=balanced

# Controls whether module blocking is enabled. auto, prefer_module, and prefer_afwall all keep the module blackout authoritative; off is the only mode that skips it. Accepted: auto, prefer_module, prefer_afwall, off.
INTEGRATION_MODE=auto

# Seconds between AFWall rule-graph checks; lower values react faster but call iptables more often during the short boot handoff. Default: 2.
POLL_INTERVAL_SECS=2

# Compatibility fast-path threshold. The generation guard disables process/file/density acceleration, so this is kept equal to the conservative threshold. Default: 6.
FAST_STABLE_SECS=6

# Stable seconds required after AFWall's final eligible generation is visible. Fingerprint drift resets this window. Default: 6.
SLOW_STABLE_SECS=6

# Additional seconds after AFWall's configured delayed-start deadline before the final-generation observation window may open. This absorbs Handler scheduling and root-shell startup jitter. Default: 4.
AFWALL_DELAY_GRACE_SECS=4

# Seconds between attempts to discover and parse AFWall's startup preferences while credential-encrypted storage is unavailable. Default: 2.
AFWALL_PREFS_RETRY_SECS=2

# Maximum seconds from service start before watchdog action; block is safest, unblock is easier to recover. Default: 300.
WATCHDOG_SERVICE_SECS=300

# Maximum seconds after Android reports boot complete before watchdog action; useful when the service started early but AFWall never appears. Default: 240.
WATCHDOG_BOOT_COMPLETED_SECS=240

# What to do when proof never arrives: block keeps unresolved protection and logs diagnostics; unblock is recovery-only and may expose traffic without proven AFWall readiness. Accepted: block, unblock. Default: block.
# June 2026 devtraces repeatedly reached the old boot watchdog immediately before AFWall rules appeared, so do not change this default to unblock to mask slow AFWall startup.
WATCHDOG_POLICY=block

# Protects tethered clients during boot by adding a temporary FORWARD-chain blackout; keep enabled unless you never tether and need maximum compatibility. Accepted: 1 or 0. Default: 1.
BLOCK_FORWARD=1

# Adds temporary inbound INPUT blocking; leave off unless you use AFWall inbound rules and accept possible boot-time service disruption. Accepted: 1 or 0. Default: 0.
BLOCK_INPUT=0

# Optional radio/service suppression beneath the firewall: off is fastest and recommended for modern Pixel-style devices; safe is moderate; strict is strongest but may slow Wi-Fi/mobile/VPN recovery. Accepted: off, safe, strict. Default: off.
RADIO_SUPPRESSION=off

# AFWall package used to locate the boot process and startup preferences; auto checks free/donate packages, or set a package explicitly. Accepted: auto, dev.ukanth.ufirewall, dev.ukanth.ufirewall.donate, com.ukanth.ufirewall.
AFWALL_PACKAGE=auto

# Android always-on VPN lockdown handling: off leaves it alone; preserve records/respects existing state; restore may enforce during protection then restore the pre-boot state. Accepted: off, preserve, restore. Default: off.
VPN_LOCKDOWN_MODE=off

# VPN provider for explicit restore mode. auto means use the already-selected always-on provider; list one package to override.
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

# Advanced: seconds between firewall integrity repairs while a family blackout is still active. Default: 10.
BLACKOUT_REASSERT_INTERVAL=10

# Advanced: seconds between lower-layer radio/service suppression reassertions while restore is pending. Default: 15.
RADIO_REASSERT_INTERVAL=15

# Advanced: seconds between unlock-confidence diagnostic probes; unlock never gates family release. Default: 10.
UNLOCK_POLL_INTERVAL=10

# Advanced: retained for compatibility with older service diagnostics. The generation guard does not use density to shorten readiness. Default: 3.
AFWALL_RULE_DENSITY_MIN=3

# Internal readiness overrides. This is sourced after common.sh has loaded, so it
# can replace only the proof primitives while leaving the service state machine,
# blackout ownership, watchdog, transport restoration and Action recovery intact.
if [ -n "${MODDIR:-}" ] && [ -f "$MODDIR/bin/generation_guard.sh" ]; then
  # shellcheck source=bin/generation_guard.sh
  . "$MODDIR/bin/generation_guard.sh"
fi
