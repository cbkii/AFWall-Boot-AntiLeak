# AFWall Boot AntiLeak — v2.2.2

A Magisk module that blocks **all internet traffic at the kernel level** from
the very first moment of each Android boot, before AFWall+ has applied its own
firewall rules.  The block is removed automatically once AFWall's rules are
confirmed active.

> **Full technical documentation**: see [ADVANCED.md](ADVANCED.md)

---

## What it does

| Boot stage | Action |
|---|---|
| `post-fs-data` (before Zygote) | Installs temporary `DROP` rules: **OUTPUT**, **FORWARD** (tether clients), optional **INPUT**. IPv4 + IPv6. Loopback always exempt. |
| `service.sh` (background) | Quiesces network interfaces; disables Wi-Fi, mobile data, and tethering via service commands once framework is ready. Polls every 2 s for AFWall's `afwall` chain. On confirmation: removes firewall blocks, restores only module-changed state. Hard timeout (120 s) prevents indefinite blocking. |
| `action` (manual) | Magisk action button: removes all blocks and restores service state immediately. |
| `uninstall` | Removes module-owned chains and state; restores any services the module disabled. |

The **iptables hard block is always the authoritative protection layer**.
Lower-layer service/interface suppression is belt-and-suspenders beneath it.

---

## Requirements

| | |
|---|---|
| Android | 8+ (API 26+). Tested on Android 16 / Pixel. |
| Root | Magisk ≥ 20.4 (≥ 30.6 recommended). |
| Firewall | AFWall+ (`dev.ukanth.ufirewall`). Without it the timeout failsafe unblocks after 120 s. |

---

## Install

1. Install Magisk and AFWall+; open AFWall+ at least once.
2. In AFWall+: **disable** "Fix Startup Data Leak" (this module replaces it).
3. Install `AFWall-Boot-AntiLeak-v2.2.2.zip` via Magisk → Modules → Install.
4. During installation, the module prompts you to select a **protection profile**
   using the volume keys (VOL+ = select, VOL- = next option).
   If no key is pressed within 10 s, the **standard** profile is used.
5. Reboot.

After reboot, verify:
```sh
cat /data/adb/AFWall-Boot-AntiLeak/logs/boot.log | tail -5
# Should show: "service: handoff complete — AFWall is now sole active protection"
```

---

## Recommended AFWall+ settings

| Setting | Value |
|---|---|
| Fix Startup Data Leak | **Disabled** — this module handles boot protection |
| Startup Delay | **0** — module covers the entire pre-AFWall window |
| Active Rules / Firewall on boot | **Enabled** — required for module to detect readiness |
| IPv6 support | **Enabled** — module protects both; AFWall should too |

---

## Recovery

If networking is blocked after a full boot:

**Option A** — Magisk app → Modules → action button (⚡) on this module.

**Option B** — root shell:
```sh
# Remove firewall blocks (raw table — usual case):
iptables  -t raw    -D OUTPUT  -j MOD_PRE_AFW    2>/dev/null
iptables  -t raw    -F MOD_PRE_AFW               2>/dev/null
iptables  -t raw    -X MOD_PRE_AFW               2>/dev/null
ip6tables -t raw    -D OUTPUT  -j MOD_PRE_AFW_V6 2>/dev/null
ip6tables -t raw    -F MOD_PRE_AFW_V6            2>/dev/null
ip6tables -t raw    -X MOD_PRE_AFW_V6            2>/dev/null
iptables  -t filter -D FORWARD -j MOD_PRE_AFW_FWD     2>/dev/null
iptables  -t filter -F MOD_PRE_AFW_FWD                2>/dev/null
iptables  -t filter -X MOD_PRE_AFW_FWD                2>/dev/null
ip6tables -t filter -D FORWARD -j MOD_PRE_AFW_FWD_V6  2>/dev/null
ip6tables -t filter -F MOD_PRE_AFW_FWD_V6             2>/dev/null
ip6tables -t filter -X MOD_PRE_AFW_FWD_V6             2>/dev/null

# Re-enable Wi-Fi if module disabled it:
cmd wifi set-wifi-enabled enabled 2>/dev/null || svc wifi enable

# Re-enable mobile data if module disabled it:
cmd phone data enable 2>/dev/null || svc data enable
```

See [ADVANCED.md — Recovery](ADVANCED.md#6-recovery) for full recovery
instructions including per-service and interface recovery.

---

## Configuration

Options are selected **during installation** via volume-key prompts, or you
can change them at any time without reflashing by running the reconfiguration
tool:

```sh
# In a root terminal:
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
```

The persistent config is saved to:
```
/data/adb/AFWall-Boot-AntiLeak/config.sh
```
This file survives module upgrades and takes precedence over the built-in defaults.

See [ADVANCED.md — Installer Config Selection](ADVANCED.md#installer-config-selection)
for full details on profiles, non-interactive fallback, and upgrade behaviour.

Key options:

| Option | Default | Description |
|---|---|---|
| `INTEGRATION_MODE` | `auto` | `auto` / `prefer_module` / `prefer_afwall` / `off` |
| `ENABLE_FORWARD_BLOCK` | `1` | Block tethered-client traffic (hotspot / USB / BT tether) |
| `ENABLE_INPUT_BLOCK` | `0` | Block inbound traffic (opt-in; loopback always exempt) |
| `LOWLEVEL_MODE` | `safe` | `off` / `safe` / `strict` — lower-layer suppression |
| `LOWLEVEL_INTERFACE_QUIESCE` | `1` | Bring non-loopback interfaces DOWN during boot |
| `LOWLEVEL_USE_WIFI_SERVICE` | `1` | Disable Wi-Fi via service commands |
| `LOWLEVEL_USE_PHONE_DATA_CMD` | `1` | Disable mobile data via service commands |
| `LOWLEVEL_USE_BLUETOOTH_MANAGER` | `0` | Disable Bluetooth (opt-in; disrupts BT peripherals) |
| `LOWLEVEL_USE_TETHER_STOP` | `1` | Stop tethering sessions |
| `TIMEOUT_SECS` | `120` | Max seconds to wait for AFWall before force-unblocking |
| `SETTLE_SECS` | `5` | Seconds to settle after AFWall rules first detected |
| `DEBUG` | `0` | Set to `1` for verbose logging |

---

## Log and state files

```
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log   — boot log
/data/adb/AFWall-Boot-AntiLeak/state/           — firewall block state
/data/adb/AFWall-Boot-AntiLeak/state/ll/        — lower-layer suppression state
```

---

## More information

See **[ADVANCED.md](ADVANCED.md)** for:

- Installer config selection: profiles, volume keys, non-interactive fallback, upgrade behaviour, reconfiguration
- Layered anti-leak design and boot timeline diagram
- Full connectivity coverage matrix (Wi-Fi, data, VPN, LAN, tether, Bluetooth PAN, USB tether, IPv4/IPv6)
- Why airplane mode is not relied upon
- AFWall interaction and startup option guide
- Lower-layer suppression subsystem design
- Troubleshooting and verification commands
- Full recovery instructions
- Migration notes from v2.1.x
- Ownership, cleanup, and idempotency rules
- Maintainer / developer reference
