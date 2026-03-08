# AFWall Boot AntiLeak — v2.0.0 (MMT-Extended aligned)

A Magisk module that **blocks all internet traffic at the kernel level** from
the very first moment of each Android boot, before AFWall+ has applied its own
firewall rules. The block is removed automatically once AFWall's rules are
confirmed active in iptables.

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
| `post-fs-data` (very early, before Zygote) | Module installs a temporary `DROP` chain (`MOD_PRE_AFW` / `MOD_PRE_AFW_V6`) in the iptables **raw table** (fallback: filter table). Loopback is exempted. All outbound IPv4 and IPv6 traffic is blocked. |
| `service` (late start, runs in background) | Module polls iptables every 2 s for AFWall's `afwall` chain and the `OUTPUT -j afwall` jump. Once confirmed, a configurable settle delay passes, then the module block is removed. A hard timeout (default 120 s) prevents indefinite blocking if AFWall is absent. |
| `action` (manual) | Emergency button in the Magisk app to force-remove the block. |
| `uninstall` | Removes only module-owned chains and state files. |

### What the module does NOT guarantee

- It does **not** guarantee protection against root-level processes that
  manipulate iptables directly.
- It does **not** protect against leaks via VPNs, tethered interfaces, or
  special kernel bypass techniques; those are AFWall+'s concern once it is
  active.
- It does **not** block inbound connections; only outbound (OUTPUT chain).
- It is **not** a replacement for AFWall+; it is a pre-AFWall safety net.

### Module protection vs AFWall+ protection

| Aspect | This module | AFWall+ |
|---|---|---|
| When active | From post-fs-data until AFWall is ready | After FirewallService starts |
| Blocking mechanism | Temporary iptables DROP chain | Full per-app iptables ruleset |
| IPv6 | Yes (if ip6tables available) | Configurable |
| Inbound blocking | No (OUTPUT only) | Yes (INPUT configurable) |
| Per-app granularity | No | Yes |
| Persistence after boot | Block is removed on release | Rules persist until disabled |

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
2. Select `AFWall-Boot-AntiLeak-v2.0.0.zip`.
3. The installer prints the installation log. Look for:
   ```
   AFWall Boot AntiLeak  v2.0.0
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
[2026-03-08 04:01:00] post-fs-data: start (module=AFWall-Boot-AntiLeak v2.0.0)
[2026-03-08 04:01:00] cleanup_legacy: phase=post-fs-data
[2026-03-08 04:01:00] integration: configured_mode=auto
[2026-03-08 04:01:00] integration: auto; no AFWall startup chains; module block is sole protection
[2026-03-08 04:01:00] install_block: start
[2026-03-08 04:01:00] install_block_v4: installed in raw table
[2026-03-08 04:01:00] install_block_v6: installed in raw table
[2026-03-08 04:01:00] install_block: done (v4_ok=1 v6_ok=1)
[2026-03-08 04:01:00] post-fs-data: done
[2026-03-08 04:01:15] service: start (timeout=120s settle=5s)
[2026-03-08 04:01:15] service: AFWall pkg=dev.ukanth.ufirewall
[2026-03-08 04:01:30] service: AFWall rules detected; settling 5s
[2026-03-08 04:01:35] service: block removed (AFWall rules confirmed after settle)
```

### Verify the block was installed and released

```sh
# While block is installed (before AFWall starts):
iptables -t raw -S | grep MOD_PRE_AFW
# Expected: -N MOD_PRE_AFW  and  -A OUTPUT -j MOD_PRE_AFW

# After block is released:
iptables -t raw -S | grep MOD_PRE_AFW
# Expected: no output (chain removed)

# Confirm AFWall chains are present after release:
iptables -S | grep '^-N afwall'
iptables -S OUTPUT | grep afwall
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
| `auto` (default) | Either | Module block is primary protection. fixLeak script (if functional) supplements. No conflict. |
| `prefer_module` | Either | Module block always installed. fixLeak is ignored. |
| `prefer_afwall` | Should be enabled | Module defers only if an AFWall-owned afwallstart script is found. On Android 16 Pixel, same as `auto`. |
| `off` | Must be reliable | Only use if you have confirmed working init.d support. |

**For Android 16 Pixel users**: use `INTEGRATION_MODE=auto`. Enable AFWall's
fixLeak as well for belt-and-suspenders, but rely on this module as the actual
protection. The two mechanisms do not conflict.

### Recommended AFWall+ settings alongside this module

| Setting | Recommendation | Reason |
|---|---|---|
| Firewall enabled on boot | Yes | Module waits for AFWall rules; if disabled, timeout fires after 120 s |
| Fix Startup Data Leak | Enable | Belt-and-suspenders; harmless on modern Android |
| IPv6 support | Enable | Module protects both; ensure AFWall covers IPv6 too |
| Startup Delay | 0 (or minimal) | Extra delay extends the pre-AFWall window; module protects it |
| Apply rules on boot | Yes | Required for module to detect AFWall and release the block |
| iptables binary | Auto | Module uses system iptables; AFWall may use built-in; no conflict |

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

## 6. Recovery

### Networking is still blocked after boot

This usually means AFWall+ is not installed, disabled, or failed to apply rules.

**Option A — Magisk app action button** (simplest):
1. Open Magisk -> Modules.
2. Tap the action button (lightning bolt) next to AFWall Boot AntiLeak.
3. The block is removed and diagnostics are printed.

**Option B — root shell** (immediate):

```sh
# Remove module block from raw table:
iptables  -t raw -D OUTPUT -j MOD_PRE_AFW    2>/dev/null
iptables  -t raw -F MOD_PRE_AFW              2>/dev/null
iptables  -t raw -X MOD_PRE_AFW              2>/dev/null
ip6tables -t raw -D OUTPUT -j MOD_PRE_AFW_V6 2>/dev/null
ip6tables -t raw -F MOD_PRE_AFW_V6           2>/dev/null
ip6tables -t raw -X MOD_PRE_AFW_V6           2>/dev/null

# Also try filter table (in case raw table fallback was used):
iptables  -t filter -D OUTPUT -j MOD_PRE_AFW    2>/dev/null
iptables  -t filter -F MOD_PRE_AFW              2>/dev/null
iptables  -t filter -X MOD_PRE_AFW              2>/dev/null
ip6tables -t filter -D OUTPUT -j MOD_PRE_AFW_V6 2>/dev/null
ip6tables -t filter -F MOD_PRE_AFW_V6           2>/dev/null
ip6tables -t filter -X MOD_PRE_AFW_V6           2>/dev/null
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

Note: Uninstall does **not** re-enable Wi-Fi or mobile data. Radio state is
managed by AFWall+, not by this module.

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
iptables  -t raw    -S | grep MOD_PRE_AFW
ip6tables -t raw    -S | grep MOD_PRE_AFW_V6
iptables  -t filter -S | grep MOD_PRE_AFW      # filter fallback
ip6tables -t filter -S | grep MOD_PRE_AFW_V6   # filter fallback
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
ls -la /data/adb/AFWall-Boot-AntiLeak/state/
cat /data/adb/AFWall-Boot-AntiLeak/state/ipv4_table
cat /data/adb/AFWall-Boot-AntiLeak/state/integration_mode
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

| Chain | Table | Protocol |
|---|---|---|
| `MOD_PRE_AFW` | raw (or filter fallback) | IPv4 |
| `MOD_PRE_AFW_V6` | raw (or filter fallback) | IPv6 |

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

1. Module chains (`MOD_PRE_AFW*`) live in the **raw table**. AFWall's chains
   (`afwall*`) live in the **filter table**. Different tables, no overlap.
2. Module block is installed in `post-fs-data`. AFWall doesn't touch iptables
   until FirewallService starts (requires Zygote + framework). No timing race.
3. Module block is removed **after** AFWall's OUTPUT jump is confirmed. AFWall's
   rules become the sole active protection from that moment.
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

### OUTPUT only (no INPUT blocking)

The module blocks outbound traffic (OUTPUT chain) — the primary leak vector.
It does not block inbound connections. For inbound blocking before AFWall
starts, consult AFWall+'s INPUT chain settings.

### AFWall fixLeak on modern Android

AFWall's fixLeak (init.d/su.d script) is non-functional on Android 8+ without
a special ROM. On Android 16 Pixel devices, enabling it in AFWall does nothing
harmful but provides no actual startup protection. This module is the correct
solution for startup leak prevention on modern Pixel devices.

### Radio toggles not primary protection

This module's `disable_radios()` / `restore_radios()` helpers exist for
belt-and-suspenders use but are NOT called during normal operation. Radio state
is not tracked by the module; only kernel-level iptables changes are tracked
and reversed on cleanup.

---

## Configuration Reference

Edit `config.sh` in the module directory, or place a persistent override at
`/data/adb/AFWall-Boot-AntiLeak/config.sh` (survives module updates):

| Variable | Default | Description |
|---|---|---|
| `INTEGRATION_MODE` | `auto` | `auto` / `prefer_module` / `prefer_afwall` / `off` |
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
    block_installed     # present while module block is active (contains '1')
    ipv4_table          # iptables table used for IPv4 block ('raw' or 'filter')
    ipv6_table          # ip6tables table used for IPv6 block ('raw' or 'filter')
    integration_mode    # integration mode chosen for this boot
```

---

## Fallback Table

| Failure | Action taken |
|---|---|
| `iptables` not found | Log critical error; IPv4 block not installed |
| `ip6tables` not found | Log warning; IPv6 unprotected; IPv4 still protected |
| Raw table unavailable | Fall back to filter table; logged as warning |
| Filter table also fails | Log critical warning; block not installed for that protocol |
| AFWall absent or never starts | Timeout (`TIMEOUT_SECS`) fires; block removed; networking restored |
| `svc` unavailable | Radio toggle helpers silently skip (not primary protection) |
| State files lost / corrupt | Removal tries both raw and filter tables defensively |
| `iptables -C` returns error | Rule is re-added (idempotent; no duplicate from chain-based check) |

---

## Test Matrix

| Scenario | Expected log / behaviour |
|---|---|
| Normal boot — AFWall starts normally | `install_block`, then `block removed (AFWall rules confirmed)` |
| AFWall not installed | Timeout fires; `timeout 120s reached; removing block (failsafe)` |
| AFWall delayed start (< timeout) | Block maintained; released when rules appear |
| AFWall delayed start (> timeout) | Timeout fires; networking restored; block logged as failsafe removal |
| IPv6 ip6tables unavailable | `install_block_v6: ip6tables not found`; IPv4 protected; IPv6 warning |
| Raw table unavailable | `raw table failed; falling back to filter table`; block in filter |
| Both raw and filter fail | `WARN: could not install block`; user alerted via log |
| Second reboot (idempotent check) | Clean block installed; no duplicate chains |
| Interrupted boot (crash/reboot mid-block) | Next boot's post-fs-data cleans up old chains before installing new ones |
| Manual recovery via action.sh | Block removed; diagnostics printed; log entry created |
| Module uninstall | Module chains removed from all tables; state/logs deleted; radios not changed |
| AFWall fixLeak enabled + module `auto` | Both active; no conflict; module releases after AFWall confirms rules |
| AFWall fixLeak enabled + module `prefer_afwall` | Android 16: same as auto (no afwallstart found); custom ROM with init.d: module defers |
| `INTEGRATION_MODE=off` | No block installed; post-fs-data logs skip; networking unprotected pre-AFWall |
| `DEBUG=1` | Extra `[DEBUG]` lines in boot.log for every iptables operation |
| FBE — first boot before /data decrypted | iptables block installed (kernel-level); log/state writes silently skipped |

---

## ChangeLog

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
│   └── common.sh              # Module runtime library (sourced by all boot scripts)
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
- `dist/AFWall-Boot-AntiLeak-v2.0.0.zip` — Magisk-installable module ZIP
- `dist/sha256sum.txt` — SHA256 checksum
- `dist/build-info.txt` — build metadata (version, git ref, date)

Install the produced zip via **Magisk app → Modules → Install from storage**.

Do **not** install in recovery; this module requires boot-mode install (the
installer framework rejects recovery installs and only performs uninstall in
that context).

### Validate a built ZIP

```sh
chmod +x tools/validate-zip.sh
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-v2.0.0.zip
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
| `module.prop` | Added `updateJson` field; corrected version prefix to `v2.0.0`. |
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

### Release workflow (`.github/workflows/release.yml`)

**Tag-driven release (recommended)**:
1. Push a version tag (e.g. `v2.0.0`) matching the value in `module.prop`.
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
3. **Specific version**: `https://github.com/cbkii/AFWall-Boot-AntiLeak/releases/download/v2.0.0/AFWall-Boot-AntiLeak.zip`

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
version=v2.1.0
versionCode=210
```

**`update.json`**:
```json
{
  "version": "v2.1.0",
  "versionCode": 210,
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
git tag v2.1.0
git push origin v2.1.0
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
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-v2.0.0.zip

# Inspect ZIP contents
unzip -l dist/AFWall-Boot-AntiLeak-v2.0.0.zip
```

### Inspect the built ZIP structure

```sh
unzip -l dist/AFWall-Boot-AntiLeak-v2.0.0.zip
```

Expected top-level entries: `META-INF/`, `common/`, `bin/`, `action.sh`,
`config.sh`, `customize.sh`, `module.prop`, `post-fs-data.sh`, `service.sh`,
`uninstall.sh`, `update.json`, `README.md`.

Files should **not** be nested under a parent directory such as
`AFWall-Boot-AntiLeak/META-INF/...` — that would prevent Magisk from
finding the installer files.

### Test installability indicator

After building, run:

```sh
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-v2.0.0.zip
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
