# AFWall Boot AntiLeak

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

1. `post-fs-data.sh` installs an early module-owned netfilter block.
2. `service.sh` maintains and repairs that block during boot.
3. The module waits for the configured readiness gate:
   - Android boot-complete,
   - device unlock,
   - post-unlock grace period, default `8` seconds.
4. Only after that gate opens does the module start AFWall readiness checks.
5. AFWall readiness is proven from the iptables rule graph, not from process presence alone.
6. The module removes its own block only after AFWall is valid and stable.

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
5. Unlock the device once after boot and allow the handoff to complete.

If the installer cannot read input, it falls back to a saved installer config, then an existing persistent config, then safe defaults. Full details are in [ADVANCED.md → Installer, profiles, and reconfiguration](ADVANCED.md#installer-profiles-and-reconfiguration).

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
4. Android reports `sys.boot_completed=1`.
5. You unlock the device.
6. The module waits the post-unlock grace period, default `8` seconds.
7. The module starts AFWall rule-graph checks.
8. Once AFWall is valid and stable, the module removes its own block.
9. AFWall+ becomes the sole active firewall layer.

If AFWall does not become ready, the timeout policy applies. The default is fail-closed: keep blocking rather than silently unblocking.

## Basic configuration

Persistent user configuration lives at:

```sh
/data/adb/AFWall-Boot-AntiLeak/config.sh
```

Changes apply on the next reboot.

Most users only need these options:

| Setting | Default | Meaning |
|---|---:|---|
| `AFWALL_READY_REQUIRE_BOOT_COMPLETED` | `1` | Require Android boot-complete before AFWall checks. |
| `AFWALL_READY_REQUIRE_UNLOCK` | `1` | Require first unlock before AFWall checks. |
| `AFWALL_READY_MIN_POST_UNLOCK_SECS` | `8` | Skip AFWall checks until this many seconds after unlock. |
| `TIMEOUT_START_AFTER_READY_GATE` | `1` | Start timeout after the readiness gate opens. |
| `TIMEOUT_SECS` | `90` | Wait time after gate-open before timeout handling. |
| `TIMEOUT_POLICY` | `fail_closed` | Keep blocking if AFWall never becomes ready. |
| `AUTO_TIMEOUT_UNBLOCK` | `0` | Do not auto-unblock unless explicitly enabled. |
| `LOWLEVEL_MODE` | `off` | Lower-layer suppression mode. Default is fast reconnect. |
| `LOWLEVEL_WIFI_DATA_OFF` | `0` | Set `1` for aggressive Wi-Fi/mobile-data OFF mode. |
| `WIFI_AFWALL_GATE` | `0` | Extra Wi-Fi transport restore gate. Off in fast reconnect mode. |
| `MOBILE_AFWALL_GATE` | `0` | Extra mobile-data transport restore gate. Off in fast reconnect mode. |
| `VPN_LOCKDOWN_BOOT_ENFORCE` | `0` | May be auto-enabled during install if Android always-on VPN is detected. |
| `VPN_LOCKDOWN_RELEASE_ON_RESTORE` | `0` | Paired restore handling for module VPN lockdown integration. |
| `DEBUG` | `0` | Verbose logging. |

For every option and trade-off, see [ADVANCED.md → Configuration reference](ADVANCED.md#configuration-reference).

### Fast reconnect versus Wi-Fi/data OFF

Default fast reconnect mode leaves Wi-Fi and mobile data alone. The module still blocks traffic using its early netfilter rules until AFWall is ready.

Aggressive mode is controlled by:

```sh
LOWLEVEL_WIFI_DATA_OFF=1
```

That mode disables Wi-Fi and mobile data during the anti-leak window and restores only state the module changed itself. It may be useful on devices with unreliable firewall behaviour, but it can slow reconnect/release after boot and unlock.

### Always-on VPN detection

During install/update, the module reads Android secure settings such as:

```sh
settings get secure always_on_vpn_app
settings get secure always_on_vpn_lockdown
```

If always-on VPN is configured and no explicit module VPN config exists, installer config enables the module VPN lockdown integration. If no always-on VPN is configured, VPN lockdown integration stays off by default.

Runtime VPN state is treated as per-boot state. Stale VPN restore markers from earlier boots are cleared during boot initialisation.

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

### Remove persistent user config

To return to built-in defaults on next boot:

```sh
rm -f /data/adb/AFWall-Boot-AntiLeak/config.sh
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
5. The readiness gate has not opened yet.
6. Timeout fired and the default fail-closed policy kept the block active.

Troubleshooting details are in [ADVANCED.md → Troubleshooting](ADVANCED.md#troubleshooting).

## Useful paths

| Path | Purpose |
|---|---|
| `/data/adb/AFWall-Boot-AntiLeak/config.sh` | Persistent user config. |
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
