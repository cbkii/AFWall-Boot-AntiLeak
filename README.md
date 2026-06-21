# AFWall Boot AntiLeak

> **v4.1.0 breaking config cleanup:** clean uninstall/reboot/reinstall is recommended when upgrading from older versions. Runtime config is module-local only (`config.sh` plus optional `config.local.sh`); old `/data/adb/AFWall-Boot-AntiLeak/config.sh` and `installer.cfg` files are never sourced and are removed after a successful configuration write or first-boot cleanup.

AFWall Boot AntiLeak is a Magisk module that closes the boot-time network leak window before [AFWall+](https://github.com/ukanth/afwall) has finished applying its rules.

It installs an early fail-closed netfilter block, keeps that block repaired during boot, then removes it only after AFWall's actual iptables rule graph is present and stable.

This README is the quick-start guide. For the full boot model, configuration reference, log/state details, installer internals, and development notes, see [ADVANCED.md](ADVANCED.md).

## Contents

- [What problem this solves](#what-problem-this-solves)
- [How it works](#how-it-works)
- [Requirements](#requirements)
- [Before you install](#before-you-install)
- [Install](#install)
- [Profiles](#profiles)
- [First boot timeline](#first-boot-timeline)
- [Basic configuration](#basic-configuration)
- [Recovery](#recovery)
- [Useful checks](#useful-checks)
- [Useful paths](#useful-paths)
- [Advanced documentation](#advanced-documentation)

## What problem this solves

Android networking can become usable before AFWall+ has loaded and applied its firewall rules. On some devices, Wi-Fi or mobile data may reconnect during boot while AFWall is still starting.

This module prevents normal device-originated traffic from escaping during that gap.

It is designed for users who already rely on AFWall+ and want the boot handoff to be reproducible, inspectable, and fail-closed by default.

## How it works

The module uses a staged handoff model:

1. `post-fs-data.sh` installs early module-owned netfilter blackout rules.
2. `service.sh` immediately starts coherent IPv4/IPv6 filter snapshots.
3. AFWall readiness is proven from the rooted live `OUTPUT -> afwall` rule graph, not from unlock state, process presence, file timestamps, Wi-Fi/mobile transport chains, or VPN routes.
4. As soon as a family graph is present, non-trivial, rooted, and stable, that family's module OUTPUT/FORWARD/INPUT blackout is removed.
5. Optional Wi-Fi/mobile/VPN/lower-layer restoration is staged separately and never delays family release.
6. Absolute watchdogs run from service start and from `sys.boot_completed=1`, regardless of unlock/readiness state.

The default profile favours fast reconnect: Wi-Fi and mobile-data framework state are left alone, but traffic remains blocked by the early netfilter hard block until AFWall is proven ready.

Aggressive Wi-Fi/mobile-data OFF mode is available for devices that need it, but it can slow reconnect after boot because Android must re-associate and revalidate networks.

## Requirements

Make sure all of these are true before installing:

- Android 8.0 or newer.
- Magisk installed.
- AFWall+ already installed.
- AFWall firewall enabled.
- AFWall rules created and applied at least once.
- A recovery path available, such as ADB, root shell, or Magisk's module Action button.

This repo mainly targets modern Magisk and current Android releases.

## Before you install

> [!WARNING]
> Read this before first install.
>
> - Do **not** install this before AFWall+ is working.
> - Turn off AFWall's `Fix Startup Data Leak` option. This module replaces that job; using both can cause conflicts.
> - The default behaviour is fail-closed. If AFWall never becomes ready, the device may stay offline until you recover it.
> - Config changes apply on reboot. Do not expect live changes to affect an already-running boot handoff.
> - The module only restores state that it changed itself.

Recommended AFWall+ settings:

| AFWall+ setting | Recommended value |
|---|---|
| Firewall enabled | **Enabled** |
| Rules applied | **Yes** |
| Firewall enabled on boot | **Enabled** |
| Fix Startup Data Leak | **Disabled** |
| Startup Delay | `0` unless you intentionally need delay |
| IPv6 support | Enable if you use IPv6 |

Why these settings matter is explained in [ADVANCED.md → AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff).

## Install

1. Download the latest ZIP from the [Releases page](https://github.com/cbkii/AFWall-Boot-AntiLeak/releases).
2. Flash the ZIP in Magisk.
3. Choose an installer profile when prompted.
4. Reboot.
5. Allow the handoff to complete. Unlock is useful diagnostic evidence, but family release no longer waits for unlock.

If the installer cannot read input, it falls back to module-local/default installer settings. Legacy external runtime config is ignored by boot scripts. Full details are in [ADVANCED.md → Installer, profiles, and reconfiguration](ADVANCED.md#installer-profiles-and-reconfiguration).

To run the setup flow again after install:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
```

## Profiles

| Profile | Behaviour | Use when |
|---|---|---|
| `standard` | Fast reconnect. Early netfilter block only; Wi-Fi/mobile-data are left alone by default. | Recommended for most users. |
| `minimal` | Reduced optional coverage with the same firewall-first handoff model. | You want the smallest practical intervention. |
| `strict` | Enables stronger optional suppression, including Wi-Fi/mobile-data OFF mode. | You accept slower reconnect in exchange for more aggressive suppression. |
| `custom` | Lets you choose individual options. | You know exactly which trade-offs you want. |

During install/update, the module also checks Android always-on VPN settings. If an always-on VPN app is configured and the module VPN options were not explicitly configured already, the installer enables the module VPN lockdown integration. Existing explicit user config is preserved.

## First boot timeline

A normal boot with the default profile looks like this:

1. `post-fs-data.sh` installs IPv4/IPv6 OUTPUT blackout rules as early as possible.
2. `service.sh` starts and verifies the module-owned block.
3. Wi-Fi or mobile data may reconnect, but traffic remains blocked by the module rules.
4. `service.sh` snapshots the AFWall filter graph every poll, including before unlock.
5. Android reports `sys.boot_completed=1` and optional unlock heuristics are logged as diagnostics.
6. Once the rooted `OUTPUT -> afwall` graph is valid and stable, the module removes its own block.
7. AFWall+ becomes the sole active firewall layer.

If AFWall does not become ready, the absolute watchdog applies. The default `WATCHDOG_POLICY=block` keeps unresolved protection active and logs diagnostics rather than silently unblocking.

## Basic configuration

Runtime configuration has a single source of truth inside the installed module directory:

```sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh   # optional local override
```

Old external paths such as `/data/adb/AFWall-Boot-AntiLeak/config.sh` and `/data/adb/AFWall-Boot-AntiLeak/installer.cfg` are never sourced. A successful install/reconfiguration and first-boot cleanup remove them; recreate needed settings in module-local `config.local.sh`.

Beginner-facing options:

| Option | Default | Meaning |
|---|---:|---|
| `LEAK_PROTECTION_MODE` | `balanced` | `strict`, `balanced`, or `recovery_friendly`. |
| `POLL_INTERVAL_SECS` | `2` | Snapshot loop interval. |
| `FAST_STABLE_SECS` | `2` | Stable window with corroboration/dense graph. |
| `SLOW_STABLE_SECS` | `6` | Stable rooted-graph window without corroboration. |
| `WATCHDOG_SERVICE_SECS` | `300` | Absolute watchdog from service start. |
| `WATCHDOG_BOOT_COMPLETED_SECS` | `240` | Absolute watchdog from first `sys.boot_completed=1`. |
| `WATCHDOG_POLICY` | `block` | `block` keeps unresolved protection and logs diagnostics; `unblock` removes module suppression for recovery. |
| `BLOCK_FORWARD` | `1` | Temporarily block tethered-client FORWARD traffic. |
| `BLOCK_INPUT` | `0` | Optional inbound INPUT blackout. |
| `RADIO_SUPPRESSION` | `off` | `off`, `safe`, or `strict` lower-layer suppression. |
| `AFWALL_PACKAGE` | `auto` | Auto, free, donate, or legacy package. |
| `VPN_LOCKDOWN_MODE` | `off` | `off` leaves VPN alone; `preserve` respects existing lockdown; `restore` enforces/restores module-managed lockdown. |

Examples:

```sh
# Balanced recommended
LEAK_PROTECTION_MODE=balanced
RADIO_SUPPRESSION=off
WATCHDOG_POLICY=block

# Strict maximum protection
LEAK_PROTECTION_MODE=strict
RADIO_SUPPRESSION=strict
VPN_LOCKDOWN_MODE=restore

# Recovery-friendly
LEAK_PROTECTION_MODE=recovery_friendly
WATCHDOG_POLICY=unblock

# Firewall-only/no radio suppression
LEAK_PROTECTION_MODE=balanced
RADIO_SUPPRESSION=off
```

Unlock detection uses multiple low-cost signals (`cmd user`, `dumpsys user`, CE readability, keyguard/trust hints). Unknown unlock state is logged as `unknown` and does not block AFWall family handoff.

### Always-on VPN detection

If VPN lockdown handling is enabled and no provider is configured, the module attempts auto-detection. If detection fails, it logs a loud warning and does not pretend VPN handling is complete. Restore logs include pre-active provider, pre-lockdown state, current lockdown state, and the provider/action used.

## Recovery

### Quick recovery

If the device is stuck offline, use the module **Action** button in Magisk, or run:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

That stops the service loop, removes module-owned blackout rules, and restores lower-layer state that the module recorded for the current boot.

### Disable the module from root shell

If needed:

```sh
touch /data/adb/modules/AFWall-Boot-AntiLeak/disable
reboot
```

### Remove local user overrides

To return to built-in defaults on next boot:

```sh
rm -f /data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
reboot
```

## Useful checks

Check the module log:

```sh
tail -100 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Check whether AFWall rules are present:

```sh
iptables -t filter -S | grep afwall
ip6tables -t filter -S | grep afwall
```

Check module-owned rules:

```sh
iptables -t raw -S | grep MOD_PRE_AFW
iptables -t filter -S | grep MOD_PRE_AFW
ip6tables -t raw -S | grep MOD_PRE_AFW
ip6tables -t filter -S | grep MOD_PRE_AFW
```

Common causes of delayed or failed release:

1. AFWall+ firewall is not enabled.
2. AFWall+ rules were never applied.
3. AFWall+ `Fix Startup Data Leak` is still enabled.
4. AFWall+ rules are still changing during boot.
5. The rooted AFWall graph is absent/trivial or still churning.
6. A watchdog fired and the default diagnostic fail-closed policy kept unresolved blocks active while logging why.

Troubleshooting details are in [ADVANCED.md → Troubleshooting](ADVANCED.md#troubleshooting).

## Useful paths

| Path | Purpose |
|---|---|
| `/data/adb/AFWall-Boot-AntiLeak/config.sh` | Legacy external config; never sourced and removed by install/boot cleanup. |
| `/data/adb/AFWall-Boot-AntiLeak/logs/boot.log` | Current boot log. |
| `/data/adb/AFWall-Boot-AntiLeak/state/` | Current boot state files. |
| `/data/adb/modules/AFWall-Boot-AntiLeak/action.sh` | Manual recovery action. |
| `/data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh` | Re-run setup. |
| [`config.sh`](config.sh) | Built-in defaults shipped with the module. |
| [`ADVANCED.md`](ADVANCED.md) | Full technical reference. |

## Advanced documentation

Use [ADVANCED.md](ADVANCED.md) for deeper detail:

- [Boot flow](ADVANCED.md#boot-flow)
- [AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff)
- [Timeout and unlock semantics](ADVANCED.md#timeout-and-unlock-semantics)
- [Configuration reference](ADVANCED.md#configuration-reference)
- [Logs, state, and manual recovery](ADVANCED.md#logs-state-and-manual-recovery)
- [Troubleshooting](ADVANCED.md#troubleshooting)
- [Installer, profiles, and reconfiguration](ADVANCED.md#installer-profiles-and-reconfiguration)

If you are developing or auditing the module, start with [ADVANCED.md → Boot flow](ADVANCED.md#boot-flow), [ADVANCED.md → AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff), and the scripts under `bin/`, `post-fs-data.sh`, and `service.sh`.

## Android 16 Proton VPN handoff notes

On Android always-on VPN with lockdown, Proton/WireGuard protects its gateway socket from VPN routing so packets do not loop back into the TUN. That socket still traverses netfilter. During boot this module may therefore deny early WireGuard sends with `EPERM` until the rooted live AFWall `OUTPUT -> afwall` graph is present and stable. A brief pre-handoff denial is expected; a long delay after graph stability is not expected and should be diagnosed.

Recommended Proton/AFWall setup:

- Keep Android always-on VPN and lockdown configured in Android settings if you use them.
- Keep Proton selected as the active always-on provider; the default/preserve module behaviour is read-only and does not replace it.
- Keep AFWall enabled on boot, apply rules at least once before rebooting, and keep AFWall's own `Fix Startup Data Leak` disabled while this module is installed.
- Use the standard profile unless you explicitly need strict radio suppression. Strict radio suppression can slow reconnection because it toggles Wi-Fi/mobile state beneath the firewall; strict firewall proof alone no longer forces that mode.

Expected handoff with defaults is one poll plus the configured stability window: typically about 2–6 seconds after the final rooted AFWall graph appears. IPv4 and IPv6 release independently and do not wait for boot completion, unlock, transport restoration, VPN provider detection, or the other family.

For a bounded read-only real-device report, run:

```sh
su -c sh /data/adb/modules/AFWall-Boot-AntiLeak/diagnostics.sh > /sdcard/afwall-boot-antileak-diagnostics.txt
```

Upgrading from v4.1.x to v4.2.0 is a normal Magisk module update. Reconfigure only if you want to change profile/options. Clean uninstall/reboot/reinstall is only needed when migrating from much older releases that used external `/data/adb/AFWall-Boot-AntiLeak/config.sh` runtime configuration and you want to discard stale state completely.
