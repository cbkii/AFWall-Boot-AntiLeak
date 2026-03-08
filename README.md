# AFWall Boot AntiLeak — v2.2.0 (MMT-Extended aligned)

A Magisk module that implements **multi-layer early-boot anti-leak protection**: interface-level quiesce, iptables hard block (OUTPUT/FORWARD/INPUT), and service-level suppression (Wi-Fi/data/tether shutdown), all released automatically once AFWall+'s rules are confirmed active. The firewall hard block is always the authoritative protection layer.

---

## 1. Purpose and Scope

### What problem does this module solve?

On a rooted Android device, AFWall+ is started by the Android framework as a
normal application. This means there is a window during early boot — from the
moment network interfaces come up until AFWall's FirewallService finishes
applying its rules — when **all network traffic is unblocked**. Apps that start
early (system services, sync clients, push services) can make outbound
connections during this window.

### What the module does

| Boot stage | What happens |
|---|---|
| `post-fs-data` (very early, before Zygote) | Module installs temporary `DROP` chains in three directions: **OUTPUT** (`MOD_PRE_AFW`/`MOD_PRE_AFW_V6`, raw table preferred), **FORWARD** (`MOD_PRE_AFW_FWD`/`MOD_PRE_AFW_FWD_V6`, filter table, covers tethered clients), and optionally **INPUT** (`MOD_PRE_AFW_IN`/`MOD_PRE_AFW_IN_V6`, filter table, disabled by default). Loopback is always exempted. |
| `service` (late start, background) | **Layer 1 (interface quiesce)**: bring non-loopback interfaces DOWN via `ip link`. **Layer 3 (service shutdown)**: disable Wi-Fi, mobile data, and optionally Bluetooth/tethering via Android service commands once framework is ready. **Layer 4 (AFWall readiness)**: poll iptables every 2 s for AFWall's `afwall` chain + `OUTPUT -j afwall` jump. On confirmation: settle delay → **(B)** remove iptables blocks → **(C)** restore only module-changed service/interface state → **(D)** log. A hard timeout (default 120 s) prevents indefinite blocking if AFWall is absent. |
| `action` (manual) | Emergency button in Magisk app: removes all iptables blocks **and** restores any service/interface state changed by this module. |
| `uninstall` | Removes all module-owned iptables chains, restores module-changed service state, deletes all state files and logs. |

### What the module does NOT guarantee

- It does **not** guarantee protection against root-level processes that
  manipulate iptables directly.
- It does **not** protect against leaks via root-level iptables manipulation or kernel bypass techniques that skip netfilter entirely; those are AFWall+'s concern once it is active.
- It does **not** guarantee protection even with lower-layer suppression active: if Android framework services refuse service commands, the iptables hard block remains as the fallback.
- It does **not** block INPUT (inbound) connections by default; enable `ENABLE_INPUT_BLOCK=1` in `config.sh` if you rely on AFWall INPUT rules during boot.
- It is **not** a replacement for AFWall+; it is a pre-AFWall safety net.

### Module protection vs AFWall+ protection

| Aspect | This module | AFWall+ |
|---|---|---|
| When active | From post-fs-data until AFWall is ready | After FirewallService starts |
| Blocking mechanism | Temporary iptables DROP chain | Full per-app iptables ruleset |
| IPv6 | Yes (if ip6tables available) | Configurable |
| Inbound blocking | Optional (set ENABLE_INPUT_BLOCK=1) | Yes (INPUT configurable) |
| Tether/FORWARD blocking | Yes (enabled by default) | Yes (FORWARD configurable) |
| Per-app granularity | No | Yes |
| Lower-layer interface quiesce | Yes (LOWLEVEL_MODE=safe default) | No |
| Lower-layer Wi-Fi/data/tether shutdown | Yes (best-effort, service commands) | No |
| Persistence after boot | Block is removed on release; lower-layer state restored | Rules persist until disabled |

### Connectivity Coverage Matrix (v2.2.0)

| Traffic class | IPv4 | IPv6 | Firewall layer | Lower layer | Notes |
|---|---|---|---|---|---|
| Device-originated (apps, services) | ✓ | ✓ | OUTPUT (L2) | Interface quiesce + Wi-Fi/data disable (L1/L3) | Always enabled |
| Wi-Fi client traffic | ✓ | ✓ | OUTPUT (L2) | Interface quiesce + `cmd wifi` disable (L1/L3) | |
| Mobile data / roaming | ✓ | ✓ | OUTPUT (L2) | Interface quiesce + `cmd phone data disable` (L1/L3) | |
| VPN (on-device) | ✓ | ✓ | OUTPUT (L2) | Interface quiesce (L1) | VPN tunnels are also brought down if enumerated |
| Tethered clients (Wi-Fi hotspot) | ✓ | ✓ | FORWARD (L2) | Interface quiesce + tether stop (L1/L3) | `ENABLE_FORWARD_BLOCK=1` (default) |
| USB tether clients | ✓ | ✓ | FORWARD (L2) | Interface quiesce (`usb0`, `rndis0`) + tether stop (L1/L3) | |
| Bluetooth tether / BT PAN | ✓ | ✓ | FORWARD (L2) | Interface quiesce (`bt-pan`) + tether stop (L1/L3) | BT radio disable: opt-in (`LOWLEVEL_USE_BLUETOOTH_MANAGER=1`) |
| LAN (device-originated) | ✓ | ✓ | OUTPUT (L2) | Interface quiesce (L1) | AFWall LAN rules apply after handoff |
| Inbound connections | opt-in | opt-in | INPUT (L2, opt-in) | Interface down (L1) | Enable with `ENABLE_INPUT_BLOCK=1` |

**L1** = interface quiesce (lowlevel.sh). **L2** = iptables hard block (authoritative). **L3** = service commands (best-effort). The module blocks all traffic in each direction unconditionally during boot. Per-app/per-interface granularity is AFWall+'s responsibility once its rules are active.

### Layered Anti-Leak Model (v2.2.0)

The module implements four defence-in-depth layers. **Layer 2 (iptables) is always the authoritative hard stop.**

```
BOOT TIMELINE
─────────────
post-fs-data  │ Layer 2 (firewall): iptables hard block installed (OUTPUT/FORWARD/INPUT)
              │                     ← packets cannot flow regardless of interface state
              │
service.sh    │ Layer 1 (quiesce):  Interface quiesce (ip link set <iface> down)
(background)  │ Layer 3 (services): Service commands (cmd wifi / cmd phone / cmd connectivity)
              │                     ← belt-and-suspenders beneath L2
              │
service.sh    │ Layer 4 (handoff):  AFWall readiness detection (polling)
(poll loop)   │    → confirm afwall chain + OUTPUT jump + settle delay
              │    → (B) remove_block: our iptables blocks removed
              │    → (C) restore: interfaces + services restored
              │    → (D) AFWall is now sole active protection
```

**Why iptables is the primary hard stop** (not service commands or interface quiesce):
- iptables rules are installed at `post-fs-data`, before Zygote and the network stack
- Service commands require the Android framework to be running; there is an inherent delay
- `ip link` brings interfaces down at the service.sh stage, not post-fs-data
- Root-level processes or hardware-backed drivers can bypass interface state but not iptables
- iptables DROP is a kernel-level hard stop; no userspace circumvention is possible

**Why airplane mode is NOT used:**
- Airplane mode is a framework/policy mechanism, not a kernel-level kill switch
- Wi-Fi can be re-enabled independently while airplane mode is ON
- Bluetooth behaviour in airplane mode depends on persisted user preferences
- iptables DROP is strictly stronger than airplane mode for network traffic

**Why init/rc overlay was NOT implemented:**
- Network interfaces do not come up until ConnectivityService starts (post-Zygote)
- iptables blocks are already installed at post-fs-data — the earliest safe point
- There is nothing to quiesce at init/early-init triggers because interfaces don't exist yet
- Adding fragile init.rc services increases boot-breakage risk without security benefit

---

## 2. Supported Environment

| Requirement | Details |
|---|---|
| **Android version** | Primary target: Android 16. Works on Android 8+ (API 26+). |
| **Device** | Tested on Google Pixel (tegu / Pixel 9a). Other Pixel devices supported. |
| **Root** | Magisk >= 20.4 required at install time (enforced by `update-binary`). Magisk >= 30.6 recommended for Android 16 runtime compatibility. KernelSU v0.6.6+ and APatch (KSU fork) are supported by the installer framework but **untested** with this module's iptables logic. |
| **Firewall app** | AFWall+ (`dev.ukanth.ufirewall` or donate variant). Without it the timeout failsafe unblocks after `TIMEOUT_SECS`. |
| **IPv4** | Required. Module will log a critical warning if IPv4 block cannot be installed. |
| **IPv6** | Attempted. If `ip6tables` is absent or raw/filter table fails, IPv6 is unprotected (logged as warning). |
| **Shell** | Magisk BusyBox ash standalone mode. No bash required. |
| **iptables** | Module prefers the **raw table** (pre-conntrack). Falls back to the filter table if raw is unavailable. |

### Known limitations

- **Encrypted data partition**: `post-fs-data` runs before `/data` is fully
  decrypted on first boot after a factory reset. Log/state files cannot be
  written in this case. The firewall block itself (iptables commands) still works.
- **Architecture**: Tested on arm64 (Pixel). Other architectures supported in
  theory; binaries are sourced from the system PATH, not bundled.
- **iptables backend**: Works with both `iptables-legacy` and `iptables-nft`.
  If the nft backend lacks raw-table support, the filter-table fallback is used.
- **Radio toggles**: `svc wifi/data disable` commands are NOT the primary
  protection mechanism. They silently fail in early boot because framework
  services are unavailable at the post-fs-data stage.

---

## 3. Installation

### Prerequisites

1. Install **Magisk** >= 30.6 and confirm it is active.
2. Install **AFWall+** from F-Droid or Play Store.
3. Open AFWall+ at least once to let it initialize.
4. In AFWall+, configure your firewall rules and apply them at least once.

### Install the module

1. Open the Magisk app -> Modules -> Install from storage.
2. Select `AFWall-Boot-AntiLeak-v2.2.0.zip`.
3. The installer prints the installation log. Look for:
   ```
   AFWall Boot AntiLeak  v2.2.0
   ```
4. **Before rebooting**: if you have other antileak scripts in
   `/data/adb/service.d/`, remove them (see Migration Notes).
5. Reboot.

### Verify the module is active

After the first reboot, check the log in a root shell:

```sh
cat /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

A successful boot looks like:

```
[2026-03-08 04:01:00] post-fs-data: start (module=AFWall-Boot-AntiLeak v2.2.0)
[2026-03-08 04:01:00] cleanup_legacy: phase=post-fs-data
[2026-03-08 04:01:00] integration: configured_mode=auto
[2026-03-08 04:01:00] integration: auto; no AFWall startup chains; module block is sole protection
[2026-03-08 04:01:00] install_block: start (fwd=1 in=0)
[2026-03-08 04:01:00] install_output_block_v4: installed in raw table
[2026-03-08 04:01:00] install_output_block_v6: installed in raw table
[2026-03-08 04:01:00] install_forward_block_v4: installed in filter table
[2026-03-08 04:01:00] install_forward_block_v6: installed in filter table
[2026-03-08 04:01:00] install_block: INPUT block not enabled (set ENABLE_INPUT_BLOCK=1 to enable)
[2026-03-08 04:01:00] install_block: done (out_v4=1 out_v6=1)
[2026-03-08 04:01:00] post-fs-data: done
[2026-03-08 04:01:15] service: start
[2026-03-08 04:01:15] service: config: timeout=120s settle=5s
[2026-03-08 04:01:15] service: config: fwd=1 in=0 ll_mode=safe
[2026-03-08 04:01:15] lowlevel_prepare_environment: start (mode=safe)
[2026-03-08 04:01:15] lowlevel_quiesce_interfaces: start
[2026-03-08 04:01:15] lowlevel_quiesce_interfaces: done (2 interfaces quiesced)
[2026-03-08 04:01:17] lowlevel: Wi-Fi disabled via cmd wifi
[2026-03-08 04:01:17] lowlevel: mobile data disabled via cmd phone
[2026-03-08 04:01:17] lowlevel: tethering stopped via cmd connectivity
[2026-03-08 04:01:17] lowlevel_prepare_environment: done
[2026-03-08 04:01:15] service: AFWall pkg=dev.ukanth.ufirewall
[2026-03-08 04:01:30] service: AFWall rules detected; settling 5s
[2026-03-08 04:01:35] service: AFWall FORWARD hook present (tether rules active)
[2026-03-08 04:01:35] service: firewall block removed (Stage B complete)
[2026-03-08 04:01:35] lowlevel_restore_changed_state: start
[2026-03-08 04:01:35] lowlevel_restore_interfaces: start
[2026-03-08 04:01:35] lowlevel_restore_interfaces: done (2 interfaces restored)
[2026-03-08 04:01:35] lowlevel: Wi-Fi re-enabled via cmd wifi
[2026-03-08 04:01:35] lowlevel: mobile data re-enabled via cmd phone
[2026-03-08 04:01:35] lowlevel_restore_changed_state: done
[2026-03-08 04:01:35] service: lower-layer state restored (Stage C complete)
[2026-03-08 04:01:35] service: handoff complete — AFWall is now sole active protection
```

### Verify the block was installed and released

```sh
# While block is installed (before AFWall starts):
iptables  -t raw    -S | grep MOD_PRE_AFW          # OUTPUT v4 (raw)
ip6tables -t raw    -S | grep MOD_PRE_AFW_V6        # OUTPUT v6 (raw)
iptables  -t filter -S | grep MOD_PRE_AFW_FWD       # FORWARD v4
ip6tables -t filter -S | grep MOD_PRE_AFW_FWD_V6    # FORWARD v6
# Expected: chain definitions (-N) and jump rules (-A)

# After block is released:
iptables  -t raw    -S | grep MOD_PRE_AFW            # should be empty
iptables  -t filter -S | grep MOD_PRE_AFW            # should be empty

# Confirm AFWall chains are present after release:
iptables -S | grep '^-N afwall'
iptables -S OUTPUT | grep afwall

# Check whether AFWall has FORWARD/INPUT hooks (depends on AFWall settings):
iptables -S FORWARD | grep afwall
iptables -S INPUT   | grep afwall
```

---

## 4. AFWall+ Configuration Guidance

### AFWall+ "Fix Startup Data Leak" (fixLeak) option

This option is in AFWall+ under **Preferences -> Experimental -> Fix startup
data leak**.

**How it actually works** (verified in AFWall upstream source, Api.java /
G.java):

- AFWall's fixLeak feature installs a shell script called `afwallstart` into
  `/etc/init.d/` or `/su/su.d/` (SuperSU paths).
- On modern Android (8+), these init.d/su.d paths are **not supported** without
  a special ROM kernel or SuperSU.
- On **Android 16 Pixel devices**, this feature is **effectively non-functional**.
- AFWall does **not** install iptables chains in the raw table as startup
  protection — all its chains (`afwall`, `afwall-wifi`, `afwall-3g`, etc.) live
  in the filter table and are installed only when FirewallService applies rules.

### Recommended configuration

| Integration mode | AFWall fixLeak | Notes |
|---|---|---|
| `auto` (default) | Disable | Module block is primary protection. Both can coexist but disabling AFWall fixLeak avoids script path conflicts. |
| `prefer_module` | Disable | Module block always installed; AFWall fixLeak is redundant. |
| `prefer_afwall` | Enable | Module defers only if an AFWall-owned afwallstart script is found (rare on Android 16+). |
| `off` | Must be reliable | Only use if you have confirmed working init.d/Magisk-path support. |

**For Android 16 Pixel users**: use `INTEGRATION_MODE=auto`. **Disable** AFWall's
Fix Startup Data Leak option — this module provides complete boot-time protection
including FORWARD (tether) and optional INPUT coverage. AFWall's fixLeak is
non-functional on Android 16 and can create script conflicts if it targets
Magisk paths.

### Recommended AFWall+ settings alongside this module

| Setting | Recommendation | Reason |
|---|---|---|
| Firewall enabled on boot | Yes | Module waits for AFWall rules; if disabled, timeout fires after 120 s |
| Fix Startup Data Leak | Disable (recommended) | This module is the primary boot protection; AFWall's fixLeak is redundant and can cause conflicts if it writes to Magisk script paths |
| IPv6 support | Enable | Module protects both; ensure AFWall covers IPv6 too |
| Startup Delay | 0 | Module protects the entire pre-AFWall window; extra delay is unnecessary and increases boot protection duration |
| Apply rules on boot | Yes | Required for module to detect AFWall and release the block |
| iptables binary | Auto | Module uses system iptables; AFWall may use built-in; no conflict |

### AFWall option interaction guide

| AFWall option | Recommended setting | Reason |
|---|---|---|
| Fix Startup Data Leak | **Disabled** | This module covers the boot window; AFWall fixLeak is redundant and non-functional on Android 16 |
| Startup Delay | **0** | Module covers the entire pre-AFWall window; extra delay is unnecessary |
| Startup script path | N/A | Not relevant when Fix Startup Data Leak is disabled |
| Active Rules | **Enabled** | Required for module to detect AFWall readiness and release the block |
| Tether control | Enable if using tethering | Module's FORWARD block covers boot gap; AFWall takes over after release |
| LAN control | Enable if needed | Module OUTPUT block covers LAN traffic during boot |
| VPN control | Enable if needed | Module OUTPUT + FORWARD covers VPN traffic during boot |
| Roaming control | Enable if needed | Module OUTPUT block covers roaming traffic during boot |
| INPUT Chain | Enable if you want INPUT rules | Set `ENABLE_INPUT_BLOCK=1` in this module's config.sh to cover boot gap |
| FORWARD Chain | Enable for tether rules | Module FORWARD block covers boot gap |

### Combinations to avoid

- **AFWall disabled + `INTEGRATION_MODE=off`**: No protection at all during boot.
- **Long startup delay + short `TIMEOUT_SECS`**: Module may time out before AFWall
  finishes. Increase `TIMEOUT_SECS` or reduce AFWall's startup delay.
- **`prefer_afwall` on modern Android without init.d**: afwallstart is never
  present; module installs its block anyway. Safe but misleading. Use `auto`.

---

## 5. Operational Modes

### Integration modes (set via `INTEGRATION_MODE` in `config.sh`)

#### `auto` (default — recommended for Android 16)

Module installs its block unconditionally during `post-fs-data`. AFWall's own
mechanisms (if any) run alongside it. Block is released only when AFWall's
iptables rules are confirmed. Safest option for all users.

#### `prefer_module`

Identical to `auto` in effect on modern Android. Explicitly signals that the
module block is the preferred/sole protection mechanism.

#### `prefer_afwall`

The module checks for an AFWall-owned `afwallstart` startup script in known
init.d/su.d paths. If found, the module block is **skipped** (deferred to
AFWall's own protection). If not found, the module installs its block normally.

On **Android 16 Pixel devices**: init.d/su.d is not supported; the afwallstart
script will never be present; this mode is functionally identical to `auto`.
Only meaningful on custom ROMs with working init.d/su.d support.

#### `off`

Module blocking completely disabled. Use only in emergencies (e.g. if the
block is causing a persistent boot loop). Recovery via `action.sh` is always
available.

### Strict phase and failsafe

The module operates as "strict then failsafe":

1. **Strict phase**: Block installed at post-fs-data. Maintained until AFWall
   rules are confirmed (both chain presence AND OUTPUT jump).
2. **Failsafe timeout**: If AFWall never becomes ready within `TIMEOUT_SECS`
   (default 120 s from service.sh start), the block is removed automatically.
3. **Manual failsafe**: `action.sh` (Magisk action button or root shell)
   removes the block immediately at any time.

---

## 5a. Lower-Layer Suppression Subsystem (v2.2.0)

The lower-layer subsystem provides additional anti-leak measures beneath the
iptables hard block.  All operations are **best-effort** and tracked with state
files so only module-changed state is restored.

### Interface quiesce (Layer 1)

At the start of service.sh, the module enumerates `/sys/class/net` and brings
eligible interfaces DOWN via `ip link set <iface> down`.

**Exempt interfaces** (never brought down):
- `lo`, `lo:*` — loopback; always exempt
- `dummy*` — Linux dummy interfaces
- `sit*`, `ip6tnl*`, `ip6gre*` — IPv6 transition tunnels
- `rmnet_ipa*` — Qualcomm IPA hardware accelerator
- `v4-*` — NAT helper virtual interfaces

After AFWall rules are confirmed (settle delay complete), the module brings all
module-downed interfaces back UP.  Routes are NOT restored manually; DHCP and
RA re-acquire them automatically when interfaces come up under AFWall protection.

### Service-level suppression (Layer 3)

After interface quiesce, the module waits for Android framework services to be
available and then:

| Service | Command used | Fallback |
|---|---|---|
| Wi-Fi | `cmd wifi set-wifi-enabled disabled` | `svc wifi disable` |
| Mobile data | `cmd phone data disable` | `svc data disable` |
| Bluetooth | `cmd bluetooth_manager disable` | `svc bluetooth disable` |
| Tethering | `cmd connectivity stop-tethering` | Bring tether ifaces down |

**Pre-boot state tracking**: Before disabling a service, the module checks its
current state (`settings get global wifi_on / mobile_data / bluetooth_on`).
Only services that were enabled before boot are recorded and restored.  Services
the user had disabled before the boot will NOT be re-enabled.

**Tethering note**: Tethering is NOT auto-restarted after AFWall handoff.
Re-enabling tethering requires explicit user action.  This is intentional.

### State files (lower-layer)

All lower-layer state lives under `/data/adb/AFWall-Boot-AntiLeak/state/ll/`:

| File | Contents |
|---|---|
| `mode` | LOWLEVEL_MODE value in effect for this boot |
| `wifi_was_enabled` | `1` if Wi-Fi was enabled when module disabled it |
| `data_was_enabled` | `1` if mobile data was enabled when module disabled it |
| `bt_was_enabled` | `1` if Bluetooth was enabled when module disabled it |
| `tether_was_active` | `1` if tethering was stopped by the module |
| `ifaces_down` | Newline-separated list of interfaces brought DOWN |

### Recovery if a service remains disabled after boot

If the module exits uncleanly (crash/forced stop between Stage B and Stage C),
the Magisk action button or a root shell can recover:

```sh
# Re-enable Wi-Fi (if module disabled it):
cmd wifi set-wifi-enabled enabled 2>/dev/null || svc wifi enable

# Re-enable mobile data (if module disabled it):
cmd phone data enable 2>/dev/null || svc data enable

# Re-enable Bluetooth (if module disabled it and LOWLEVEL_USE_BLUETOOTH_MANAGER=1):
cmd bluetooth_manager enable 2>/dev/null || svc bluetooth enable

# Check lower-layer state files:
ls -la /data/adb/AFWall-Boot-AntiLeak/state/ll/
```

Or use the Magisk action button, which now performs emergency restore of all
lower-layer state in addition to removing firewall blocks.

---

## 6. Recovery

### Networking is still blocked after boot

This usually means AFWall+ is not installed, disabled, or failed to apply rules.

**Option A — Magisk app action button** (simplest):
1. Open Magisk -> Modules.
2. Tap the action button (lightning bolt) next to AFWall Boot AntiLeak.
3. The block is removed and diagnostics are printed.

**Option B — root shell** (immediate):

```sh
# Remove OUTPUT block (raw table preferred, also try filter fallback):
iptables  -t raw    -D OUTPUT  -j MOD_PRE_AFW       2>/dev/null
iptables  -t raw    -F MOD_PRE_AFW                  2>/dev/null
iptables  -t raw    -X MOD_PRE_AFW                  2>/dev/null
ip6tables -t raw    -D OUTPUT  -j MOD_PRE_AFW_V6    2>/dev/null
ip6tables -t raw    -F MOD_PRE_AFW_V6               2>/dev/null
ip6tables -t raw    -X MOD_PRE_AFW_V6               2>/dev/null
iptables  -t filter -D OUTPUT  -j MOD_PRE_AFW       2>/dev/null
iptables  -t filter -F MOD_PRE_AFW                  2>/dev/null
iptables  -t filter -X MOD_PRE_AFW                  2>/dev/null
ip6tables -t filter -D OUTPUT  -j MOD_PRE_AFW_V6    2>/dev/null
ip6tables -t filter -F MOD_PRE_AFW_V6               2>/dev/null
ip6tables -t filter -X MOD_PRE_AFW_V6               2>/dev/null

# Remove FORWARD block (filter table only):
iptables  -t filter -D FORWARD -j MOD_PRE_AFW_FWD     2>/dev/null
iptables  -t filter -F MOD_PRE_AFW_FWD                2>/dev/null
iptables  -t filter -X MOD_PRE_AFW_FWD                2>/dev/null
ip6tables -t filter -D FORWARD -j MOD_PRE_AFW_FWD_V6  2>/dev/null
ip6tables -t filter -F MOD_PRE_AFW_FWD_V6             2>/dev/null
ip6tables -t filter -X MOD_PRE_AFW_FWD_V6             2>/dev/null

# Remove INPUT block if enabled (filter table only):
iptables  -t filter -D INPUT   -j MOD_PRE_AFW_IN      2>/dev/null
iptables  -t filter -F MOD_PRE_AFW_IN                 2>/dev/null
iptables  -t filter -X MOD_PRE_AFW_IN                 2>/dev/null
ip6tables -t filter -D INPUT   -j MOD_PRE_AFW_IN_V6   2>/dev/null
ip6tables -t filter -F MOD_PRE_AFW_IN_V6              2>/dev/null
ip6tables -t filter -X MOD_PRE_AFW_IN_V6              2>/dev/null
```

### Disable the module temporarily

```sh
# Disable module (takes effect on next reboot):
touch /data/adb/modules/AFWall-Boot-AntiLeak/disable

# Or set INTEGRATION_MODE=off in config.sh for a softer disable:
# (Edit the file in a root shell or file manager with root access)
```

### Uninstalling the module

Uninstall via Magisk app. `uninstall.sh` runs automatically and:

1. Removes `MOD_PRE_AFW` and `MOD_PRE_AFW_V6` chains from raw and filter tables.
2. Runs legacy cleanup (removes module-owned afwallstart scripts if present).
3. Deletes all state files and logs under `/data/adb/AFWall-Boot-AntiLeak/`.

Note: Uninstall **does** restore Wi-Fi, mobile data, and Bluetooth if and only
if the module disabled them during the current boot.  If those services were
already off before boot, they remain off.  Tethering is NOT auto-restarted.

### Tether clients can connect during boot (hotspot / USB / Bluetooth)

This should not happen with `ENABLE_FORWARD_BLOCK=1` (the default). To verify:

```sh
# Check FORWARD block is installed during early boot:
iptables  -t filter -S FORWARD | grep MOD_PRE_AFW_FWD
ip6tables -t filter -S FORWARD | grep MOD_PRE_AFW_FWD_V6

# Check state file confirms FORWARD block was installed:
cat /data/adb/AFWall-Boot-AntiLeak/state/ipv4_fwd_active

# Check log for FORWARD installation:
grep 'forward_block\|FORWARD' /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

If the FORWARD block is not present, check:
1. `ENABLE_FORWARD_BLOCK` is not set to `0` in your `config.sh`.
2. The filter table is available: `iptables -t filter -S FORWARD` should work.
3. No errors in the boot log related to `install_forward_block`.

**Note on tether VPN**: If using a VPN while tethering, the VPN traffic may
traverse both the OUTPUT chain (on the device itself) and the FORWARD chain
(for tethered clients forwarded through the VPN interface). Both are blocked
during boot.

### INPUT block not releasing (if ENABLE_INPUT_BLOCK=1)

If networking appears blocked after AFWall starts and you have INPUT blocking
enabled:

1. Check if the INPUT block was released:
   ```sh
   grep 'remove_input\|INPUT' /data/adb/AFWall-Boot-AntiLeak/logs/boot.log | tail -20
   ```
2. Verify AFWall's rules were detected:
   ```sh
   grep 'AFWall rules detected' /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
   ```
3. Manual release:
   ```sh
   iptables  -t filter -D INPUT -j MOD_PRE_AFW_IN     2>/dev/null
   iptables  -t filter -F MOD_PRE_AFW_IN               2>/dev/null
   iptables  -t filter -X MOD_PRE_AFW_IN               2>/dev/null
   ip6tables -t filter -D INPUT -j MOD_PRE_AFW_IN_V6  2>/dev/null
   ip6tables -t filter -F MOD_PRE_AFW_IN_V6            2>/dev/null
   ip6tables -t filter -X MOD_PRE_AFW_IN_V6            2>/dev/null
   ```

### AFWall never becomes ready

If AFWall is absent or permanently disabled:

- Timeout fires after `TIMEOUT_SECS` (default 120 s from `service.sh` start).
- Log shows: `service: timeout 120s reached; removing block (failsafe)`
- Networking is restored automatically.
- To avoid the wait on future boots: set `INTEGRATION_MODE=off` in `config.sh`.

---

## 7. Verification / Troubleshooting

All commands require a root shell (`su` in Termux, or `adb shell` + `su`).

### Check if the module block is currently installed

```sh
# OUTPUT block (raw table preferred, filter fallback):
iptables  -t raw    -S | grep MOD_PRE_AFW
ip6tables -t raw    -S | grep MOD_PRE_AFW_V6
iptables  -t filter -S | grep MOD_PRE_AFW        # filter fallback
ip6tables -t filter -S | grep MOD_PRE_AFW_V6     # filter fallback

# FORWARD block (filter table, default enabled):
iptables  -t filter -S | grep MOD_PRE_AFW_FWD
ip6tables -t filter -S | grep MOD_PRE_AFW_FWD_V6

# INPUT block (filter table, only if ENABLE_INPUT_BLOCK=1):
iptables  -t filter -S | grep MOD_PRE_AFW_IN
ip6tables -t filter -S | grep MOD_PRE_AFW_IN_V6
```

### Check AFWall rule readiness

```sh
iptables  -S        | grep '^-N afwall'
iptables  -S OUTPUT | grep afwall
ip6tables -S        | grep '^-N afwall'
ip6tables -S OUTPUT | grep afwall
```

### Check the boot log

```sh
cat /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
tail -40 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

### Check state files

```sh
# Firewall block state:
ls -la /data/adb/AFWall-Boot-AntiLeak/state/
cat /data/adb/AFWall-Boot-AntiLeak/state/ipv4_out_table    # 'raw' or 'filter'
cat /data/adb/AFWall-Boot-AntiLeak/state/ipv6_out_table    # 'raw' or 'filter'
cat /data/adb/AFWall-Boot-AntiLeak/state/ipv4_fwd_active   # '1' if FORWARD block installed
cat /data/adb/AFWall-Boot-AntiLeak/state/ipv4_in_active    # '1' if INPUT block installed
cat /data/adb/AFWall-Boot-AntiLeak/state/integration_mode

# Lower-layer (lowlevel) state:
ls -la /data/adb/AFWall-Boot-AntiLeak/state/ll/
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/mode            # LOWLEVEL_MODE
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/wifi_was_enabled
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/data_was_enabled
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/bt_was_enabled
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/ifaces_down     # interfaces brought DOWN
```

### Confirm handoff occurred

```sh
grep 'block removed\|timeout\|failsafe' \
  /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

### Check if fallback was used

```sh
grep -E 'WARN|fallback|unprotected' \
  /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

### Check lower-layer suppression status

```sh
# What interfaces did the module bring down?
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/ifaces_down 2>/dev/null || echo "(none)"

# Did the module disable Wi-Fi?
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/wifi_was_enabled 2>/dev/null || echo "(not tracked)"

# Did the module disable mobile data?
cat /data/adb/AFWall-Boot-AntiLeak/state/ll/data_was_enabled 2>/dev/null || echo "(not tracked)"

# Check for lower-layer log lines:
grep 'lowlevel' /data/adb/AFWall-Boot-AntiLeak/logs/boot.log | tail -30

# Confirm staged release completed:
grep -E 'Stage [BCD]|handoff complete' /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

### Enable debug logging

```sh
# Edit config.sh (module directory):
sed -i 's/^DEBUG=0/DEBUG=1/' \
  /data/adb/modules/AFWall-Boot-AntiLeak/config.sh
# Reboot to collect debug output.
```

---

## 8. Ownership and Safety Notes

### Module-owned chains (only these are created/removed)

| Chain | Table | Direction | Protocol |
|---|---|---|---|
| `MOD_PRE_AFW` | raw (or filter fallback) | OUTPUT | IPv4 |
| `MOD_PRE_AFW_V6` | raw (or filter fallback) | OUTPUT | IPv6 |
| `MOD_PRE_AFW_FWD` | filter | FORWARD | IPv4 |
| `MOD_PRE_AFW_FWD_V6` | filter | FORWARD | IPv6 |
| `MOD_PRE_AFW_IN` | filter | INPUT | IPv4 (optional) |
| `MOD_PRE_AFW_IN_V6` | filter | INPUT | IPv6 (optional) |

No other chains, rules, or system files are created by this module.

### AFWall-owned artefacts (never removed by this module)

| Artefact | Why preserved |
|---|---|
| `afwall` chain and all `afwall-*` chains in the filter table | AFWall-owned; different table from module chains |
| `/data/data/dev.ukanth.ufirewall/` | AFWall's app data |
| `/etc/init.d/afwallstart` | AFWall's startup script if installed by AFWall |
| `/su/su.d/afwallstart`, `/system/su.d/afwallstart` | AFWall-owned init scripts |

### Legacy cleanup ownership rules

The module removes `afwallstart` files from Magisk global script directories
(`/data/adb/service.d/`, `/data/adb/post-fs-data.d/`, `/data/adb/system.d/`)
**only** if those files contain one of these module-owned markers:

```
AFW-ANTILEAK
AFWall-Boot-AntiLeak
AFWallBootAntiLeak
sys.afw.policy.drop
```

Files without these markers are never removed.

### How the module avoids conflicting with AFWall

1. Module OUTPUT chains (`MOD_PRE_AFW`, `MOD_PRE_AFW_V6`) live in the **raw table** by preference. Module FORWARD/INPUT chains live in the **filter table** but use dedicated names (`MOD_PRE_AFW_FWD*`, `MOD_PRE_AFW_IN*`) that never clash with AFWall's `afwall` and `afwall-*` chains.
2. Module block is installed in `post-fs-data`. AFWall doesn't touch iptables
   until FirewallService starts (requires Zygote + framework). No timing race.
3. Module blocks are all removed **after** AFWall's OUTPUT jump is confirmed. At that point AFWall has also installed any FORWARD/INPUT rules based on user configuration. AFWall's rules become the sole active protection from that moment.
4. Module never flushes or modifies chains it does not own.

---

## 9. Upgrade / Migration Notes

### From original upstream `gjf/AFWall-Boot-AntiLeak` (v1.x)

The original module used `svc wifi disable` / `svc data disable` as its entire
protection mechanism. Limitations of the original approach:

- `svc` requires framework services unavailable during `post-fs-data`
- Radio disable/enable races with network stack initialization
- No IPv6 protection
- Release condition was process presence (`pidof dev.ukanth.ufirewall`), not
  iptables rule presence — unreliable on fast-starting devices
- No fallback if process detection failed

Migration steps:

1. Remove any legacy afwallstart files:
   ```sh
   ls /data/adb/service.d/afwallstart
   ls /data/adb/post-fs-data.d/afwallstart
   ls /data/adb/system.d/afwallstart
   ```
2. Install v2.0.0 via Magisk.
3. The module automatically removes module-owned legacy files on first boot.
4. Reboot.

### From earlier v2.0.0 drafts

Improvements in this final verification pass:

- `remove_legacy_afwallstart()` now covers all three legacy paths
  (service.d, post-fs-data.d, system.d)
- `afwall_startup_protection_active()` now correctly detects AFWall's startup
  scripts (init.d/su.d) as primary indicator, not raw-table chain presence
- Integration mode documentation corrected to reflect verified AFWall+ source
- Comprehensive README with installation, verification, recovery, and test matrix

---

## 10. Known Caveats

### Encrypted data partition (FBE)

During the first boot after factory reset or re-encryption, `/data` may not be
mounted when post-fs-data runs. Log and state directories cannot be written.
The iptables block is installed at the kernel level and does not require `/data`.
From the second boot onward, logging works normally.

### Netfilter raw-table availability

Raw-table blocking requires `CONFIG_IP_NF_RAW` / `CONFIG_IP6_NF_RAW` kernel
modules. All Pixel devices on AOSP-based Android 16 have these. If absent, the
filter-table fallback is used transparently.

### iptables backend

Modern Android may use `iptables-nft` (nftables compatibility). The filter-table
fallback is more likely to be needed in nftables configurations. Both backends
are supported without any user configuration.

### INPUT blocking (optional)

The module blocks OUTPUT (device-originated) and FORWARD (tethered client)
traffic by default. INPUT (inbound) blocking is optional and disabled by
default; enable with `ENABLE_INPUT_BLOCK=1` in `config.sh`. Even with INPUT
blocking, loopback (`lo`) traffic is always exempted to preserve local IPC.

### AFWall fixLeak on modern Android

AFWall's fixLeak (init.d/su.d script) is non-functional on Android 8+ without
a special ROM. On Android 16 Pixel devices, enabling it in AFWall does nothing
harmful but provides no actual startup protection. This module is the correct
solution for startup leak prevention on modern Pixel devices.

### Lower-layer suppression limitations

- **Interface quiesce**: `ip link set <iface> down` reduces connectivity but some
  managed interfaces (e.g. wlan0 under wpa_supplicant) may be brought back up by
  the system before AFWall handoff.  The iptables hard block prevents any traffic
  regardless.
- **Service commands require framework**: `cmd wifi` and `cmd phone data disable`
  require Android framework services to be running.  These commands are attempted
  after a brief retry; if the framework is not available, they are skipped and the
  iptables hard block remains the sole protection.
- **Tethering not auto-restored**: the module stops tethering sessions during boot
  but does NOT restart them after AFWall handoff.  The user must manually re-enable
  tethering.  This is by design.
- **Bluetooth disabled by default**: Bluetooth service suppression
  (`LOWLEVEL_USE_BLUETOOTH_MANAGER=0`) is disabled by default to avoid disrupting
  Bluetooth peripherals.  Enable in config.sh if Bluetooth tethering is a concern
  during boot.
- **Airplane mode not used**: see Layered Anti-Leak Model section above.

---

## Configuration Reference

Edit `config.sh` in the module directory, or place a persistent override at
`/data/adb/AFWall-Boot-AntiLeak/config.sh` (survives module updates):

| Variable | Default | Description |
|---|---|---|
| `INTEGRATION_MODE` | `auto` | `auto` / `prefer_module` / `prefer_afwall` / `off` |
| `ENABLE_FORWARD_BLOCK` | `1` | Set to `0` to disable the FORWARD chain block (tether coverage) |
| `ENABLE_INPUT_BLOCK` | `0` | Set to `1` to enable the optional INPUT chain block (inbound hardening) |
| `LOWLEVEL_MODE` | `safe` | `off` / `safe` / `strict` — controls lower-layer suppression tier |
| `LOWLEVEL_INTERFACE_QUIESCE` | `1` | Bring non-loopback interfaces DOWN via `ip link` |
| `LOWLEVEL_USE_WIFI_SERVICE` | `1` | Disable Wi-Fi via `cmd wifi` / `svc wifi` |
| `LOWLEVEL_USE_PHONE_DATA_CMD` | `1` | Disable mobile data via `cmd phone` / `svc data` |
| `LOWLEVEL_USE_BLUETOOTH_MANAGER` | `0` | Disable Bluetooth via `cmd bluetooth_manager` (opt-in) |
| `LOWLEVEL_USE_TETHER_STOP` | `1` | Stop tethering via `cmd connectivity` + interface shutdown |
| `TIMEOUT_SECS` | `120` | Seconds before force-unblocking if AFWall never becomes ready |
| `SETTLE_SECS` | `5` | Seconds to wait after first AFWall rule detection before releasing block |
| `DEBUG` | `0` | Set to `1` for verbose `[DEBUG]` entries in the boot log |

---

## State and Log Files

```
/data/adb/AFWall-Boot-AntiLeak/
  config.sh             # optional user override (survives module updates)
  logs/
    boot.log            # all events from all boot phases (appended each boot)
  state/
    block_installed      # present while module block is active (contains '1')
    ipv4_out_table       # table for IPv4 OUTPUT block ('raw' or 'filter')
    ipv6_out_table       # table for IPv6 OUTPUT block ('raw' or 'filter')
    ipv4_fwd_active      # present ('1') while IPv4 FORWARD block is installed
    ipv6_fwd_active      # present ('1') while IPv6 FORWARD block is installed
    ipv4_in_active       # present ('1') while IPv4 INPUT block is installed (optional)
    ipv6_in_active       # present ('1') while IPv6 INPUT block is installed (optional)
    integration_mode     # integration mode chosen for this boot
  state/ll/              # lower-layer suppression state (v2.2.0+)
    mode                 # LOWLEVEL_MODE in effect for this boot
    wifi_was_enabled     # '1' if Wi-Fi was enabled when module disabled it
    data_was_enabled     # '1' if mobile data was enabled when module disabled it
    bt_was_enabled       # '1' if Bluetooth was enabled when module disabled it (opt-in)
    tether_was_active    # '1' if tethering was stopped by the module
    ifaces_down          # newline-list of interfaces brought DOWN by module
```

---

## Fallback Table

| Failure | Action taken |
|---|---|
| `iptables` not found | Log critical error; IPv4 block not installed |
| `ip6tables` not found | Log warning; IPv6 unprotected for all directions; IPv4 still protected |
| Raw table unavailable | Fall back to filter table; logged as warning |
| Filter table also fails | Log critical warning; block not installed for that protocol |
| AFWall absent or never starts | Timeout (`TIMEOUT_SECS`) fires; block removed; networking restored |
| `svc` unavailable | Radio toggle helpers silently skip (not primary protection) |
| State files lost / corrupt | Removal tries both raw and filter tables defensively for all chain names |
| `iptables -C` returns error | Rule is re-added (idempotent; no duplicate from chain-based check) |
| `cmd wifi` / `svc wifi` unavailable | Logged as WARN; Wi-Fi not disabled; iptables block still in place |
| `cmd phone` / `svc data` unavailable | Logged as WARN; mobile data not disabled; iptables block still in place |
| Framework not ready after 5 attempts | Service suppression skipped; logged; iptables hard block remains |
| Interface quiesce fails | Individual interface skip logged; others still processed |
| Lower-layer state lost between Stage B and C | `lowlevel_emergency_restore` via action button re-reads state files |

---

## Test Matrix

| Scenario | Expected log / behaviour |
|---|---|
| Normal boot — AFWall starts normally | `install_block`, then `block removed (AFWall rules confirmed)` |
| AFWall not installed | Timeout fires; `timeout 120s reached; removing block (failsafe)` |
| AFWall delayed start (< timeout) | Block maintained; released when rules appear |
| AFWall delayed start (> timeout) | Timeout fires; networking restored; block logged as failsafe removal |
| IPv6 ip6tables unavailable | `install_output_block_v6: ip6tables not found`; IPv4 protected for all directions; IPv6 warning |
| Raw table unavailable | `raw table failed; falling back to filter table`; block in filter |
| Both raw and filter fail | `WARN: could not install block`; user alerted via log |
| Second reboot (idempotent check) | Clean block installed; no duplicate chains |
| Interrupted boot (crash/reboot mid-block) | Next boot's post-fs-data cleans up old chains before installing new ones |
| Manual recovery via action.sh | Block removed; diagnostics printed; log entry created |
| Module uninstall | Module chains removed from all tables; state/logs deleted; radios not changed |
| AFWall fixLeak enabled + module `auto` | Coexist; module releases after AFWall confirms rules; recommend disabling AFWall fixLeak |
| `ENABLE_FORWARD_BLOCK=1` (default) | FORWARD block installed; tether clients blocked during boot |
| `ENABLE_FORWARD_BLOCK=0` | No FORWARD block; tether clients unprotected during boot |
| `ENABLE_INPUT_BLOCK=1` | INPUT block installed; inbound connections blocked (loopback exempted) |
| `ENABLE_INPUT_BLOCK=0` (default) | No INPUT block; inbound connections not blocked during boot |
| AFWall fixLeak enabled + module `prefer_afwall` | Android 16: same as auto (no afwallstart found); custom ROM with init.d: module defers |
| `INTEGRATION_MODE=off` | No block installed; post-fs-data logs skip; networking unprotected pre-AFWall |
| `DEBUG=1` | Extra `[DEBUG]` lines in boot.log for every iptables operation |
| FBE — first boot before /data decrypted | iptables block installed (kernel-level); log/state writes silently skipped |

---

## ChangeLog

### v2.2.0 — Lower-layer anti-leak suppression tier

- **New: `bin/lowlevel.sh`** — a dedicated lower-layer suppression subsystem with full ownership and state-tracking discipline.
- **Layer 1 (interface quiesce)**: at service.sh start, enumerate `/sys/class/net` and bring non-loopback interfaces DOWN via `ip link set <iface> down`. Exempt: loopback, dummy*, sit*, ip6tnl*, ip6gre*, rmnet_ipa*, v4-*. Restore after handoff.
- **Layer 3 (service-level suppression)**: wait for framework services, then disable Wi-Fi (`cmd wifi set-wifi-enabled disabled`), mobile data (`cmd phone data disable`), Bluetooth (`cmd bluetooth_manager disable`, opt-in), tethering (`cmd connectivity stop-tethering` + interface shutdown). Pre-boot state checked; only module-changed services are restored.
- **Staged release**: (A) AFWall rules confirmed + settle delay, (B) `remove_block`, (C) `lowlevel_restore_changed_state`, (D) log "handoff complete".
- **State tracking**: all lower-layer changes tracked in `state/ll/`. Only module-changed state restored.
- **Emergency restore**: `action.sh` and `uninstall.sh` now call `lowlevel_emergency_restore` to re-enable services the module disabled.
- **Config**: `LOWLEVEL_MODE=safe`, `LOWLEVEL_INTERFACE_QUIESCE=1`, `LOWLEVEL_USE_WIFI_SERVICE=1`, `LOWLEVEL_USE_PHONE_DATA_CMD=1`, `LOWLEVEL_USE_BLUETOOTH_MANAGER=0`, `LOWLEVEL_USE_TETHER_STOP=1`.
- **Not implemented**: init/rc overlay mode. Rationale: iptables blocks are installed at post-fs-data (before interfaces exist); overlay provides no security benefit. Airplane mode not used as primary protection.
- Bump to v2.2.0 / versionCode=220.

### v2.1.0 — FORWARD and INPUT chain coverage

- **FORWARD chain block** (`MOD_PRE_AFW_FWD` / `MOD_PRE_AFW_FWD_V6`): new module-owned chains in the filter table protect tethered clients (Wi-Fi hotspot, USB tether, Bluetooth PAN) from leaking traffic during boot. Enabled by default (`ENABLE_FORWARD_BLOCK=1`).
- **INPUT chain block** (`MOD_PRE_AFW_IN` / `MOD_PRE_AFW_IN_V6`): optional module-owned chains block inbound connections during boot. Disabled by default; enable with `ENABLE_INPUT_BLOCK=1` in `config.sh`. Loopback always exempted.
- **Config**: added `ENABLE_FORWARD_BLOCK` and `ENABLE_INPUT_BLOCK` options to `config.sh`.
- **Refactored install/remove API**: per-direction functions (`install_output_block_v4`, `install_forward_block_v4`, `install_input_block_v4`, etc.) replace the single `install_block_v4`.
- **AFWall readiness detection**: unchanged (OUTPUT hook is sufficient signal); added supplementary `afwall_forward_hook_present()` and `afwall_input_hook_present()` diagnostics logged at block-release time.
- **Legacy cleanup**: `remove_legacy_raw_drop` now covers all module chain names.
- **State files**: renamed `ipv4_table`→`ipv4_out_table` and `ipv6_table`→`ipv6_out_table`; added `ipv4_fwd_active`, `ipv6_fwd_active`, `ipv4_in_active`, `ipv6_in_active`. Backward compat: remove functions still check old state file names.
- **AFWall interaction**: updated guidance to recommend disabling AFWall Fix Startup Data Leak when using this module.

### v2.0.0 — Major redesign (this release)

- **Primary protection**: iptables `DROP` chain in raw table (raw->filter
  fallback) replaces unreliable `svc wifi/data disable` radio toggles
- **IPv6**: `ip6tables` block chain `MOD_PRE_AFW_V6` added
- **Release condition**: AFWall iptables chain + OUTPUT jump detection replaces
  `pidof` process polling
- **Integration mode system**: `auto` / `prefer_module` / `prefer_afwall` /
  `off`; verified against AFWall+ upstream source
- **Correct AFWall startup detection**: `afwall_startup_protection_active()`
  checks init.d/su.d afwallstart scripts (AFWall's actual fixLeak mechanism)
- **Full legacy cleanup**: covers service.d, post-fs-data.d, and system.d paths
- **State tracking**: per-boot state files under
  `/data/adb/AFWall-Boot-AntiLeak/state/`
- **Persistent logging**: `/data/adb/AFWall-Boot-AntiLeak/logs/boot.log`
- **Idempotent operations**: repeated boots do not duplicate chains/rules
- **`action.sh`**: manual emergency recovery with verbose output
- **`uninstall.sh`**: clean removal without touching AFWall artefacts
- **`config.sh`**: user-tunable settings that survive module updates

### v1.3 — Legacy (original upstream)

Automatic deletion of `afwallstart` from
`/data/adb/post-fs-data.d/` and `/data/adb/system.d/`.

### v1.2 — Legacy

Added delay before re-enabling internet.

### v1.1 — Legacy

Enforced WiFi and Mobile Data block via `svc`.

### v1.0 — Legacy

First release.

---

## 11. Module Framework and Packaging (MMT-Extended)

### Framework baseline

This module's installer framework is aligned with
[MMT-Extended v3.7](https://github.com/Zackptg5/MMT-Extended) by Zackptg5.
MMT-Extended is a widely-used Magisk module template that provides a
standardised install/uninstall flow, KernelSU/APatch compatibility shims,
DYNLIB support, addon infrastructure, and consistent file layout.

### Repository / zip layout

```
AFWall-Boot-AntiLeak/
├── .github/
│   └── workflows/
│       ├── ci.yml             # CI: shellcheck + build + validate on PRs and pushes
│       └── release.yml        # Release: tag-driven or manual dispatch release
├── META-INF/
│   └── com/google/android/
│       ├── update-binary      # MMT-Extended entry point (calls Magisk install_module)
│       └── updater-script     # Required stub: "#MAGISK"
├── common/
│   ├── functions.sh           # MMT-Extended installer helper (extracted to TMPDIR)
│   └── install.sh             # Module-specific install banner (sourced then deleted)
├── bin/
│   ├── common.sh              # Module runtime library (sourced by all boot scripts)
│   └── lowlevel.sh            # Lower-layer suppression subsystem (v2.2.0+)
├── tools/
│   ├── build-release.sh       # Build script: validates, packages ZIP, emits checksum
│   └── validate-zip.sh        # Validates built ZIP internal structure
├── action.sh                  # Magisk action button / manual recovery
├── config.sh                  # User-tunable runtime settings
├── customize.sh               # MMT-Extended config + permissions + SKIPUNZIP entry
├── module.prop                # Module metadata including updateJson
├── post-fs-data.sh            # Early-boot firewall block installer
├── service.sh                 # Late-start AFWall+ polling + block release
├── uninstall.sh               # Custom firewall cleanup (deliberate deviation — see §12)
├── update.json                # OTA update metadata (consumed by Magisk app)
├── README.md                  # This file
├── .shellcheckrc              # Shellcheck configuration for Android/ash scripts
├── .gitattributes             # LF line-ending rules
└── .gitignore                 # Standard ignores (excludes dist/)
```

### How to build / package the module zip (local)

The repository includes a build script that validates required files, packages
the correct file set, and emits a checksum. This is the canonical way to build
locally or in CI.

```sh
# From the repository root:
chmod +x tools/build-release.sh
tools/build-release.sh            # outputs to dist/ by default

# Optionally specify output directory and zip name:
tools/build-release.sh dist/ AFWall-Boot-AntiLeak.zip
```

Output:
- `dist/AFWall-Boot-AntiLeak-v2.2.0.zip` — Magisk-installable module ZIP
- `dist/sha256sum.txt` — SHA256 checksum
- `dist/build-info.txt` — build metadata (version, git ref, date)

Install the produced zip via **Magisk app → Modules → Install from storage**.

Do **not** install in recovery; this module requires boot-mode install (the
installer framework rejects recovery installs and only performs uninstall in
that context).

### Validate a built ZIP

```sh
chmod +x tools/validate-zip.sh
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-v2.2.0.zip
```

This checks that all required installer and runtime files are present inside
the ZIP, that `module.prop` is parseable, and that files are at the ZIP root
(no nesting parent directory).

### Install flow (what the installer does)

1. `update-binary` loads Magisk's `util_functions.sh` and calls `install_module`.
2. Magisk sources `customize.sh`, which sets config flags and defines
   `set_permissions()`.
3. `SKIPUNZIP=1` prevents Magisk from auto-extracting the zip.
4. `customize.sh` manually extracts `common/functions.sh` to `$TMPDIR` and
   sources it — this runs the MMT-Extended install engine.
5. The install engine:
   - Prints the MMT-Extended credit banner.
   - Checks MINAPI (26) / MAXAPI constraints.
   - Detects KSU/APatch and sets up variables.
   - Extracts all zip files (except `META-INF/` and `common/functions.sh`) to
     `$MODPATH`.
   - Sources `common/install.sh` (prints the module banner), then deletes
     `common/` from `$MODPATH`.
   - Strips comments and blank lines from all `.sh`, `.prop`, and `.rule` files
     in `$MODPATH` (MMT-Extended default behaviour).
   - Processes `service.sh`, `post-fs-data.sh`, and `uninstall.sh` via
     `install_script` (adds shebang and variable injections).
   - Runs `set_perm_recursive $MODPATH 0 0 0755 0644` then calls
     `set_permissions()` from `customize.sh` for per-file overrides.
   - Calls `cleanup` (removes `common/` and `install.zip` if present).

### Uninstall flow

Uninstall is triggered by Magisk when the module is removed via the app.
`uninstall.sh` runs from `$MODPATH` and:

1. Removes module-owned firewall chains (`MOD_PRE_AFW`, `MOD_PRE_AFW_V6`)
   from raw and filter tables.
2. Removes legacy module-owned afwallstart scripts (if markers match).
3. Deletes state files and logs under `/data/adb/AFWall-Boot-AntiLeak/`.

Additionally, because this module has a custom `uninstall.sh` (not the default
MMT-Extended template), the installer installs a fallback copy in
`/data/adb/service.d/AFWall-Boot-AntiLeak-uninstall.sh`. This fallback runs
on the next boot only if the module directory has already been deleted (e.g.
manual deletion without going through Magisk). The fallback exits immediately
if the module directory still exists.

### update.json and OTA updates

`module.prop` contains:

```
updateJson=https://raw.githubusercontent.com/cbkii/AFWall-Boot-AntiLeak/master/update.json
```

The Magisk app reads `update.json` from this URL to check for new versions and
offer in-app updates. The `zipUrl` in `update.json` uses the GitHub Releases
stable asset path:

```json
"zipUrl": "https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/latest/download/AFWall-Boot-AntiLeak.zip"
```

This works because the release workflow always uploads the ZIP with the stable
name `AFWall-Boot-AntiLeak.zip`. When releasing a new version, `update.json`'s
`version` and `versionCode` fields must be updated to match `module.prop`
(see §13 Maintainer Release Process for the full checklist).

---

## 12. MMT-Extended Alignment Notes

### What was aligned with MMT-Extended

| Item | Change made |
|---|---|
| `META-INF/com/google/android/update-binary` | Replaced stub (that exited with error) with the real MMT-Extended entry point that calls `install_module` from Magisk's `util_functions.sh` |
| `customize.sh` | Restructured to MMT-Extended convention: config flags section, REPLACE list, `set_permissions()` function, `SKIPUNZIP=1` + `common/functions.sh` source pattern |
| `common/functions.sh` | Added — exact copy of MMT-Extended v3.7 installer helper. Required by `customize.sh`. Deleted from MODPATH after install. |
| `common/install.sh` | Added — module-specific install banner. Sourced during install then deleted. |
| `update.json` | Added — OTA update metadata consumed by Magisk app. |
| `module.prop` | Added `updateJson` field; corrected version prefix to `v2.1.0`. |
| `.gitattributes` | Updated to MMT-Extended's explicit LF line-ending rules (covers `.sh`, `.prop`, `.md`, `.json`, `META-INF/**`). |
| `.gitignore` | Added — MMT-Extended convention (ignores `__MACOSX`, `.DS_Store`). |

### Deliberate deviations from MMT-Extended

#### 1. `uninstall.sh` — custom firewall cleanup

**MMT-Extended default**: `uninstall.sh` reads a tracked-files list (`$INFO`)
and restores backups or removes files installed outside the module directory.

**This module**: `uninstall.sh` sources `bin/common.sh` and calls
`remove_block()` to remove iptables chains, plus `cleanup_legacy()` and
directory removal. It does not use the `$INFO` file because this module does
not install files outside `$MODPATH`.

**Why kept**: The module-owned iptables chains (`MOD_PRE_AFW`,
`MOD_PRE_AFW_V6`) live in kernel space, not on the filesystem. The MMT-Extended
INFO-file mechanism cannot track or remove them. The custom `uninstall.sh` is
the only correct way to perform clean kernel-level teardown.

**Side effect**: Because the first line of `uninstall.sh` is not
`# Don't modify anything after this` (the MMT-Extended signal for a no-op
uninstall), the installer also creates a fallback copy in
`/data/adb/service.d/`. This is intentional: the fallback provides a
last-resort cleanup path if the module directory is manually deleted without
going through Magisk. Note that the fallback cannot source `bin/common.sh`
if the module directory is already gone, so it will fail silently in that
edge case.

#### 2. `bin/common.sh` — module runtime library

**MMT-Extended default**: No `bin/` directory. Helper logic is in
`common/functions.sh` (installer-only, deleted after install).

**This module**: `bin/common.sh` is a runtime library sourced by all boot
scripts (`post-fs-data.sh`, `service.sh`, `action.sh`, `uninstall.sh`). It
contains firewall management, AFWall+ detection, logging, and config loading
logic.

**Why kept**: This module has significant runtime logic that must persist on
device. The MMT-Extended `common/functions.sh` is an installer-only artifact;
a separate on-device library is the correct approach for this use case.

#### 3. `config.sh` — user-visible configuration

**MMT-Extended default**: No user-visible config file. All module configuration
is done at install time.

**This module**: `config.sh` provides runtime-tunable settings
(`INTEGRATION_MODE`, `TIMEOUT_SECS`, `SETTLE_SECS`, `DEBUG`). Users can place
a persistent override at `/data/adb/AFWall-Boot-AntiLeak/config.sh` which
survives module updates.

**Why kept**: The module's behaviour during boot is meaningfully configurable
and the settings are user-facing. A persistent override path is essential for
a security module to avoid unintended behaviour changes on update.

**Note on comment stripping**: MMT-Extended's installer strips all comment
lines from `.sh` files during installation. This removes the inline documentation
from `config.sh`. Users should consult this README or the in-module `config.sh`
in the source repository for documentation. The runtime behaviour is unaffected.

#### 4. MINAPI=26 (not commented out)

**MMT-Extended default**: MINAPI and MAXAPI are commented out (no restriction).

**This module**: `MINAPI=26` is set (Android 8.0+). This prevents installation
on Android versions that lack reliable iptables raw-table support. The primary
target is Android 16; earlier Android versions work but may have different
iptables behaviour.

#### 5. KernelSU / APatch not tested

**MMT-Extended**: Supports KSU v0.6.6+ and APatch (treated as KSU). The
installer framework handles KSU/APatch correctly.

**This module**: The installer framework supports KSU/APatch, but the module's
runtime logic (iptables operations, `post-fs-data.sh` execution) has **not
been tested** on KSU or APatch. The `post-fs-data.sh` hook in particular may
behave differently under KSU. Use on KSU/APatch at your own risk.

#### 6. No `system/` or `zygisk/` directories

**MMT-Extended**: Includes empty `system/` and `zygisk/` placeholder
directories.

**This module**: These directories are not present because the module does not
modify system files and does not use Zygisk. Their absence does not affect
functionality; the installer handles their non-existence gracefully.

---

## 13. CI / Release Automation

### Overview

| Trigger | Workflow | What happens |
|---|---|---|
| PR or push to `master`/`main` | `ci.yml` | Shellcheck lint, build ZIP, validate structure, upload artifacts |
| Push tag `v*.*.*` | `release.yml` | Build ZIP, validate, create GitHub Release, attach assets |
| `workflow_dispatch` on `release.yml` | `release.yml` | Same as tag push; creates tag if absent |

### CI workflow (`.github/workflows/ci.yml`)

Triggered on every pull request and on direct pushes to `master`/`main`
(documentation-only changes are skipped).

Steps:
1. **Shellcheck**: lints `bin/common.sh`, `action.sh`, `post-fs-data.sh`,
   `service.sh`, `uninstall.sh`, `tools/build-release.sh`, and
   `tools/validate-zip.sh`. Uses `.shellcheckrc` (shell=ash, disables Android
   false-positives SC1090/SC1091/SC2034). Fails on any `warning` or above.
2. **Build**: runs `tools/build-release.sh` to produce the module ZIP.
3. **Validate**: runs `tools/validate-zip.sh` to verify the ZIP structure.
4. **Upload artifacts**: attaches the ZIP, checksum, and build-info as workflow
   artifacts (retained 14 days). Reviewers can download and test from the PR.

PR checks give maintainers confidence that merging will produce a valid,
installable ZIP.

> **Note for first-time setup**: GitHub requires a maintainer to approve the
> first run of a new CI workflow on a PR before it executes. This is a
> one-time security gate. After the workflow runs once from the default branch
> (`main`/`master`), all subsequent PR runs will proceed automatically without
> approval.

### Release workflow (`.github/workflows/release.yml`)

**Tag-driven release (recommended)**:
1. Push a version tag (e.g. `v2.2.0`) matching the value in `module.prop`.
2. The workflow fires automatically.
3. It validates that the tag matches `module.prop version`.
4. It builds the ZIP with the stable filename `AFWall-Boot-AntiLeak.zip`.
5. It creates a GitHub Release at that tag with release notes.
6. It attaches `AFWall-Boot-AntiLeak.zip`, `sha256sum.txt`, and `build-info.txt`
   as release assets.

**Manual release (workflow_dispatch)**:
1. Go to **Actions → Release → Run workflow** in the GitHub UI.
2. Optionally specify a `ref` (branch/commit) and `tag` (defaults to
   `module.prop` version). Check **draft** to review before publishing.
3. The workflow creates the tag if it does not exist, then builds and publishes.
4. Useful for re-publishing a release or building from a specific commit.

**Release re-run**: If a release for that tag already exists, the workflow
deletes it first (clean re-release). This handles CI re-runs safely.

### Release asset naming

| Asset | Description |
|---|---|
| `AFWall-Boot-AntiLeak.zip` | Magisk module ZIP (stable name for OTA `zipUrl`) |
| `sha256sum.txt` | SHA256 checksum of the ZIP |
| `build-info.txt` | Build metadata (version, git ref, date) |

The stable name `AFWall-Boot-AntiLeak.zip` ensures the `update.json` `zipUrl`
(`…/releases/latest/download/AFWall-Boot-AntiLeak.zip`) always resolves to the
latest release without changing `update.json` on every release.

### Where to download

1. **Latest release**: [GitHub Releases](https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/latest)
2. **Direct download**: `https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/latest/download/AFWall-Boot-AntiLeak.zip`
3. **Specific version**: `https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/download/v2.2.0/AFWall-Boot-AntiLeak.zip`

### Verify the checksum

```sh
# Download checksum file
curl -L https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/latest/download/sha256sum.txt -o sha256sum.txt
# Verify
sha256sum -c sha256sum.txt
```

---

## 14. Maintainer Release Process

When you are ready to cut a new release:

### Step 1: Update version files

In a new branch/PR, update two files:

**`module.prop`**:
```
version=v2.2.0
versionCode=220
```

**`update.json`**:
```json
{
  "version": "v2.2.0",
  "versionCode": 220,
  "zipUrl": "https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/latest/download/AFWall-Boot-AntiLeak.zip",
  "changelog": "https://raw.githubusercontent.com/cbkii/AFWall-Boot-AntiLeak/master/README.md"
}
```

`version` and `versionCode` must match between both files.

### Step 2: Update the README ChangeLog

Add an entry to the `## ChangeLog` section describing the changes in the new
version.

### Step 3: Open a PR and wait for CI

The CI workflow will:
- Lint all shell scripts
- Build the module ZIP
- Validate the ZIP structure
- Upload the ZIP as an artifact (downloadable for manual testing)

Review the CI artifacts. Download the ZIP and test-install it on a device if
possible before merging.

### Step 4: Merge the PR

Merge the PR into `master`/`main`.

### Step 5: Create a version tag

```sh
git checkout master
git pull
git tag v2.2.0
git push origin v2.2.0
```

This triggers the release workflow automatically.

### Step 6: Verify the release

1. Go to [GitHub Releases](https://github.com/cbkii/AFWall-Boot-AntiLeak/releases).
2. Confirm the new release is present with the correct tag.
3. Confirm `AFWall-Boot-AntiLeak.zip`, `sha256sum.txt`, and `build-info.txt` are
   attached.
4. Download and verify the checksum.
5. Test-install on a device if possible.

### Alternative: manual dispatch

If you prefer not to create the tag manually, or need to rebuild an existing
release:

1. Go to **Actions → Release → Run workflow**.
2. Fill in the `ref` (leave blank for HEAD) and `tag` (leave blank to use
   `module.prop` version).
3. Check **draft** if you want to review before publishing.
4. Click **Run workflow**.

---

## 15. Developer Quick Reference

### Run the full local pipeline

```sh
# Lint
shellcheck --severity=warning \
  bin/common.sh action.sh post-fs-data.sh service.sh uninstall.sh \
  tools/build-release.sh tools/validate-zip.sh

# Build
chmod +x tools/build-release.sh
tools/build-release.sh dist/

# Validate
chmod +x tools/validate-zip.sh
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-v2.2.0.zip

# Inspect ZIP contents
unzip -l dist/AFWall-Boot-AntiLeak-v2.2.0.zip
```

### Inspect the built ZIP structure

```sh
unzip -l dist/AFWall-Boot-AntiLeak-v2.2.0.zip
```

Expected top-level entries: `META-INF/`, `common/`, `bin/`, `action.sh`,
`config.sh`, `customize.sh`, `module.prop`, `post-fs-data.sh`, `service.sh`,
`uninstall.sh`, `update.json`, `README.md`.  The `bin/` directory contains
`common.sh` (module runtime library) and `lowlevel.sh` (lower-layer subsystem,
v2.2.0+).

Files should **not** be nested under a parent directory such as
`AFWall-Boot-AntiLeak/META-INF/...` — that would prevent Magisk from
finding the installer files.

### Test installability indicator

After building, run:

```sh
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-v2.2.0.zip
```

A `VALIDATION PASSED` result means the ZIP passes structural checks. Actual
on-device install testing remains the definitive test.

### Bump version for a new release

```sh
# 1. Edit module.prop (version= and versionCode=)
# 2. Edit update.json  (version and versionCode)
# 3. Update README.md ChangeLog
# 4. Commit, PR, merge
# 5. git tag vX.Y.Z && git push origin vX.Y.Z
```
