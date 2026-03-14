# AFWall Boot AntiLeak Fork — v2.4

A Magisk module that enforces a **total-connectivity-blackout** from the moment
Android's kernel initialises until AFWall+ has verifiably applied its rules for
each transport (Wi-Fi and mobile data).

---

## What does it do?

On every boot, the module installs a kernel-level iptables block in the very
first stage (`post-fs-data`), before any network interface becomes active.
No traffic can leave or enter the device until AFWall+ is confirmed ready.

Once AFWall+ rules are detected and stable, the module releases the block and
restores any services it suppressed. From that point on, AFWall+ is the sole
active firewall.

---

## What problem does it solve?

Android boots in stages. Network interfaces come up before AFWall+ loads its
rules. Without this module, there is a window of seconds (sometimes longer)
where your device has internet access but no firewall rules are enforced.
Apps running in the background can leak traffic during this window.

This module closes that window.

---

## Default behaviour

- **Hard block** (iptables OUTPUT/FORWARD) installed in `post-fs-data` —
  this runs before any interface is active.
- **Wi-Fi and mobile data** disabled at the service level once the Android
  framework starts.
- **Wi-Fi stays off** until AFWall+'s Wi-Fi rule chain is confirmed active.
- **Mobile data stays off** until AFWall+'s mobile rule chain is confirmed.
- **Timeout auto-unblocking is disabled by default.** If AFWall+ never
  responds, the device stays offline rather than exposing traffic. Use the
  Magisk action button to manually recover if needed.
- **Timeout countdown only begins after device unlock.** The device will not
  automatically unblock at boot before you have unlocked it.

---

## Safest AFWall+ settings

| Setting                       | Recommended value |
|-------------------------------|-------------------|
| Fix Startup Data Leak         | **DISABLE**       |
| Firewall enabled on boot      | **ENABLE**        |
| Startup Delay                 | 0 (not needed)    |
| IPv6 support                  | Enable            |

Disable AFWall's own leak-fix: this module replaces it. Having both active
may cause conflicts.

---

## Installation

1. Install the module ZIP through Magisk.
2. When prompted, choose a profile (standard recommended for most users).
3. Configure AFWall+ as shown in the table above.
4. Reboot.

**Upgrade path:** existing configurations are preserved automatically. The
module installer asks whether you want to reconfigure on upgrade.

---

## First boot

After the reboot:

1. The module installs the hard block immediately (before the lock screen).
2. Once the framework starts, Wi-Fi and mobile data are disabled.
3. After you unlock the device, AFWall+ applies its rules.
4. The module detects AFWall+ takeover (verifies chain presence and stability).
5. Wi-Fi and mobile data are re-enabled under AFWall+ protection.
6. From this point, AFWall+ is in full control.

If your device shows no connectivity after a few minutes, see Recovery below.

---

## Persistent config location

```
/data/adb/AFWall-Boot-AntiLeak/config.sh
```

Edit this file to change module settings. Changes take effect on the next
reboot. Alternatively, run `sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh`
for an interactive reconfiguration.

---

## Important config knobs

| Key                    | Default       | Description                                      |
|------------------------|---------------|--------------------------------------------------|
| `TIMEOUT_SECS`         | `120`         | Max seconds to wait for AFWall+ per IP family    |
| `TIMEOUT_POLICY`       | `fail_closed` | `fail_closed` = stay blocked; `unblock` = allow  |
| `AUTO_TIMEOUT_UNBLOCK` | `0`           | Set to `1` to enable timeout-based unblocking    |
| `TIMEOUT_UNLOCK_GATED` | `1`           | Timeout only starts after device unlock          |
| `WIFI_AFWALL_GATE`     | `1`           | Gate Wi-Fi restore on AFWall Wi-Fi chain ready   |
| `MOBILE_AFWALL_GATE`   | `1`           | Gate mobile restore on AFWall mobile chain ready |
| `LOWLEVEL_MODE`        | `safe`        | `off` = firewall-only; `safe`/`strict` = full    |

---

## Recovery

If your device is stuck with no connectivity:

**Option 1 — Magisk action button:**
Open the Magisk app → Modules → AFWall Boot AntiLeak → Action button.
This removes all module-owned blocks and restores radio state.

**Option 2 — ADB:**
```sh
adb shell sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

**Option 3 — Force restart AFWall+:**
Ensure AFWall+ has "Active Rules" enabled and the firewall on. Then reboot.

---

## Log location

```
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Enable `DEBUG=1` in config.sh for verbose output.

---

## Advanced details

See [ADVANCED.md](ADVANCED.md) for:
- Full boot-stage design
- Transport-aware handoff details
- Exact config key reference
- Timeout/unlock semantics
- Troubleshooting guide
- Migration from v2.2.2
