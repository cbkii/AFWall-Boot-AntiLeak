# AFWall Boot AntiLeak Fork — Advanced Documentation v2.5

---

## Table of contents

1. [Boot stage design](#1-boot-stage-design)
2. [Composite readiness model](#2-composite-readiness-model)
3. [Transport-aware handoff](#3-transport-aware-handoff)
4. [Timeout and unlock semantics](#4-timeout-and-unlock-semantics)
5. [Full config reference](#5-full-config-reference)
6. [Logging and state files](#6-logging-and-state-files)
7. [Troubleshooting](#7-troubleshooting)
8. [Migration from v2.4](#8-migration-from-v24)
9. [Installer input and keycheck](#9-installer-input-and-keycheck)

---

## 1. Boot stage design

### Stage A — `post-fs-data` (before framework)

Runs before any Android framework services start.

Actions:
- Load config.
- Install iptables hard block (OUTPUT, FORWARD, optionally INPUT) for both
  IPv4 and IPv6. Dual-layer blackout: installs OUTPUT block in both the raw
  table (pre-conntrack, primary) and the filter table (shadow/failsafe) for
  defence-in-depth. If the raw layer is disrupted externally, the filter layer
  continues blocking OUTPUT traffic until the raw layer is repaired.
- Quiesce any network interfaces already present in `/sys/class/net`.
- Persist blackout state: `${STATE_DIR}/blackout_active` and
  `${STATE_DIR}/radio_off_pending`.
- Write a dedicated current-boot timestamp marker (`${STATE_DIR}/boot_marker`)
  used by secondary evidence checks to identify AFWall file activity from this
  boot.
- Write early-phase interface list to state.

Framework radio commands (Wi-Fi off, mobile data off) are **deferred** to
Stage B. They are not valid in `post-fs-data` because the Wi-Fi and telephony
services are not running yet.

### Stage B — `service.sh` late phase (framework available)

Runs in a background subshell once Magisk's service phase completes.

Actions:
- **Startup integrity check**: verify that the dual-layer OUTPUT blackout
  (raw + filter) installed in Stage A is still intact for each IP family.
  If `block_installed=1` (written by Stage A) but any layer is missing or
  degraded, immediately repair it by re-installing both layers.  If repair
  fails, the family is still treated as blocked (fail-closed) so that the
  full handoff wait proceeds.
- Merge early-phase interface list with service-phase quiesce list.
- Wait for Android framework services (retry up to 5 times with 3s delay).
- Disable Wi-Fi via `cmd wifi set-wifi-enabled disabled`; fallback to `svc wifi disable`.
- Disable mobile data via `cmd phone data disable`; fallback to `svc data disable`.

Radio-off reassertion runs every `RADIO_REASSERT_INTERVAL` seconds (default 10s)
while waiting for AFWall+ readiness.

Blackout integrity reassertion runs every `BLACKOUT_REASSERT_INTERVAL` seconds
(default 5s, configurable) while the OUTPUT block is active and handoff is
incomplete.

### Stage C — AFWall+ takeover detection (composite readiness model)

The main poll loop (1s interval by default) waits for AFWall+ to take over
each IP family using a **composite readiness model**:

1. Capture a **coherent per-poll filter-table snapshot** for each family.
2. Derive all checks (presence, fingerprint, reachability) from that snapshot.
3. Track **full AFWall graph fingerprint stability** over time via timestamps.
4. Confirm takeover on the **fast path** (with corroboration) or **conservative
   path** (stability only) — no blocking settle sleep.

See [Section 2](#2-composite-readiness-model) for full details.

### Stage D — Transport readiness check

After the main AFWall chain is confirmed for at least one IP family, the
module checks transport-specific chain readiness using the same per-poll
snapshots.

See [Section 3](#3-transport-aware-handoff) for full details.

### Stage E — Block release and restore

The module-owned iptables blocks are removed **only when**:
- The corresponding IP family takeover is confirmed (via composite model), AND
- ALL required transports (Wi-Fi and mobile) are confirmed ready.

---

## 2. Composite readiness model

### Coherent per-poll snapshots

At the start of each 1-second poll iteration, the module captures one
consistent snapshot of the filter table for each IP family using
`iptables-save -t filter` (or `iptables -t filter -S` as fallback):

```
v4_snap = capture_filter_snapshot_v4()
v6_snap = capture_filter_snapshot_v6()
```

All subsequent checks in that iteration (graph presence, fingerprint
computation, transport reachability) read from these variables.  No separate
iptables calls are made for individual sub-checks.

This guarantees that presence, fingerprint, and reachability tests see the
same consistent iptables state within each poll.

### Full AFWall graph fingerprint

The main AFWall takeover fingerprint now covers the **entire AFWall rule
graph**, not just the main `afwall` chain rule count:

- All `-N afwall*` chain definitions (afwall, afwall-wifi, afwall-3g, etc.)
- All rules inside any `afwall*`-prefixed chain (`-A afwall* ...`)
- All jumps to any `afwall*` chain from any chain (`-j afwall*`)

The sorted set is checksummed with `cksum` (portable, available in Android
toybox).  Changes in descendant chains (e.g. afwall-wifi rule additions) are
fully visible in the fingerprint and reset the stability timer.

### Stability tracking (non-blocking)

The module tracks fingerprint stability using timestamps:

- `v4_last_fp` / `v6_last_fp`: last seen fingerprint value.
- `v4_fp_stable_since` / `v6_fp_stable_since`: timestamp when that value was
  last seen for the first time; reset whenever the fingerprint changes.

No blocking `sleep` is used inside the confirmation path.  The loop continues
running at 1s intervals, repairing blackout and reasserting radios throughout.

When the fingerprint drifts (AFWall is still populating rules), stability is
reset and the module waits again.

### Fast path

Confirms family takeover when **all** of the following are true:
1. AFWall main chain present in filter table with OUTPUT hook.
2. AFWall chain non-trivial (≥1 rule).
3. Full graph fingerprint stable for `FAST_STABLE_SECS` (default 2s).
   - Post-boot: `LIVENESS_SECS_POST_BOOT` (default 2s).
4. At least one **corroborating signal**:
   - AFWall process visible (`afwall_process_present`), **or**
   - Current-boot file evidence (AFWall data files modified after boot marker),
     **or**
   - `sys.boot_completed=1` + AFWall chain has ≥ `AFWALL_RULE_DENSITY_MIN` rules.

Log entry example:
```
service: v4 fast-path confirmed stable=2s corroboration=process fp=3412867341
service: v4 fast-path confirmed stable=2s corroboration=boot_complete_dense fp=...
```

### Conservative path

Confirms family takeover when **all** of the following are true:
1. AFWall main chain present with OUTPUT hook.
2. AFWall chain non-trivial.
3. Full graph fingerprint stable for `SLOW_STABLE_SECS` (default 6s).
   - Post-boot: `FALLBACK_SECS_POST_BOOT` (default 4s).
4. No corroboration required.

Log entry example:
```
service: v4 conservative-path confirmed stable=6s fp=... (corroboration absent)
```

### Drift and reset

If the fingerprint changes while the module is waiting, stability resets:
```
service: v4 graph drift old=3412867341 new=2981734256 reset
```

If the graph disappears entirely:
```
service: v4 AFWall graph gone/trivial — resetting stability
```

---

## 3. Transport-aware handoff

### AFWall chain names

| Chain         | Meaning                              |
|---------------|--------------------------------------|
| `afwall`      | Main chain — all traffic             |
| `afwall-wifi` | Wi-Fi specific rules + sub-chains    |
| `afwall-3g`   | Mobile data specific rules + sub-chains|

### Transport subtree fingerprints

For each transport, the module fingerprints the **entire subtree**, not just
the root chain rule count:

- Wi-Fi: all chains/rules/references with prefix `afwall-wifi`
- Mobile: all chains/rules/references with prefix `afwall-3g`

Descendant chains (e.g. `afwall-wifi-lan`, `afwall-3g-mms`) are included.

### Reachability requirement

A transport subtree is only considered "ready" if it is **reachable from the
active AFWall graph**.  This is verified by checking that at least one rule
inside any `afwall*` chain in the snapshot jumps to the transport prefix.

An isolated or stale transport chain that exists but is not referenced by the
live AFWall chain will **not** be accepted.

Log entries:
```
service: wifi subtree first seen fp=... reachable=1
service: wifi subtree exists but is unreachable from AFWall graph — not accepting
service: wifi subtree drift old=... new=... reset
service: wifi transport: subtree stable=3s fp=... — Wi-Fi ready
```

### Transport-absence fallback

If no chains or references with the transport prefix appear in any snapshot,
the module uses an absence-stability fallback:

- Track how long the transport prefix has been absent since the main family
  was confirmed.
- Once absence is stable for `TRANSPORT_ABSENCE_STABLE_SECS` (default 3s),
  or `TRANSPORT_WAIT_SECS_POST_BOOT` (default 5s) post-boot, accept
  main-chain-only readiness.

This replaces the old 30-second `TRANSPORT_WAIT_SECS` blunt fallback.

Log entry example:
```
service: wifi transport accepted via absence-stable fallback after 3s
  (no wifi-prefixed subtree detected in snapshot)
```

---

## 4. Timeout and unlock semantics

### Unlock-gated timeout (default: enabled)

When `TIMEOUT_UNLOCK_GATED=1` (default):
- The `TIMEOUT_SECS` countdown does NOT begin at boot.
- The countdown begins only after the device is positively detected as unlocked.
- Unlock detection uses multiple independent probes including boot-completion
  signals (`sys.boot_completed`, `init.svc.bootanim`) and keyguard state.
- Before unlock: the module polls every `UNLOCK_POLL_INTERVAL` seconds.

### Auto timeout unblocking (default: disabled)

`AUTO_TIMEOUT_UNBLOCK=0` (default) means the module NEVER automatically
unblocks connectivity on timeout, regardless of `TIMEOUT_POLICY`.

To enable timeout-based unblocking:
1. Set `AUTO_TIMEOUT_UNBLOCK=1`
2. Set `TIMEOUT_POLICY=unblock`
3. Accept that if AFWall+ is absent/broken, connectivity will be restored
   after `TIMEOUT_SECS` seconds following device unlock.

### Legacy `TIMEOUT_POLICY=unblock`

This option is retained for compatibility but is now subject to:
1. `AUTO_TIMEOUT_UNBLOCK=1` (required; default is 0)
2. Device must be unlocked (when `TIMEOUT_UNLOCK_GATED=1`)

Setting `TIMEOUT_POLICY=unblock` alone (without `AUTO_TIMEOUT_UNBLOCK=1`)
will log a warning and behave as `fail_closed`.

### Fail-closed behaviour

When `TIMEOUT_POLICY=fail_closed` (default) or when auto-unblocking is
disabled:
- On timeout: lower-layer state (Wi-Fi, mobile) is restored, but iptables
  blocks are retained.
- Use the Magisk action button to manually remove blocks.

---

## 5. Full config reference

All config keys and their defaults. Override at:
`/data/adb/AFWall-Boot-AntiLeak/config.sh`

### Integration

| Key                | Default | Description                                  |
|--------------------|---------|----------------------------------------------|
| `INTEGRATION_MODE` | `auto`  | `auto`/`prefer_module`/`prefer_afwall`/`off` |

### iptables blocks

| Key                    | Default | Description                            |
|------------------------|---------|----------------------------------------|
| `ENABLE_FORWARD_BLOCK` | `1`     | Block FORWARD chain (tethering)        |
| `ENABLE_INPUT_BLOCK`   | `0`     | Block INPUT chain (opt-in)             |

### Lower-layer suppression

| Key                          | Default  | Description                             |
|------------------------------|----------|-----------------------------------------|
| `LOWLEVEL_MODE`              | `safe`   | `off`/`safe`/`strict`                   |
| `LOWLEVEL_INTERFACE_QUIESCE` | `1`      | Bring non-loopback interfaces down      |
| `LOWLEVEL_USE_WIFI_SERVICE`  | `1`      | Disable Wi-Fi via service commands      |
| `LOWLEVEL_USE_PHONE_DATA_CMD`| `1`      | Disable mobile data via service commands|
| `LOWLEVEL_USE_BLUETOOTH_MANAGER` | `0`  | Disable Bluetooth (disabled by default) |
| `LOWLEVEL_USE_TETHER_STOP`   | `1`      | Stop active tethering sessions          |

### Timeout and unlock

| Key                    | Default       | Description                                      |
|------------------------|---------------|--------------------------------------------------|
| `TIMEOUT_SECS`         | `120`         | Max seconds to wait (after countdown begins)     |
| `TIMEOUT_POLICY`       | `fail_closed` | `fail_closed` = stay blocked; `unblock` = restore|
| `AUTO_TIMEOUT_UNBLOCK` | `0`           | Master gate; `1` required for auto-unblocking    |
| `TIMEOUT_UNLOCK_GATED` | `1`           | Countdown only starts after device unlock        |
| `UNLOCK_POLL_INTERVAL` | `5`           | Unlock check interval in seconds                 |

### Transport gating

| Key                              | Default | Description                                  |
|----------------------------------|---------|----------------------------------------------|
| `WIFI_AFWALL_GATE`               | `1`     | Gate Wi-Fi restore on afwall-wifi chain       |
| `MOBILE_AFWALL_GATE`             | `1`     | Gate mobile restore on afwall-3g chain        |
| `RADIO_REASSERT_INTERVAL`        | `10`    | Radio-off reassertion interval in seconds     |
| `BLACKOUT_REASSERT_INTERVAL`     | `5`     | iptables blackout integrity check/repair (s)  |

### Composite-readiness timing

| Key                             | Default | Description                                        |
|---------------------------------|---------|----------------------------------------------------|
| `POLL_INTERVAL_SECS`            | `1`     | Main loop poll interval (s); lower = faster detect |
| `FAST_STABLE_SECS`              | `2`     | Fast-path stability window (corroboration required)|
| `SLOW_STABLE_SECS`              | `6`     | Conservative-path stability window (no corroboration needed) |
| `TRANSPORT_ABSENCE_STABLE_SECS` | `3`     | Absence-stable fallback for transport chains (s)   |
| `SETTLE_SECS`                   | `5`     | Legacy: not used as blocking sleep; kept for compat|

### Boot-completion acceleration

| Key                          | Default | Description                                       |
|------------------------------|---------|---------------------------------------------------|
| `BOOT_COMPLETE_ACCELERATE`   | `1`     | Use post-boot shortened timing windows            |
| `AFWALL_RULE_DENSITY_MIN`    | `3`     | Min rules in afwall chain for boot-complete corroborator |
| `LIVENESS_SECS_POST_BOOT`    | `2`     | Fast-path stable window post-boot                 |
| `FALLBACK_SECS_POST_BOOT`    | `4`     | Conservative-path stable window post-boot         |
| `SETTLE_SECS_POST_BOOT`      | `1`     | Transport subtree settle window post-boot         |
| `TRANSPORT_WAIT_SECS_POST_BOOT`| `5`   | Transport absence fallback threshold post-boot    |

### Misc

| Key     | Default | Description              |
|---------|---------|--------------------------|
| `DEBUG` | `0`     | Verbose logging          |

---

## 6. Logging and state files

### Log

```
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Key log entries (v2.5+):
- `post-fs-data: hard block installed` — earliest block in place
- `post-fs-data: boot marker written` — reference timestamp for evidence checks
- `service: v4 graph first seen fp=...` — first non-trivial AFWall graph seen
- `service: v4 graph drift old=... new=... reset` — fingerprint changed; waiting
- `service: v4 fast-path confirmed stable=Xs corroboration=... fp=...` — fast release
- `service: v4 conservative-path confirmed stable=Xs fp=...` — conservative release
- `service: v4 AFWall graph gone/trivial — resetting stability` — graph disappeared
- `service: wifi subtree first seen fp=... reachable=1` — transport chain found
- `service: wifi subtree drift old=... new=... reset` — transport still settling
- `service: wifi subtree exists but is unreachable from AFWall graph` — not accepted
- `service: wifi transport: subtree stable=Xs fp=... — Wi-Fi ready` — transport done
- `service: wifi transport accepted via absence-stable fallback after Xs` — no wifi chain
- `service: v4 release preconditions satisfied ...` — block about to be removed
- `service: handoff complete` — module handed off to AFWall+
- `service: TIMEOUT v4: block RETAINED` — timeout, blocks kept (fail-closed)

### State files

```
/data/adb/AFWall-Boot-AntiLeak/state/
  blackout_active       — blackout is in progress (deleted after handoff)
  radio_off_pending     — radios must remain off (deleted after handoff)
  block_installed       — iptables block is active (1 = yes)
  boot_marker           — current-boot timestamp marker (used for evidence checks)
  integration_mode      — chosen integration mode
  ipv4_out_table        — primary table for IPv4 OUTPUT block
  ipv6_out_table        — primary table for IPv6 OUTPUT block
  ipv4_fwd_active       — IPv4 FORWARD block active (1 = yes)
  ipv6_fwd_active       — IPv6 FORWARD block active (1 = yes)
  ipv4_in_active        — IPv4 INPUT block active (1 = yes, opt-in)
  ipv6_in_active        — IPv6 INPUT block active (1 = yes, opt-in)
  ll/
    mode                — lower-layer mode (safe/strict)
    wifi_was_enabled    — module disabled Wi-Fi (present = yes)
    data_was_enabled    — module disabled mobile data (present = yes)
    bt_was_enabled      — module disabled Bluetooth (present = yes)
    ifaces_down         — interfaces brought down by module (one per line)
    tether_was_active   — tethering was stopped (present = yes)
```

---

## 7. Troubleshooting

### Device stuck offline after boot

**Step 1 — Check the log:**
```sh
cat /data/adb/AFWall-Boot-AntiLeak/logs/boot.log | tail -50
```
Look for the last status message. Key patterns:
- `v4 graph first seen fp=...` but no `confirmed` line → fingerprint still drifting
- `v4 AFWall graph gone/trivial` → AFWall chain disappeared or has no rules
- `wifi subtree exists but is unreachable` → AFWall chain not referencing afwall-wifi
- No `graph first seen` at all → AFWall has not applied any rules

**Step 2 — Run manual recovery:**
```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

**Step 3 — Check AFWall+ configuration:**
- Ensure "Firewall enabled on boot" is checked in AFWall+.
- Ensure you have active rules applied at least once.
- Disable "Fix Startup Data Leak" in AFWall+.

**Step 4 — Check iptables blocks:**
```sh
iptables -t raw -S | grep MOD_PRE_AFW
iptables -t filter -S | grep MOD_PRE_AFW
ip6tables -t raw -S | grep MOD_PRE_AFW
ip6tables -t filter -S | grep MOD_PRE_AFW
```

**Step 5 — Check AFWall+ chain:**
```sh
iptables-save -t filter | grep afwall
```
If `afwall` is missing, AFWall+ has not applied rules. Check AFWall+ settings.
If `afwall-wifi` is present but not referenced by `afwall`, that is an unreachable
subtree (v2.5 will not accept it; check AFWall+ transport rule configuration).

### Wi-Fi not coming back after AFWall+ loads

1. Check log for `wifi subtree` messages.
2. Verify `afwall-wifi` is reachable: `iptables -t filter -S | grep "afwall.*afwall-wifi"`
3. If AFWall+ doesn't use `afwall-wifi`, set `WIFI_AFWALL_GATE=0` in config.
4. With `WIFI_AFWALL_GATE=1`, absence-stable fallback fires after
   `TRANSPORT_ABSENCE_STABLE_SECS` (default 3s) once the main graph is confirmed.

### Mobile data not coming back

Same as Wi-Fi but for `MOBILE_AFWALL_GATE` and `afwall-3g`.

### Release is slower than expected

1. Check if fingerprint is drifting repeatedly (`v4 graph drift` in log).
2. Enable `DEBUG=1` for per-poll stability progress.
3. Verify boot-completion acceleration: `boot_accel=1` in startup log line.
4. If corroboration is unavailable (no process visibility, no file evidence,
   no boot marker), only the conservative path is available.  Check that
   `/data/adb/AFWall-Boot-AntiLeak/state/boot_marker` exists.

### Timeout fires but device stays offline

This is expected with the default `AUTO_TIMEOUT_UNBLOCK=0`. To allow
auto-unblocking on timeout:
```sh
# In /data/adb/AFWall-Boot-AntiLeak/config.sh:
AUTO_TIMEOUT_UNBLOCK=1
TIMEOUT_POLICY=unblock
```

---

## 8. Migration from v2.4

### New in v2.5

| Feature                      | v2.4                             | v2.5                                   |
|------------------------------|----------------------------------|----------------------------------------|
| Graph fingerprint            | Rule count + chain count (weak)  | Full graph cksum (all afwall* content) |
| Transport fingerprint        | Root-chain rule count only       | Full subtree cksum (incl. descendants) |
| Transport reachability check | Not present                      | Required: subtree must be referenced   |
| Settle mechanism             | Blocking `sleep SETTLE_SECS`     | Non-blocking stable-since timestamps   |
| Poll interval                | 2s fixed                         | 1s (configurable `POLL_INTERVAL_SECS`) |
| Transport absence fallback   | Fixed 30s (`TRANSPORT_WAIT_SECS`)| Absence-stable 3s (`TRANSPORT_ABSENCE_STABLE_SECS`) |
| Secondary evidence           | `/data/data/<pkg>` only          | CE + DE dirs; shared_prefs, databases  |
| Boot marker                  | Reuses ipv4_out_table timestamp  | Dedicated `boot_marker` file           |
| Per-poll snapshots           | Each helper calls iptables       | One coherent snapshot per family/poll  |

### Breaking changes

None. All v2.4 config keys continue to work. New keys have safe defaults.

### New config keys (all have safe defaults)

| Key                             | Default | Description                              |
|---------------------------------|---------|------------------------------------------|
| `POLL_INTERVAL_SECS`            | `1`     | Poll loop interval                       |
| `FAST_STABLE_SECS`              | `2`     | Fast-path stability window               |
| `SLOW_STABLE_SECS`              | `6`     | Conservative-path stability window       |
| `TRANSPORT_ABSENCE_STABLE_SECS` | `3`     | Transport absence stable window          |

### Removed internal state

The following internal tracking variables from v2.4 are no longer used:
`v4_takeover_ts`, `v4_sig`, `v4_alive_ts`, `v4_bc_ts`, `v4_fallback_ts`,
`v6_takeover_ts`, `v6_sig`, `v6_alive_ts`, `v6_bc_ts`, `v6_fallback_ts`,
`wifi_check_ts`, `wifi_sig`, `wifi_chain_seen`, `mobile_check_ts`,
`mobile_sig`, `mobile_chain_seen`.

These are replaced by the stable-since fingerprint model:
`v4_last_fp`, `v4_fp_stable_since`, `v6_last_fp`, `v6_fp_stable_since`,
`wifi_last_fp`, `wifi_fp_stable_since`, `wifi_absent_since`,
`mobile_last_fp`, `mobile_fp_stable_since`, `mobile_absent_since`.

---

## 9. Installer input and keycheck

### Volume key input priority

1. **Raw getevent** — primary method on modern Pixels (Android 7+).
   Uses `/system/bin/getevent -lq` with a timeout probe.
   Exit code 0 or 124 (timeout-killed) both indicate getevent is available.
2. **keycheck binary** — fallback for unusual recovery environments.
   Architecture-appropriate binary from `bin/keycheck/`.
3. **Non-interactive** — if neither method works:
   a. Read `${MODULE_DATA}/installer.cfg` for pre-seeded values.
   b. Preserve existing `${MODULE_DATA}/config.sh` on upgrades.
   c. Use standard safe defaults (fresh install).

### keycheck binary details

Located at `bin/keycheck/keycheck-arm64` (arm64, for Pixel 9a and all modern
Android devices).

The binary opens all `/dev/input/event*` devices and waits 10 seconds for a
`EV_KEY` DOWN event. Returns 41 (VOL+) or 42 (VOL-). Statically linked,
no runtime dependencies.

Source: `tools/keycheck.c` in the repository.

### Pre-seeded installer config

Place a file at `/data/adb/AFWall-Boot-AntiLeak/installer.cfg` before flashing
to skip interactive selection. Example:

```sh
IC_PROFILE=standard
# or IC_PROFILE=strict / minimal / custom
# Individual overrides (optional):
AUTO_TIMEOUT_UNBLOCK=0
TIMEOUT_UNLOCK_GATED=1
WIFI_AFWALL_GATE=1
MOBILE_AFWALL_GATE=1
```


---

## Table of contents

1. [Boot stage design](#1-boot-stage-design)
2. [Transport-aware handoff](#2-transport-aware-handoff)
3. [Timeout and unlock semantics](#3-timeout-and-unlock-semantics)
4. [Full config reference](#4-full-config-reference)
5. [Logging and state files](#5-logging-and-state-files)
6. [Troubleshooting](#6-troubleshooting)
7. [Migration from v2.2.2](#7-migration-from-v222)
8. [Installer input and keycheck](#8-installer-input-and-keycheck)

---

## 1. Boot stage design

### Stage A — `post-fs-data` (before framework)

Runs before any Android framework services start.

Actions:
- Load config.
- Install iptables hard block (OUTPUT, FORWARD, optionally INPUT) for both
  IPv4 and IPv6. Dual-layer blackout: installs OUTPUT block in both the raw
  table (pre-conntrack, primary) and the filter table (shadow/failsafe) for
  defence-in-depth. If the raw layer is disrupted externally, the filter layer
  continues blocking OUTPUT traffic until the raw layer is repaired.
- Quiesce any network interfaces already present in `/sys/class/net`.
- Persist blackout state: `${STATE_DIR}/blackout_active` and
  `${STATE_DIR}/radio_off_pending`.
- Write early-phase interface list to state.

Framework radio commands (Wi-Fi off, mobile data off) are **deferred** to
Stage B. They are not valid in `post-fs-data` because the Wi-Fi and telephony
services are not running yet.

### Stage B — `service.sh` late phase (framework available)

Runs in a background subshell once Magisk's service phase completes.

Actions:
- **Startup integrity check**: verify that the dual-layer OUTPUT blackout
  (raw + filter) installed in Stage A is still intact for each IP family.
  If `block_installed=1` (written by Stage A) but any layer is missing or
  degraded, immediately repair it by re-installing both layers.  If repair
  fails, the family is still treated as blocked (fail-closed) so that the
  full handoff wait proceeds.
- Merge early-phase interface list with service-phase quiesce list.
- Wait for Android framework services (retry up to 5 times with 3s delay).
- Disable Wi-Fi via `cmd wifi set-wifi-enabled disabled`; fallback to `svc wifi disable`.
  - Verify off-state using: `settings get global wifi_on`, `cmd wifi status`,
    and wlan interface operstate.
  - Reinforce by bringing `wlan*`/`swlan*` interfaces down.
- Disable mobile data via `cmd phone data disable`; fallback to `svc data disable`.
  - Verify off-state using: `settings get global mobile_data` and absence of
    default routes via `rmnet*`/`ccmni*`/`wwan*` interfaces.
  - Reinforce by bringing cellular data interfaces down.

Radio-off reassertion runs every `RADIO_REASSERT_INTERVAL` seconds (default 10s)
while waiting for AFWall+ readiness.

Blackout integrity reassertion runs every `BLACKOUT_REASSERT_INTERVAL` seconds
(default 5s, configurable) while the OUTPUT block is active and handoff is
incomplete.  For each family, the module checks that the chain exists, the
DROP rule is present, and the OUTPUT jump exists in both the raw and filter
tables.  If any layer is missing, it is immediately repaired.

### Stage C — AFWall+ takeover detection

The main poll loop waits for AFWall+ to take over each IP family.

Per-family handoff (v4 and v6 tracked independently):

**Preferred path** (AFWall+ process visible):
1. AFWall main chain present in filter table with OUTPUT hook.
2. Chain contains at least one rule (non-trivial).
3. AFWall process visible continuously for `LIVENESS_SECS` (default 6s).
4. Rule-graph signature stable throughout.
5. Final settle: `SETTLE_SECS` (default 5s) re-check.
6. Mark family as takeover confirmed.

**Fallback path** (no process visibility):
1. AFWall main chain present, non-trivial.
2. Signature stable for `FALLBACK_SECS` (default 12s).
3. Optional: secondary evidence (AFWall data files newer than state file).
4. Final settle: `SETTLE_SECS` re-check.
5. Mark family as takeover confirmed.

### Stage D — Transport readiness check

After the main AFWall chain is confirmed for at least one IP family, the
module checks transport-specific chain readiness:

**Wi-Fi transport** (if `WIFI_AFWALL_GATE=1`):
- Check for `afwall-wifi` chain in filter table (v4 and v6).
- If present: require non-trivial rules + signature stable for `SETTLE_SECS`.
- If not present after `30s` of main chain readiness: fall back to accepting
  main-chain readiness (AFWall not using transport-specific chains).
- When ready: call `lowlevel_restore_wifi_if_allowed`.

**Mobile data transport** (if `MOBILE_AFWALL_GATE=1`):
- Same as Wi-Fi but checks `afwall-3g` chain.
- When ready: call `lowlevel_restore_mobile_data_if_allowed`.

### Stage E — Block release and restore

The module-owned iptables blocks are removed **only when**:
- The corresponding IP family takeover is confirmed, AND
- ALL required transports (Wi-Fi and mobile) are confirmed ready.

This means: if Wi-Fi is not yet ready, the IPv4 iptables block is not
removed even if the IPv4 family takeover would otherwise be complete.

After all blocks are removed:
- Remaining lower-layer state is restored (interfaces brought up, bluetooth,
  tethering note).
- Blackout state files are cleared.
- AFWall+ is now the sole active protection.

---

## 2. Transport-aware handoff

### AFWall chain names

| Chain         | Meaning                           |
|---------------|-----------------------------------|
| `afwall`      | Main chain — all traffic          |
| `afwall-wifi` | Wi-Fi specific rules              |
| `afwall-3g`   | Mobile data specific rules        |

AFWall+ creates `afwall-wifi` and `afwall-3g` when the user has configured
per-transport rules. If these chains are absent, the module falls back to
accepting main-chain readiness after a wait period.

### Transport readiness proof requirements

Wi-Fi is considered ready only when ALL of the following are true:
1. AFWall main chain is confirmed in filter OUTPUT.
2. `afwall-wifi` chain exists with at least one rule.
3. Rule count for `afwall-wifi` is stable over `SETTLE_SECS`.

Mobile data is considered ready only when ALL of the following are true:
1. AFWall main chain is confirmed in filter OUTPUT.
2. `afwall-3g` chain exists with at least one rule.
3. Rule count for `afwall-3g` is stable over `SETTLE_SECS`.

Presence of the AFWall process alone is NOT sufficient proof. Existence of
the main `afwall` chain alone is NOT sufficient proof.

---

## 3. Timeout and unlock semantics

### Unlock-gated timeout (default: enabled)

When `TIMEOUT_UNLOCK_GATED=1` (default):
- The `TIMEOUT_SECS` countdown does NOT begin at boot.
- The countdown begins only after the device is positively detected as unlocked.
- Unlock detection uses two independent probes (keyguard state + screen awake).
  If either probe fails or is ambiguous, the device is treated as still locked.
- Before unlock: the module polls every `UNLOCK_POLL_INTERVAL` seconds.

### Auto timeout unblocking (default: disabled)

`AUTO_TIMEOUT_UNBLOCK=0` (default) means the module NEVER automatically
unblocks connectivity on timeout, regardless of `TIMEOUT_POLICY`.

To enable timeout-based unblocking:
1. Set `AUTO_TIMEOUT_UNBLOCK=1`
2. Set `TIMEOUT_POLICY=unblock`
3. Accept that if AFWall+ is absent/broken, connectivity will be restored
   after `TIMEOUT_SECS` seconds following device unlock.

### Legacy `TIMEOUT_POLICY=unblock`

This option is retained for compatibility but is now subject to:
1. `AUTO_TIMEOUT_UNBLOCK=1` (required; default is 0)
2. Device must be unlocked (when `TIMEOUT_UNLOCK_GATED=1`)

Setting `TIMEOUT_POLICY=unblock` alone (without `AUTO_TIMEOUT_UNBLOCK=1`)
will log a warning and behave as `fail_closed`.

### Fail-closed behaviour

When `TIMEOUT_POLICY=fail_closed` (default) or when auto-unblocking is
disabled:
- On timeout: lower-layer state (Wi-Fi, mobile) is restored, but iptables
  blocks are retained.
- Use the Magisk action button to manually remove blocks.

---

## 4. Full config reference

All config keys and their defaults. Override at:
`/data/adb/AFWall-Boot-AntiLeak/config.sh`

### Integration

| Key                | Default | Description                                  |
|--------------------|---------|----------------------------------------------|
| `INTEGRATION_MODE` | `auto`  | `auto`/`prefer_module`/`prefer_afwall`/`off` |

### iptables blocks

| Key                    | Default | Description                            |
|------------------------|---------|----------------------------------------|
| `ENABLE_FORWARD_BLOCK` | `1`     | Block FORWARD chain (tethering)        |
| `ENABLE_INPUT_BLOCK`   | `0`     | Block INPUT chain (opt-in)             |

### Lower-layer suppression

| Key                          | Default  | Description                             |
|------------------------------|----------|-----------------------------------------|
| `LOWLEVEL_MODE`              | `safe`   | `off`/`safe`/`strict`                   |
| `LOWLEVEL_INTERFACE_QUIESCE` | `1`      | Bring non-loopback interfaces down      |
| `LOWLEVEL_USE_WIFI_SERVICE`  | `1`      | Disable Wi-Fi via service commands      |
| `LOWLEVEL_USE_PHONE_DATA_CMD`| `1`      | Disable mobile data via service commands|
| `LOWLEVEL_USE_BLUETOOTH_MANAGER` | `0`  | Disable Bluetooth (disabled by default) |
| `LOWLEVEL_USE_TETHER_STOP`   | `1`      | Stop active tethering sessions          |

### Timeout and unlock

| Key                    | Default       | Description                                      |
|------------------------|---------------|--------------------------------------------------|
| `TIMEOUT_SECS`         | `120`         | Max seconds to wait (after countdown begins)     |
| `TIMEOUT_POLICY`       | `fail_closed` | `fail_closed` = stay blocked; `unblock` = restore|
| `AUTO_TIMEOUT_UNBLOCK` | `0`           | Master gate; `1` required for auto-unblocking    |
| `TIMEOUT_UNLOCK_GATED` | `1`           | Countdown only starts after device unlock        |
| `UNLOCK_POLL_INTERVAL` | `5`           | Unlock check interval in seconds                 |

### Transport gating

| Key                     | Default | Description                                  |
|-------------------------|---------|----------------------------------------------|
| `WIFI_AFWALL_GATE`      | `1`     | Gate Wi-Fi restore on afwall-wifi chain       |
| `MOBILE_AFWALL_GATE`    | `1`     | Gate mobile restore on afwall-3g chain        |
| `RADIO_REASSERT_INTERVAL` | `10`  | Radio-off reassertion interval in seconds     |
| `BLACKOUT_REASSERT_INTERVAL` | `5` | iptables blackout integrity check/repair interval (s) |

### Handoff timing

| Key           | Default | Description                                      |
|---------------|---------|--------------------------------------------------|
| `SETTLE_SECS` | `5`     | Settle delay before releasing block              |
| `LIVENESS_SECS` | `6`   | AFWall process visibility window for pref. path  |
| `FALLBACK_SECS` | `12`  | Stability window for fallback path               |

### Misc

| Key     | Default | Description              |
|---------|---------|--------------------------|
| `DEBUG` | `0`     | Verbose logging          |

---

## 5. Logging and state files

### Log

```
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Key log entries:
- `post-fs-data: hard block installed` — earliest block in place
- `lowlevel_early:` — early interface quiesce results
- `lowlevel_late:` — late radio-off attempts
- `lowlevel: Wi-Fi off-state confirmed` — verified off-state
- `service: device unlock detected` — unlock gate opened
- `service: timeout countdown started` — countdown began
- `service: v4 takeover confirmed` — AFWall v4 takeover proven
- `service: wifi transport: afwall-wifi chain stable` — Wi-Fi ready
- `service: mobile transport: afwall-3g chain stable` — mobile ready
- `service: v4 block removed` — v4 iptables block gone
- `service: handoff complete` — module handed off to AFWall+
- `service: TIMEOUT v4: block RETAINED` — timeout, blocks kept
- `service: TIMEOUT: unblocking per AUTO_TIMEOUT_UNBLOCK=1` — auto-unblock

### State files

```
/data/adb/AFWall-Boot-AntiLeak/state/
  blackout_active       — blackout is in progress (deleted after handoff)
  radio_off_pending     — radios must remain off (deleted after handoff)
  block_installed       — iptables block is active (1 = yes)
  integration_mode      — chosen integration mode
  ipv4_out_table        — primary table for IPv4 OUTPUT block (raw or filter);
                          block is also installed in the other table as shadow
  ipv6_out_table        — primary table for IPv6 OUTPUT block (raw or filter);
                          block is also installed in the other table as shadow
  ipv4_fwd_active       — IPv4 FORWARD block active (1 = yes)
  ipv6_fwd_active       — IPv6 FORWARD block active (1 = yes)
  ipv4_in_active        — IPv4 INPUT block active (1 = yes, opt-in)
  ipv6_in_active        — IPv6 INPUT block active (1 = yes, opt-in)
  ll/
    mode                — lower-layer mode (safe/strict)
    wifi_was_enabled    — module disabled Wi-Fi (present = yes)
    data_was_enabled    — module disabled mobile data (present = yes)
    bt_was_enabled      — module disabled Bluetooth (present = yes)
    ifaces_down         — interfaces brought down by module (one per line)
    tether_was_active   — tethering was stopped (present = yes)
```

---

## 6. Troubleshooting

### Device stuck offline after boot

**Step 1 — Check the log:**
```sh
cat /data/adb/AFWall-Boot-AntiLeak/logs/boot.log | tail -50
```
Look for the last status message to understand what the module is waiting for.

**Step 2 — Run manual recovery:**
```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```
Or use the Magisk app → Modules → AFWall Boot AntiLeak → Action.

**Step 3 — Check AFWall+ configuration:**
- Ensure "Firewall enabled on boot" is checked in AFWall+.
- Ensure you have active rules applied at least once.
- Disable "Fix Startup Data Leak" in AFWall+.

**Step 4 — Check iptables blocks:**
```sh
iptables -t raw -S | grep MOD_PRE_AFW
iptables -t filter -S | grep MOD_PRE_AFW
ip6tables -t raw -S | grep MOD_PRE_AFW
ip6tables -t filter -S | grep MOD_PRE_AFW
```
The module installs a dual-layer blackout (raw + filter) for defence-in-depth.
You should see `MOD_PRE_AFW` chains in both `raw` and `filter` tables for each
family while the blackout is active.  If blocks are present, the module is
still waiting for AFWall+.

**Step 5 — Check AFWall+ chain:**
```sh
iptables -t filter -S afwall | head -5
iptables -t filter -S afwall-wifi | head -5
iptables -t filter -S afwall-3g | head -5
```
If `afwall` is missing, AFWall+ has not applied rules. Check AFWall+ settings.

### Wi-Fi not coming back after AFWall+ loads

1. Check `WIFI_AFWALL_GATE`: if `1`, the module needs `afwall-wifi` chain.
2. Check log for `wifi transport` messages.
3. If AFWall+ doesn't use `afwall-wifi`, set `WIFI_AFWALL_GATE=0` in config.

### Mobile data not coming back

Same as Wi-Fi but for `MOBILE_AFWALL_GATE` and `afwall-3g`.

### Timeout fires but device stays offline

This is expected with the default `AUTO_TIMEOUT_UNBLOCK=0`. To allow
auto-unblocking on timeout:
```sh
# In /data/adb/AFWall-Boot-AntiLeak/config.sh:
AUTO_TIMEOUT_UNBLOCK=1
TIMEOUT_POLICY=unblock
```

---

## 7. Migration from v2.2.2

### Breaking changes

| Setting              | v2.2.2 default | v2.2.22 default | Action needed                      |
|----------------------|----------------|------------------|------------------------------------|
| `TIMEOUT_POLICY`     | `unblock`      | `fail_closed`    | If you want auto-unblock on timeout, set `AUTO_TIMEOUT_UNBLOCK=1` |
| Auto timeout unblock | always on      | off by default   | Set `AUTO_TIMEOUT_UNBLOCK=1` to restore old behaviour |
| Transport gating     | not present    | enabled by default | AFWall+ needs `afwall-wifi`/`afwall-3g` chains, or set gates to 0 |

### Preserved behaviours

- All existing config keys are recognised.
- Upgrade preserves your existing `/data/adb/AFWall-Boot-AntiLeak/config.sh`.
- The iptables chain names are unchanged.
- Lower-layer suppression options are unchanged.
- Per-family (v4/v6) handoff logic is preserved and extended.

### Recommended migration path

1. Install v2.2.22 over v2.2.2.
2. Review the new defaults; test on reboot.
3. If device gets stuck: run `action.sh` for recovery.
4. If AFWall+ lacks transport chains: set `WIFI_AFWALL_GATE=0 MOBILE_AFWALL_GATE=0`.
5. If you want the old auto-unblock on timeout:
   ```
   AUTO_TIMEOUT_UNBLOCK=1
   TIMEOUT_POLICY=unblock
   ```

---

## 8. Installer input and keycheck

### Volume key input priority

1. **Raw getevent** — primary method on modern Pixels (Android 7+).
   Uses `/system/bin/getevent -lq` with a timeout probe.
   Exit code 0 or 124 (timeout-killed) both indicate getevent is available.
2. **keycheck binary** — fallback for unusual recovery environments.
   Architecture-appropriate binary from `bin/keycheck/`.
3. **Non-interactive** — if neither method works:
   a. Read `${MODULE_DATA}/installer.cfg` for pre-seeded values.
   b. Preserve existing `${MODULE_DATA}/config.sh` on upgrades.
   c. Use standard safe defaults (fresh install).

### keycheck binary details

Located at `bin/keycheck/keycheck-arm64` (arm64, for Pixel 9a and all modern
Android devices).

The binary opens all `/dev/input/event*` devices and waits 10 seconds for a
`EV_KEY` DOWN event. Returns 41 (VOL+) or 42 (VOL-). Statically linked,
no runtime dependencies.

Source: `tools/keycheck.c` in the repository.

### Pre-seeded installer config

Place a file at `/data/adb/AFWall-Boot-AntiLeak/installer.cfg` before flashing
to skip interactive selection. Example:

```sh
IC_PROFILE=standard
# or IC_PROFILE=strict / minimal / custom
# Individual overrides (optional):
AUTO_TIMEOUT_UNBLOCK=0
TIMEOUT_UNLOCK_GATED=1
WIFI_AFWALL_GATE=1
MOBILE_AFWALL_GATE=1
```
