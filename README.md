# AFWall Boot AntiLeak Fork

A Magisk module that enforces a **total-connectivity-blackout** from the moment
Android's kernel initialises until AFWall+ has verifiably applied its rules for
each transport (Wi-Fi and mobile data).

---

## What does it do?

On every boot, the module installs a kernel-level iptables block in the very first stage (`post-fs-data`), before any network interface becomes active.
No traffic can leave or enter the device until AFWall+ is confirmed ready.

Once AFWall+ rules are detected and stable, the module releases the block and restores any services it suppressed. From that point on, AFWall+ is the sole active firewall.

---

## What problem does it solve?

Android boots in stages. Network interfaces come up before AFWall+ loads its rules. Without this module, there is a window of seconds (sometimes longer) where your device has internet access but no firewall rules are enforced.
Apps running in the background can leak traffic during this window.

This module closes that window.

---

## Default behaviour

- **Hard block** (iptables OUTPUT/FORWARD) installed in `post-fs-data`, this runs before any interface is active.
- **Wi-Fi and mobile data** disabled at the service level once the Android framework starts.
- **Wi-Fi stays off** until AFWall+'s Wi-Fi rule subtree is confirmed active and reachable from the main AFWall graph.
- **Mobile data stays off** until AFWall+'s mobile rule subtree is confirmed.
- **Timeout auto-unblocking is disabled by default.** If AFWall+ never responds, the device stays offline rather than exposing traffic. Use the Magisk action button to manually recover if needed.
- **Timeout countdown only begins after device unlock.** The device will not automatically unblock at boot before you have unlocked it.

---

## How AFWall+ takeover is detected (v2.6 composite model)

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

| Setting                       | Recommended value |
|-------------------------------|-------------------|
| Fix Startup Data Leak         | **DISABLE**       |
| Firewall enabled on boot      | **ENABLE**        |
| Startup Delay                 | 0 (not needed)    |
| IPv6 support                  | Enable            |

Disable AFWall's own leak-fix: this module replaces it. Having both active may cause conflicts.

---

## Installation

1. Install the module ZIP through Magisk.
2. When prompted, choose a profile (standard recommended for most users).
3. Configure AFWall+ as shown in the table above.
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

**Option 1 — Magisk action button:**
Open the Magisk app → Modules → AFWall Boot AntiLeak → Action button.
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
