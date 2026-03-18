# AFWall Boot AntiLeak

A Magisk module that prevents apps from accessing the internet before your firewall is ready.

## Table of Contents

- [What is This?](#what-is-this)
- [The Problem It Solves](#the-problem-it-solves)
- [How It Works](#how-it-works)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Troubleshooting](#troubleshooting)
- [Disclaimer](#disclaimer)

## What is This?

This module enforces a **total network blackout** from the moment your Android device starts until the [AFWall+ firewall](https://github.com/ukanth/afwall) has fully loaded and applied its rules. This ensures no application can "leak" data during the boot process.

## The Problem It Solves

When your Android device boots up, its network connections (like Wi-Fi and mobile data) can become active before AFWall+ has a chance to load and enforce your firewall rules. This creates a small window of time where any app can access the internet without restriction.

This module closes that security gap.

## How It Works

The module operates in a few simple stages during boot:

1.  **Block:** As soon as the Android kernel starts, the module immediately installs a low-level `iptables` block. This stops all internet traffic from entering or leaving your device.
2.  **Suppress:** As the system continues to boot, the module keeps Wi-Fi and mobile data services turned off.
3.  **Monitor:** The module continuously watches for AFWall+ to load and apply its firewall rules.
4.  **Release:** Once it verifies that your AFWall+ rules are active and stable, the module removes its own block and allows Wi-Fi and mobile data services to turn back on. From this point, AFWall+ is in full control of your device's network access.

For a more detailed technical explanation of the boot process and detection logic, see the [Advanced Documentation](ADVANCED.md#boot-process-deep-dive).

## Requirements

-   Android 8.0+
-   Magisk v24+
-   AFWall+ (use [Safe Settings(#safest-afwall-settings))
-   Recommended: Busybox for Android NDK (v1.36+)

## Installation

1.  Download the latest release from the [releases page](https://github.com/cbkii/AFWall-Boot-AntiLeak/releases).
2.  Install the module via the Magisk app.
3.  Reboot your device.

**Recommended AFWall+ Settings:**
For best results, please configure AFWall+ as follows:
-   **Fix Startup Data Leak:** `Disabled` (this module replaces that functionality).
-   **Startup Delay:** `0` (this module makes the delay unnecessary).

## Configuration

The module works out-of-the-box with sensible defaults and requires no initial configuration.

If you need to adjust settings, you can create a custom configuration file at `/data/adb/AFWall-Boot-AntiLeak/config.sh`. This allows you to override the defaults without modifying the module itself.

For a full list of available options and their descriptions, please see the [Configuration Reference](ADVANCED.md#configuration-reference) in the advanced documentation.

## Troubleshooting

**My device has no internet connection after booting.**

This is the intended behavior if AFWall+ fails to start or apply its rules. The module prioritizes security over connectivity.

-   **Manual Override:** You can manually disable the network block by running the following command in a root shell (e.g., via ADB):
    ```sh
    /data/adb/modules/afwall-boot-antileak/action.sh override
    ```
-   **Check AFWall+:** Ensure AFWall+ is not disabled and that its rules are active.

For more detailed troubleshooting steps, see the [Troubleshooting Guide](ADVANCED.md#troubleshooting).

## Disclaimer

This is a powerful tool that modifies low-level network behavior. While it is designed to be safe, you use it at your own risk.
Each poll iteration (1-second interval) the module:

1. Captures a **coherent filter-table snapshot** using `iptables -t filter -S` (one call per family per poll — all parsers consume this `-N`/`-A` rule-spec format; `iptables-save` restore-file format is not used).
2. Computes a **full AFWall graph fingerprint** (`cksum` of all afwall-prefixed chains and rules, including descendants).
3. Tracks **fingerprint stability** using timestamps (no blocking sleep).
4. Confirms readiness via:
   - **Fast path**: fingerprint stable for 2s + corroboration (process visible, file evidence, or `sys.boot_completed` + dense chain).
   - **Conservative path**: fingerprint stable for 6s (no corroboration needed).
5. Transport chains (`afwall-wifi`, `afwall-3g`) must be **reachable from the main AFWall graph** to count — isolated chains are ignored.
6. Transport absence is accepted after **3 seconds** of stable absence (not 30s); **2 seconds** post-boot-complete.

**Family handoff vs transport restore (split):**
- The module-owned OUTPUT block for each family is removed as soon as the main `afwall` graph is confirmed stable for that family (`v4_done` / `v6_done`).
- Wi-Fi and mobile radio restoration (`WIFI_AFWALL_GATE`, `MOBILE_AFWALL_GATE`) are separate decisions that happen in parallel — they do NOT block family block removal.  If transport subtrees appear later, they are accepted then.

This means release happens **much sooner** when AFWall+ is genuinely ready, while remaining fail-closed when it is not.

---

## Safest AFWall+ settings

Ensure you **have some "Active Rules" enabled** (as connectivity blackout will not release automatically *if the firewall is not on*), and:

| Setting                       | Recommended value |
|-------------------------------|-------------------|
| Fix Startup Data Leak         | **DISABLE**       |
| Firewall enabled on boot      | **ENABLE**        |
| Startup Delay                 | 0 (not needed)    |
| IPv6 support                  | Enable            |

> [!WARNING]
> Disable AFWall's own leak-fix: this module replaces it. Having both active may cause conflicts.

---

## Installation

1. Install the module ZIP through Magisk.
2. When prompted, choose a profile (**standard** recommended for most users, applied by default on new installs e.g. if keypress timeout).
3. Configure AFWall+ as shown in the 'safe settings' [table above](#safest-afwall-settings).
4. Reboot.

**Upgrade path:** existing configurations are preserved automatically. The module installer asks whether you want to reconfigure on upgrade.

---

## First boot

After the reboot:

1. The module installs the hard block immediately (before the lock screen).
2. Once the framework starts, Wi-Fi and mobile data are disabled.
3. After you unlock the device, AFWall+ applies its rules.
4. The module detects AFWall+ takeover via composite readiness model.
5. Wi-Fi and mobile data are re-enabled under AFWall+ protection.
6. From this point, AFWall+ is in full control.

If your device shows no connectivity after a few minutes, see Recovery below.

---

## Persistent config location

```
/data/adb/AFWall-Boot-AntiLeak/config.sh
```

Edit this file to change module settings. Changes take effect on the next reboot. Alternatively, run `sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh` for an interactive reconfiguration.

---

## Important config knobs

| Key                                        | Default       | Description                                          |
|--------------------------------------------|---------------|------------------------------------------------------|
| `TIMEOUT_SECS`                             | `120`         | Max seconds to wait for AFWall+ per IP family        |
| `TIMEOUT_POLICY`                           | `fail_closed` | `fail_closed` = stay blocked; `unblock` = allow      |
| `AUTO_TIMEOUT_UNBLOCK`                     | `0`           | Set to `1` to enable timeout-based unblocking        |
| `TIMEOUT_UNLOCK_GATED`                     | `1`           | Timeout only starts after device unlock              |
| `WIFI_AFWALL_GATE`                         | `1`           | Gate Wi-Fi radio restore on AFWall Wi-Fi chain ready |
| `MOBILE_AFWALL_GATE`                       | `1`           | Gate mobile radio restore on AFWall mobile chain     |
| `LOWLEVEL_MODE`                            | `safe`        | `off` = firewall-only; `safe`/`strict` = full        |
| `POLL_INTERVAL_SECS`                       | `1`           | Detection loop interval (1s for fastest response)    |
| `FAST_STABLE_SECS`                         | `2`           | Fast-path stability window (with corroboration)      |
| `SLOW_STABLE_SECS`                         | `6`           | Conservative-path stability window (no corroboration)|
| `TRANSPORT_ABSENCE_STABLE_SECS`            | `3`           | Accept no-transport-chain after 3s of stable absence |
| `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT`  | `2`           | Post-boot absence-stable threshold (shorter)         |

---

## Recovery

If your device is stuck with no connectivity:

**Option 1 — Magisk "Action ▶️" button:**
Open the Magisk app → Modules → AFWall Boot AntiLeak → 'Action' button.
This removes all module-owned blocks, restores radio state, and **latches a manual override** that prevents the background service loop from re-blocking for the remainder of the current boot session.

**Option 2 — ADB:**
```sh
adb shell sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

The manual override persists until the next reboot (cleared by `post-fs-data.sh` on next boot). Once triggered, the service loop cannot reinstall the block or reassert radios-off during this boot.

**Option 3 — Force restart AFWall+:**
Ensure AFWall+ has "Active Rules" enabled and the firewall on. Then reboot.

---

## Log location

```
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Enable `DEBUG=1` in config.sh for verbose output.

Key log entries to look for:
- `service: snapshot backend v4=iptables-S` — confirms correct snapshot backend
- `v4 graph first seen fp=...` — AFWall graph first detected
- `v4 fast-path confirmed stable=Xs corroboration=...` — released early with corroboration
- `v4 conservative-path confirmed stable=Xs` — released after stable window
- `v4 handoff confirmed — removing family block immediately` — block removed
- `block removed; wifi restore deferred` — block gone, transport restore still pending
- `family handoff complete but transport restore still pending` — service continues for radios
- `wifi subtree drift old=... new=... reset` — transport still being populated
- `wifi transport accepted via absence-stable fallback` — no afwall-wifi chain (normal)
- `wifi transport accepted via unreachable-stable fallback` — orphan chain dismissed; Wi-Fi restored
- `service: manual_override detected — stopping loop` — action.sh override active

---

## Advanced details

See [ADVANCED.md](ADVANCED.md) for:
- Full boot-stage design
- Composite readiness model details
- Transport subtree reachability requirements
- Exact config key reference
- Timeout/unlock semantics
- Troubleshooting guide
- Migration from v2.4
