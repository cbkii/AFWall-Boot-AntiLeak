# AFWall Boot AntiLeak

AFWall Boot AntiLeak is a Magisk module that blocks network traffic during boot, then gives control to [AFWall+](https://github.com/ukanth/afwall) after AFWall rules are really present and stable.

This `README.md` is for first-time and basic users.
For detailed behaviour, full configuration, logs, installer internals, and developer notes, use [ADVANCED.md](ADVANCED.md).

## Contents

- [What this module does](#what-this-module-does)
- [Before you install](#before-you-install)
  - [Requirements](#requirements)
  - [Important warnings](#important-warnings)
  - [Recommended AFWall settings](#recommended-afwall-settings)
- [Install](#install)
- [What happens on first boot](#what-happens-on-first-boot)
- [Basic configuration](#basic-configuration)
- [Recovery and common problems](#recovery-and-common-problems)
- [Useful paths](#useful-paths)
- [More help and advanced topics](#more-help-and-advanced-topics)

## What this module does

Android networking can come up before AFWall has loaded its rules.
That can create a small leak window during boot.

This module closes that window.
It does this in two stages:

1. it installs its own early blackout,
2. it removes that blackout only after AFWall appears ready and stable.

For most users, that is all you need to know.
If you want the exact boot sequence, see [ADVANCED.md → Boot flow](ADVANCED.md#boot-flow) and [ADVANCED.md → AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff).

## Before you install

### Requirements

Make sure all of these are true before you install:

- Android 8.0 or newer
- Magisk installed
- [AFWall+](https://github.com/ukanth/afwall) already installed
- AFWall rules already created and applied at least once
- you have a recovery method, such as ADB, root shell, or the Magisk app action button

This repo mainly targets modern Magisk and current Android releases.
Installer profiles and non-interactive install details are in [ADVANCED.md → Installer, profiles, and reconfiguration](ADVANCED.md#installer-profiles-and-reconfiguration).

### Important warnings

> [!WARNING]
> Read these before your first install:
>
> - **Do not install this before AFWall is working.** This module expects AFWall to already be set up.
> - **Turn off AFWall's `Fix Startup Data Leak` option.** This module replaces that job. Using both can cause conflicts. See [ADVANCED.md → Integration mode](ADVANCED.md#integration-mode).
> - **The default behaviour is fail-closed.** If AFWall does not become ready, the device can stay offline [until you recover it](#quick-recovery).
> - **Config changes need a reboot.** Edit the persistent config, then reboot. Do not expect live changes.
> - **The module only tries to restore state that it changed itself.** Recovery details are in [ADVANCED.md → Logs, state, and manual recovery](ADVANCED.md#logs-state-and-manual-recovery).

### Recommended AFWall settings

Use these AFWall settings before your first reboot with the module installed:

| AFWall setting | Recommended value |
|---|---|
| Firewall enabled | **Enabled** |
| Rules applied | **Yes** |
| Firewall enabled on boot | **Enabled** |
| Fix Startup Data Leak | **Disabled** |
| Startup Delay | `0` |
| IPv6 support | Enable it if you use IPv6 |

Why these settings matter is explained in [ADVANCED.md → AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff) and [ADVANCED.md → Troubleshooting](ADVANCED.md#troubleshooting).

## Install

1. Download the latest ZIP from the [Releases page](https://github.com/cbkii/AFWall-Boot-AntiLeak/releases).
2. Flash the ZIP in Magisk.
3. If the installer asks for a profile, choose one:
   - `standard` — best choice for most users
   - `minimal` — only the firewall blackout logic
   - `strict` — stronger blocking and stricter defaults
   - `custom` — choose the options yourself
4. Reboot.

If the installer cannot read input, it falls back to a saved installer config, then an existing persistent config, then safe defaults. Full details are in [ADVANCED.md → Installer, profiles, and reconfiguration](ADVANCED.md#installer-profiles-and-reconfiguration).

## What happens on first boot

A normal boot now looks like this:

1. `post-fs-data.sh` installs an early netfilter hard block,
2. `service.sh` maintains and repairs that block,
3. Android reaches `sys.boot_completed=1`,
4. the user unlocks the device,
5. the module waits the configured post-unlock grace period, default `8` seconds,
6. only then does the module begin AFWall rule-graph readiness checks,
7. the module removes its own block once the AFWall graph is valid and stable.

The default profile leaves Wi-Fi/mobile-data alone for faster reconnect; traffic is still blocked by the early netfilter hard block until AFWall is proven ready. Aggressive Wi-Fi/mobile-data OFF mode is available, but it can slow reconnect/release after boot and unlock.

If the device stays offline, go to [Recovery and common problems](#recovery-and-common-problems).
For the detailed boot model, see [ADVANCED.md → Boot flow](ADVANCED.md#boot-flow).

## Basic configuration

The persistent user config file is:

```sh
/data/adb/AFWall-Boot-AntiLeak/config.sh
```

To run the setup flow again after install:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
```

Changes apply on the next reboot.

Most users only need to know these options:

| Setting | Default | What it means |
|---|---:|---|
| `AFWALL_READY_MIN_POST_UNLOCK_SECS` | `8` | skip AFWall readiness checks until this many seconds after unlock |
| `TIMEOUT_START_AFTER_READY_GATE` | `1` | timeout starts after the readiness gate opens |
| `TIMEOUT_SECS` | `90` | how long the module can wait after the readiness gate before timeout handling |
| `TIMEOUT_POLICY` | `fail_closed` | keep blocking by default if AFWall never becomes ready |
| `AUTO_TIMEOUT_UNBLOCK` | `0` | timeout does not auto-unblock unless you enable it |
| `TIMEOUT_UNLOCK_GATED` | `1` | timeout remains tied to unlock/gate semantics |
| `LOWLEVEL_MODE` | `off` | lower-layer suppression mode; default is fast reconnect |
| `LOWLEVEL_WIFI_DATA_OFF` | `0` | set `1` for aggressive Wi-Fi/mobile-data OFF mode; slower reconnect possible |
| `WIFI_AFWALL_GATE` | `0` | Wi-Fi transport-gate restore checks; off in fast reconnect mode |
| `MOBILE_AFWALL_GATE` | `0` | mobile-data transport-gate restore checks; off in fast reconnect mode |
| `VPN_LOCKDOWN_BOOT_ENFORCE` | `0` | enabled automatically during install/update only when Android always-on VPN is detected and no explicit config exists |
| `VPN_LOCKDOWN_RELEASE_ON_RESTORE` | `0` | paired restore handling for the module VPN lockdown integration |
| `DEBUG` | `0` | verbose logging |

If you are not sure, leave the defaults alone.
For every option and the trade-offs, see [ADVANCED.md → Configuration reference](ADVANCED.md#configuration-reference).

### Fast reconnect versus Wi-Fi/data OFF

The standard profile is **fast reconnect**: Wi-Fi and mobile-data framework state are left alone, while the module-owned netfilter block prevents traffic until AFWall is ready. This matched Pixel 9a diagnostics where Wi-Fi was already connected before AFWall was ready, but traffic still could not leak through the module block.

Aggressive mode is controlled by `LOWLEVEL_WIFI_DATA_OFF=1`. It disables Wi-Fi/mobile-data during the boot anti-leak window and restores only state the module changed itself. This can be useful on devices with unreliable iptables behaviour, but it can also slow reconnect after unlock because Android must re-associate and revalidate networks.

### VPN always-on install/update detection

During install/update, the module checks Android's `always_on_vpn_app` and `always_on_vpn_lockdown` secure settings. If an always-on VPN app is configured and the module VPN options were not already explicitly configured, installer config enables the module VPN lockdown integration. Existing explicit user config is preserved.


## Recovery and common problems

### Quick recovery

If the device is stuck offline, use the module "Action ▶️" in Magisk to unblock/restore connectivity, or run:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

That recovery action is the supported first step.
It stops the service loop, removes module-owned blackout rules, and restores lower-layer state that the module recorded for this boot.
More detail is in [ADVANCED.md → Manual recovery](ADVANCED.md#manual-recovery).

### Check these first

Before changing config, check the common causes:

1. AFWall firewall is not enabled
2. AFWall rules were never applied
3. AFWall `Fix Startup Data Leak` is still enabled
4. AFWall rules are still changing during boot
5. Wi-Fi or mobile restore is waiting on transport-specific checks

### Useful checks

```sh
tail -50 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
iptables -t filter -S | grep afwall
ip6tables -t filter -S | grep afwall
```

For specific cases, go straight to:

- [ADVANCED.md → Device stuck offline after boot](ADVANCED.md#device-stuck-offline-after-boot)
- [ADVANCED.md → Wi-Fi not coming back after AFWall loads](ADVANCED.md#wifi-not-coming-back-after-afwall-loads)
- [ADVANCED.md → Mobile data not coming back](ADVANCED.md#mobile-data-not-coming-back)
- [ADVANCED.md → Release is slower than expected](ADVANCED.md#release-is-slower-than-expected)
- [ADVANCED.md → Timeout fires but device stays offline](ADVANCED.md#timeout-fires-but-device-stays-offline)

## Useful paths

| Path | Purpose |
|---|---|
| `/data/adb/AFWall-Boot-AntiLeak/config.sh` | persistent user config |
| `/data/adb/AFWall-Boot-AntiLeak/logs/boot.log` | current boot log |
| `/data/adb/AFWall-Boot-AntiLeak/state/` | current-boot state files |
| `/data/adb/modules/AFWall-Boot-AntiLeak/action.sh` | manual recovery |
| `/data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh` | run setup again |
| [`config.sh`](config.sh) | built-in defaults shipped with the module |

For log meanings and state-file details, see [ADVANCED.md → Logs, state, and manual recovery](ADVANCED.md#logs-state-and-manual-recovery).

## More help and advanced topics

Use [ADVANCED.md](ADVANCED.md) when you want the full technical reference.
Good starting points are:

- [Boot flow](ADVANCED.md#boot-flow)
- [AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff)
- [Timeout and unlock semantics](ADVANCED.md#timeout-and-unlock-semantics)
- [Configuration reference](ADVANCED.md#configuration-reference)
- [Logs, state, and manual recovery](ADVANCED.md#logs-state-and-manual-recovery)
- [Troubleshooting](ADVANCED.md#troubleshooting)
- [Installer, profiles, and reconfiguration](ADVANCED.md#installer-profiles-and-reconfiguration)

If you are developing or auditing the module, start with [ADVANCED.md → Boot flow](ADVANCED.md#boot-flow), [ADVANCED.md → AFWall readiness and handoff](ADVANCED.md#afwall-readiness-and-handoff), and the shipped scripts in this repo.
