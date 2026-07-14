# AFWall Boot AntiLeak — Advanced reference

This document explains the module's internal boot flow, AFWall+ handoff checks, watchdog behaviour, diagnostics, and recovery paths.

For installation, profiles, configuration file precedence, and the complete user-facing key table, see [README.md](README.md#configuration).

## In this document

- [Boot flow](#boot-flow)
- [AFWall readiness and handoff](#afwall-readiness-and-handoff)
- [Timeout, watchdog, and unlock behaviour](#timeout-watchdog-and-unlock-behaviour)
- [Advanced configuration behaviour](#advanced-configuration-behaviour)
- [Logs, state, and manual recovery](#logs-state-and-manual-recovery)
- [Troubleshooting](#troubleshooting)
- [Installer and reconfiguration](#installer-and-reconfiguration)

## Boot flow

The module uses a staged firewall handoff:

1. install a kernel-level network block as early as possible;
2. keep that block healthy while Android starts;
3. inspect the live AFWall+ firewall rules;
4. prove that the final AFWall+ rules are complete and stable;
5. release IPv4 and IPv6 independently;
6. restore only lower-level network state changed by the module.

The temporary firewall block is the main protection. Wi-Fi, mobile data, and other framework controls are optional secondary protection.

### Stage A — `post-fs-data.sh`

This script runs before the Android framework is fully available.

It:

- clears stale per-boot override markers;
- writes a new boot marker;
- installs module-owned OUTPUT protection;
- optionally installs FORWARD and INPUT protection;
- records which layers are active.

This stage closes the earliest boot leak window.

### Stage B — early `service.sh`

The service stage:

- records its PID and boot ownership;
- verifies that the early firewall block is still intact;
- repairs damaged module-owned rules when required;
- starts AFWall+ graph inspection immediately;
- records boot, unlock, transport, and VPN state for diagnostics;
- applies optional lower-level radio or service suppression.

The service does not use radio toggles as proof of protection.

### Stage C — AFWall+ takeover detection

The module checks each IP family separately.

Important behaviour:

- AFWall+ process presence starts a conservative timing epoch but does not prove readiness;
- AFWall+ startup preferences are read before delayed-generation checks can complete;
- the configured AFWall+ startup delay is respected;
- each accepted snapshot requires two byte-identical filter-table reads;
- only AFWall+ chains reachable from the live `OUTPUT -> afwall` hook count;
- rule order is included in the graph fingerprint;
- stability is tracked with timestamps rather than blocking sleeps;
- actual graph changes reset the stability timer;
- blackout integrity repair runs on graph transitions, not as an extra constant scanner.

### Stage D — family release

When a family passes final proof, optional filter-table FORWARD and INPUT layers are removed first. The independent raw OUTPUT layer is removed last.

This preserves the strongest device-originated traffic barrier until the final release step.

IPv4 and IPv6 are released independently.

### Stage E — lower-level restoration

Transport and radio restoration are separate from firewall ownership proof.

This distinction is intentional:

- family release asks whether AFWall+ controls the IP family;
- transport restoration asks whether Wi-Fi, mobile data, tethering, or VPN state can be restored safely.

## AFWall readiness and handoff

### Generation gate

A family cannot hand off until:

1. the AFWall+ process epoch has been observed;
2. AFWall+ startup preferences have been parsed;
3. any configured delayed-start deadline and grace period have passed;
4. two complete filter-table snapshots are byte-identical;
5. the rooted AFWall+ graph is present, closed, and non-trivial;
6. the order-sensitive fingerprint remains unchanged for `SLOW_STABLE_SECS`.

`FAST_STABLE_SECS` remains for compatibility but does not create a shorter process-, file-, or density-based release path.

### Coherent snapshots

The module uses locked `iptables -t filter -S` and `ip6tables -t filter -S` reads.

Two full reads must match exactly before the snapshot is accepted. If they differ, AFWall+ is still changing the table and the poll is rejected.

Typical log lines:

```text
service: snapshot backend v4=iptables-S
service: snapshot backend v6=ip6tables-S
service: barrier snapshots differed
```

### Rooted graph fingerprint

The release fingerprint includes:

- the live OUTPUT jump into `afwall`;
- reachable AFWall+ chain definitions;
- rules inside reachable chains;
- jumps between reachable chains;
- the original rule order.

Unreachable or orphaned `afwall*` chains do not affect release readiness.

### Drift handling

When the rooted fingerprint changes:

- the stability timer resets;
- the module immediately checks its own active block;
- missing or damaged module-owned protection is repaired;
- no extra drift-specific repair command runs while the fingerprint remains unchanged.

Typical log lines:

```text
service: v4 graph drift old=... new=... reset
service: v4 AFWall graph gone/trivial — resetting stability
```

### IPv6 ownership and held state

The module reads AFWall+ `enableIPv6` and `controlIPv6` preferences.

AFWall+ is accepted as the IPv6 owner only when IPv6 is enabled and controlled.

If IPv6 is explicitly disabled or not controlled:

- IPv6 enters a terminal held state;
- the service stops waiting for a v6 AFWall+ graph;
- module-owned IPv6 protection remains installed;
- IPv4 may still complete normally;
- manual recovery remains available through the Magisk Action button.

Unreadable preference state does not allow IPv6 release. The module retries and stays fail-closed.

For AFWall+ versions without a separate `controlIPv6` key, an absent key follows `enableIPv6`. An explicit false value always keeps IPv6 held.

### Transport-aware restore

The service may inspect these AFWall+ subtrees:

| Chain | Purpose |
|---|---|
| `afwall` | Main AFWall+ chain |
| `afwall-wifi` | Wi-Fi transport subtree |
| `afwall-3g` | Mobile-data transport subtree |

A transport subtree counts only when it is reachable from the active AFWall+ graph.

If a subtree is absent or unreachable, the module waits for that state to remain stable before accepting the fallback. This prevents stale orphan chains from blocking restoration forever.

## Timeout, watchdog, and unlock behaviour

The service has two absolute watchdogs:

- `WATCHDOG_SERVICE_SECS`, measured from service-loop start;
- `WATCHDOG_BOOT_COMPLETED_SECS`, measured from the first `sys.boot_completed=1`.

With `WATCHDOG_POLICY=block`, unresolved module protection stays active and diagnostics are logged.

With `WATCHDOG_POLICY=unblock`, the service stops, removes module-owned blocks, restores owned lower-level state, and exits. This is a recovery policy, not proof that AFWall+ is ready.

Unlock state is diagnostic. It does not directly release a family.

Preference storage may be unavailable until the user unlocks after reboot. When that happens, the generation gate remains closed until preferences can be read or the configured watchdog acts.

## Advanced configuration behaviour

The complete user-facing key list, accepted values, defaults, and file precedence are documented in [README.md → Configuration](README.md#configuration).

Runtime load order is:

1. built-in safe fallbacks;
2. module `config.sh` defaults;
3. optional `config.local.sh` overrides;
4. validation and safe fallback replacement for invalid values.

No runtime configuration file outside the module directory is sourced.

### VPN always-on detection

During installation or reconfiguration, the helper reads:

```sh
settings get secure always_on_vpn_app
settings get secure always_on_vpn_lockdown
```

If an always-on provider is detected and VPN handling uses automatic values, the provider can be written into `config.local.sh`.

`VPN_LOCKDOWN_MODE=off` and `preserve` do not enable lockdown. `restore` is an explicit advanced mode that may enforce and later restore the recorded state.

### FORWARD and INPUT integrity

FORWARD or INPUT protection is considered active only when:

- the module-owned chain exists;
- the DROP rule exists;
- the parent jump exists;
- required loopback exemptions exist.

An orphan chain without its parent jump is not considered valid protection.

## Logs, state, and manual recovery

### Log file

```text
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Useful log patterns:

| Pattern | Meaning |
|---|---|
| `final-generation observation window opened` | Process, preferences, and delayed-start timing are ready |
| `barrier snapshots differed` | AFWall+ changed the table between reads |
| `graph first seen fp=` | An eligible rooted graph was first detected |
| `conservative-path confirmed` | The final graph stayed stable for the required time |
| `graph drift` | AFWall+ rules changed and stability restarted |
| `graph gone/trivial` | The rooted AFWall+ graph disappeared or is incomplete |
| `transport accepted via absence-stable fallback` | No usable transport subtree was found, but stable fallback allowed restore |
| `manual_override detected` | Manual recovery stopped the service loop |

### State directory

```text
/data/adb/AFWall-Boot-AntiLeak/state/
```

Important markers:

| Path | Meaning |
|---|---|
| `boot_marker` | Current-boot reference marker |
| `block_installed` | Early firewall block was installed |
| `blackout_active` | Module protection should still be active |
| `radio_off_pending` | Lower-level network restoration is still pending |
| `manual_override` | Manual recovery latch for this boot |
| `stop_requested` | Service loop should stop |
| `aba_service.pid` | PID of the current module service worker |
| `ipv4_out_table`, `ipv6_out_table` | Table that owns each family OUTPUT block |
| `ipv4_fwd_active`, `ipv6_fwd_active` | FORWARD block state |
| `ipv4_in_active`, `ipv6_in_active` | INPUT block state |
| `ipv6_held` | IPv6 remains intentionally module-blocked |
| `ll/` | Lower-level state changed by the module |

Do not edit state files during normal use.

### Manual recovery

Run:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

Or use the Magisk module **Action** button.

The recovery path:

1. writes the manual override and stop request;
2. stops the owned service worker;
3. removes module-owned firewall blocks;
4. restores lower-level state changed by the module;
5. prints state and recent logs.

The override is for the current boot only.

## Troubleshooting

### Device remains offline

Start with:

```sh
tail -100 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Then inspect live rules:

```sh
iptables  -t filter -S | grep afwall
ip6tables -t filter -S | grep afwall
iptables  -t raw    -S | grep MOD_PRE_AFW
iptables  -t filter -S | grep MOD_PRE_AFW
ip6tables -t raw    -S | grep MOD_PRE_AFW
ip6tables -t filter -S | grep MOD_PRE_AFW
```

Common causes:

- AFWall+ firewall is disabled;
- AFWall+ rules were never applied;
- AFWall+ did not receive root access;
- **Fix Startup Data Leak** is still enabled in AFWall+;
- the AFWall+ graph is still changing;
- the AFWall+ graph is missing or incomplete;
- another script is changing the same firewall rules.

Use manual recovery if connectivity is required immediately.

### Wi-Fi or mobile data restores slowly

Check the transport-related log lines and whether `afwall-wifi` or `afwall-3g` is reachable from the main AFWall+ graph.

The default absence-stable fallback should still restore a transport when AFWall+ does not create a dedicated subtree.

### Release is slower than expected

Look for:

- `startup prefs unavailable`;
- `waiting for delayed AFWall generation`;
- `barrier snapshots differed`;
- repeated `graph drift`;
- watchdog diagnostics.

Enable `DEBUG=1` only while collecting detailed logs.

### Watchdog fires and the device remains offline

This is expected with `WATCHDOG_POLICY=block`.

To choose recovery-oriented behaviour, set:

```sh
# What it does: Releases module-owned protection when the watchdog expires.
# Accepted values: block, unblock.
WATCHDOG_POLICY=unblock
```

This can restore connectivity without proof that AFWall+ is ready.

## Installer and reconfiguration

### Profiles

| Profile | Meaning |
|---|---|
| `standard` | Recommended balanced defaults |
| `minimal` | Main OUTPUT protection with fewer optional layers |
| `strict` | Stronger temporary protection and slower possible recovery |
| `recovery` | Watchdog-oriented recovery behaviour |
| `custom` | Individual option selection |

### Input methods

The installer tries:

1. raw `getevent`;
2. bundled `keycheck`;
3. non-interactive safe defaults.

### Reconfigure

Run:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
```

The helper writes module-local `config.local.sh`. Changes take effect after reboot.

## Device validation

Before relying on the module for a critical setup, validate on the real device:

1. confirm AFWall+ settings and root access;
2. reboot while Wi-Fi and mobile data are available;
3. test locked boot and first unlock;
4. test IPv4 and IPv6 separately;
5. test VPN and tethering if used;
6. inspect the boot log and diagnostics;
7. confirm the module block is removed only after AFWall+ takeover, except for intentional IPv6 hold.
