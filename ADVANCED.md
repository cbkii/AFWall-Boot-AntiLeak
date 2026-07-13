# AFWall Boot AntiLeak — Advanced reference

This document is the detailed reference for:

- advanced users,
- anyone troubleshooting beyond the quick checks in `README.md`, and
- developers auditing or modifying the module.

The beginner-focused guide is in [README.md](README.md).
Use that first for install, first boot, quick recovery, and basic settings.

## In this document

- [Boot flow](#boot-flow)
- [AFWall readiness and handoff](#afwall-readiness-and-handoff)
- [Timeout and unlock semantics](#timeout-and-unlock-semantics)
- [Configuration reference](#configuration-reference)
- [Logs, state, and manual recovery](#logs-state-and-manual-recovery)
- [Troubleshooting](#troubleshooting)
- [Installer, profiles, and reconfiguration](#installer-profiles-and-reconfiguration)

## Boot flow

The module is built around a staged handoff model:

1. install a kernel-level blackout as early as possible,
2. maintain and repair that blackout during `service.sh`,
3. immediately snapshot AFWall filter graphs in the service loop,
4. prove AFWall is actually ready using the rooted live `OUTPUT -> afwall` graph,
5. release the family blackout, then
6. optionally restore lower-layer state that the module changed itself.

On Pixel-style fast reconnect profiles, lower-layer Wi-Fi/mobile-data toggles are disabled by default. The netfilter block is authoritative; framework radio toggles are optional and secondary.

### Stage A — `post-fs-data.sh`

Runs before the Android framework is up.

What it does:

- clears stale per-boot override markers from the previous boot,
- writes a fresh boot marker,
- installs the module-owned blackout chains,
- persists state showing that blackout is active and radios should remain suppressed.

This stage is where the module closes the earliest boot leak window.

### Stage B — `service.sh` early service phase

Runs in the Magisk service phase, after enough of Android exists for framework commands to be usable.

What it does:

- writes `service.pid` so manual recovery can stop the loop,
- verifies the Stage A blackout is still intact,
- repairs it immediately if state says it should exist but live integrity checks fail,
- tracks boot-complete/unlock/readiness timing for diagnostics only,
- starts AFWall graph parsing immediately and never gates family release on unlock,
- optionally disables Wi-Fi/mobile-data if aggressive radio suppression is configured,
- optionally quiesces interfaces, stops tethering, or manages VPN lockdown,
- periodically reasserts blackout integrity while waiting.

This stage does not depend on radio toggles for protection. Lower-layer suppression is a second line of protection, not a replacement. See [Configuration reference](#configuration-reference).

### Stage C — AFWall takeover detection

The main poll loop waits for AFWall readiness per IP family.

Important properties of the implementation:

- AFWall process visibility establishes a conservative startup epoch but never proves readiness,
- AFWall private startup preferences are parsed before the generation gate can open,
- delayed startup holds the blackout through `customDelay + AFWALL_DELAY_GRACE_SECS`,
- each family capture performs two complete locked `iptables -t filter -S` / `ip6tables -t filter -S` reads and exposes a snapshot only when they are byte-identical,
- all readiness checks for that poll use the accepted barrier snapshot,
- the module fingerprints the rooted AFWall graph with exact rule order and OUTPUT-hook ordinal preserved,
- stability is tracked with timestamps, not blocking settle sleeps,
- graph-drift repair is triggered only when the rooted fingerprint changes, avoiding extra steady-state integrity commands, and
- filter FORWARD/INPUT layers are removed before raw OUTPUT so the independent raw OUTPUT barrier is removed last.

Details are in [AFWall readiness and handoff](#afwall-readiness-and-handoff).

### Stage D — family blackout release

As soon as the AFWall graph is confirmed stable for a family, the module removes its own blackout for that family.

This release is **not** gated on transport-specific Wi-Fi or mobile checks.

That split is deliberate:

- family blackout removal answers the question, “is AFWall controlling this IP family?”
- transport restoration answers the separate question, “is it safe to bring Wi-Fi/mobile back now?”

### Stage E — transport restoration

After family release, the service loop continues until Wi-Fi and mobile restoration criteria are satisfied, unless those gates are disabled.

Transport decisions are based on AFWall transport subtrees such as `afwall-wifi` and `afwall-3g`, including reachability and stable absence fallbacks. See [Transport-aware restore logic](#transport-aware-restore-logic).

## AFWall readiness and handoff

### Generation gate and unlock semantics

AFWall process presence is insufficient. The first observed process timestamp is used only as a conservative epoch for AFWall's possible delayed second rule generation. The module also waits until AFWall's startup preferences can be read and parsed; on file-based-encryption devices that may require credential-encrypted storage to become available.

After those prerequisites are satisfied, family release still depends solely on the live AFWall iptables graph rooted at `OUTPUT -> afwall`. It does **not** depend on:

- keyguard state as a direct readiness signal,
- file mtime evidence,
- AFWall rule density,
- boot-complete corroboration,
- Wi-Fi/mobile transport subtree readiness, or
- VPN route readiness.

Unknown unlock state is not treated as a positive readiness signal. If preference storage is still inaccessible, the generation gate remains closed and the configured watchdog policy governs recovery.

### Coherent barrier snapshots

Each family capture performs two complete filter-table reads under xtables locking. The service receives a snapshot only when both reads are byte-identical; differing reads mean AFWall is still mutating the table and that poll is rejected.

The module intentionally uses `iptables -t filter -S`, not `iptables-save`, because downstream parsing expects `-N` / `-A` rule-spec lines rather than restore-file syntax.

Typical startup log lines:

```text
service: snapshot backend v4=iptables-S
service: snapshot backend v6=ip6tables-S
```

### Rooted-graph fingerprinting

Readiness is based on AFWall chains reachable from the current live `OUTPUT -> afwall` hook. The release fingerprint includes:

- the OUTPUT hook into `afwall`,
- reachable `afwall*` chain definitions,
- rules inside reachable `afwall*` chains, and
- jumps among reachable chains.

Unreachable/orphan `afwall*` chains are excluded, so stale or orphan chain churn cannot reset family readiness timers. A separate full-graph view may appear in diagnostics, but it is not the release gate.

### Confirmation path

Generation-aware handoff deliberately disables the old process/file/density accelerators. A family can hand off only when all of the following are true:

1. The AFWall process epoch has been observed.
2. AFWall startup preferences have been parsed.
3. Any configured delayed-generation deadline plus grace has elapsed.
4. The two-read barrier snapshot is byte-identical.
5. The rooted graph is present, structurally closed, and non-trivial.
6. Its order-sensitive fingerprint remains unchanged for `SLOW_STABLE_SECS`.

`FAST_STABLE_SECS` remains as a compatibility setting and is kept equal to `SLOW_STABLE_SECS`; the guard returns false for process, file-mtime, and density corroborators so they cannot select a shorter path.

Typical log line:

```text
service: v4 conservative-path confirmed stable=6s fp=...
```

### Drift handling

If the fingerprint changes, stability resets rather than sleeping through the change. On that transition only, the service immediately checks and repairs the module-owned OUTPUT/FORWARD/INPUT protection for the affected family. No additional drift-specific integrity commands run while the fingerprint remains unchanged.

Typical lines:

```text
service: v4 graph drift old=... new=... reset
service: v4 AFWall graph gone/trivial — resetting stability
```

### IPv6 ownership and terminal hold

The generation guard reads AFWall's `enableIPv6` and `controlIPv6` preferences together with the startup-delay settings. AFWall is accepted as the IPv6 owner only when the resolved state says IPv6 is enabled and controlled. If either setting is explicitly false, IPv6 enters a terminal `held` state:

- the service no longer waits for a v6 AFWall graph, so there is no infinite family poll;
- module-owned IPv6 OUTPUT/FORWARD/INPUT protection remains installed;
- normal finalization preserves `blackout_active`, `block_installed`, and `ipv6_held`;
- IPv4 and lower-layer restoration may still finish normally;
- the Magisk Action path remains the intentional manual release mechanism.

Unreadable or unresolved preference state is not treated as permission to release IPv6. The guard retries at `AFWALL_PREFS_RETRY_SECS` and stays fail-closed. For compatibility with AFWall builds that do not materialise `controlIPv6`, an absent key follows `enableIPv6`; an explicit `controlIPv6=false` always holds IPv6.

### Transport-aware restore logic

Transport restoration is separate from family blackout release.

#### Transport chains

| Chain | Meaning |
|---|---|
| `afwall` | main AFWall chain |
| `afwall-wifi` | Wi-Fi transport subtree |
| `afwall-3g` | mobile-data transport subtree |

#### Reachability requirement

A transport subtree only counts as usable when it is reachable from the active AFWall graph. A stale chain that exists but is not referenced does not block restore forever.

Typical lines:

```text
service: wifi subtree exists but is unreachable from AFWall graph — not accepting
service: wifi transport: subtree stable=3s fp=... — Wi-Fi ready
```

#### Stable absence fallback

If a transport subtree is absent, or present but unreachable, the module tracks that “not usable” condition. Once it stays stable for the configured threshold, the transport is accepted and restoration can proceed.

Defaults:

- `TRANSPORT_ABSENCE_STABLE_SECS=3`
- `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=2`

Typical line:

```text
service: wifi transport accepted via absence-stable fallback after 3s
```

This is why a stale `afwall-wifi` or `afwall-3g` chain does not create a permanent deadlock.

## Timeout/watchdog and unlock semantics

The service has two absolute watchdogs that do not depend on readiness-gate or unlock state:

- `WATCHDOG_SERVICE_SECS` from service-loop start,
- `WATCHDOG_BOOT_COMPLETED_SECS` from first `sys.boot_completed=1`.

`WATCHDOG_POLICY=block` keeps unresolved module blocks active and emits loud diagnostic blocks containing blackout integrity, rooted AFWall graph/fingerprint state, unlock confidence, transport/VPN state, and effective config.

`WATCHDOG_POLICY=unblock` sets the stop latch, removes all module-owned OUTPUT/FORWARD/INPUT blocks, restores lower-layer/radio/VPN state as configured, clears state coherently, removes `service.pid`, and exits the service loop.

Unlock detection is a multi-signal heuristic using `cmd user is-user-unlocked`, `dumpsys user`, current-user CE readability, keyguard/window hints, and `dumpsys trust` when available. The final confidence is logged. Unknown unlock state means “unknown”, not “locked”; it cannot substitute for preference availability or graph proof.

## Configuration reference

Runtime config is module-local only:

```sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
```

Legacy `/data/adb/AFWall-Boot-AntiLeak/config.sh` and `/data/adb/AFWall-Boot-AntiLeak/installer.cfg` are never sourced. A successful install/reconfiguration and first-boot cleanup remove them; recreate needed settings in module-local `config.local.sh`.

Beginner options are grouped in `config.sh`: safety mode, release timing/watchdogs, boot suppression, AFWall package, VPN handling, and advanced/debug. Old timeout/readiness variables are unsupported in v4.4.4 and are ignored if present in `config.local.sh`.

### VPN always-on install/update detection

During install/update, `installer_config.sh` reads Android secure settings:

```sh
settings get secure always_on_vpn_app
settings get secure always_on_vpn_lockdown
```

If VPN handling is enabled and providers are set to `auto`, runtime tries to discover providers. If no provider is known, the log warns loudly and VPN handling is not reported as complete. Restore logs pre-active provider, pre-lockdown state, current lockdown state, provider used, and action taken. Runtime VPN state is per-boot only; stale VPN restore markers are cleared at boot initialisation.

### FORWARD and IPv6 raw integrity

FORWARD protection is active only when the module chain exists, the DROP rule exists, the parent `FORWARD` jump exists, and loopback exemption is present. Orphaned FORWARD chains are degraded and repaired while configured active. IPv6 raw OUTPUT is also required to have loopback exemption before being considered healthy.

### User-facing v4.4.4 keys

| Key | Default | Meaning |
|---|---:|---|
| `LEAK_PROTECTION_MODE` | `balanced` | Recommended safety profile: `balanced`, `strict`, or `recovery_friendly`. |
| `INTEGRATION_MODE` | `auto` | Coordinate with AFWall's own startup-leak feature; `auto` is recommended. |
| `BLOCK_FORWARD` | `1` | Temporary FORWARD blackout for tethered clients. |
| `BLOCK_INPUT` | `0` | Optional temporary INPUT blackout; loopback stays exempt. |
| `RADIO_SUPPRESSION` | `off` | Optional lower-layer suppression: `off`, `safe`, or `strict`. |
| `WATCHDOG_SERVICE_SECS` | `300` | Absolute watchdog from service start. |
| `WATCHDOG_BOOT_COMPLETED_SECS` | `240` | Absolute watchdog from first `sys.boot_completed=1`. |
| `WATCHDOG_POLICY` | `block` | `block` keeps unresolved protection and logs diagnostics; `unblock` removes module suppression for recovery. |
| `POLL_INTERVAL_SECS` | `2` | Main snapshot poll interval. |
| `FAST_STABLE_SECS` | `6` | Compatibility threshold kept equal to the conservative window; no shorter corroborated release path is used. |
| `SLOW_STABLE_SECS` | `6` | Final order-sensitive rooted-graph stability window after generation eligibility opens. |
| `AFWALL_DELAY_GRACE_SECS` | `4` | Extra seconds after AFWall's configured delayed-start deadline before observation may begin. |
| `AFWALL_PREFS_RETRY_SECS` | `2` | Retry interval while AFWall startup preferences are unavailable. |
| `AFWALL_PACKAGE` | `auto` | AFWall package hint: `auto`, free, donate, or legacy package. |
| `VPN_LOCKDOWN_MODE` | `off` | VPN lockdown handling: `off`, `preserve`, or `restore`. |
| `VPN_PROVIDER_PACKAGES` | `auto` | Auto-discover providers or provide a space/comma-separated package list. |
| `DEBUG` | `0` | Set to `1` for verbose boot logging. |
| `TRANSPORT_ABSENCE_STABLE_SECS` | `3` | Advanced transport restore absence fallback window. |
| `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT` | `2` | Advanced shorter post-boot absence fallback window. |
| `TRANSPORT_ORPHAN_STABLE_SECS` | `3` | Advanced orphan/unreachable transport fallback window. |
| `TRANSPORT_INCONCLUSIVE_SECS` | `20` | Advanced inconclusive transport restore retry window. |
| `TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT` | `8` | Advanced shorter post-boot inconclusive window. |
| `RADIO_REASSERT_INTERVAL` | `15` | Seconds between lower-layer suppression reassertions. |
| `BLACKOUT_REASSERT_INTERVAL` | `10` | Seconds between blackout integrity repair checks. |
| `UNLOCK_POLL_INTERVAL` | `10` | Seconds between unlock-confidence diagnostic probes. |
| `AFWALL_RULE_DENSITY_MIN` | `3` | Compatibility/diagnostic threshold; generation-aware handoff does not use density to shorten release. |

### Diagnostics and behaviour flags

| Key | Default | Meaning |
|---|---:|---|
| `DEBUG` | `0` | Set to `1` for verbose boot logging. |

## Logs, state, and manual recovery

### Log file

```sh
/data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

### Log signals worth grepping

| Pattern | Meaning |
|---|---|
| `final-generation observation window opened` | process, preferences, and any delayed-generation deadline have passed |
| `barrier snapshots differed` | AFWall changed the filter table between the two locked reads |
| `graph first seen fp=` | an eligible AFWall graph was detected for the first time |
| `conservative-path confirmed` | final order-sensitive graph proof remained stable for the required window |
| `graph drift` | AFWall rules are still changing |
| `graph gone/trivial` | AFWall root graph disappeared or is too small to trust |
| `transport accepted via absence-stable fallback` | no usable transport subtree, but stable fallback allowed restore |
| `manual_override detected` | manual recovery latched and service loop stopped |

### State directory

```sh
/data/adb/AFWall-Boot-AntiLeak/state/
```

Useful files and markers:

| Path | Meaning |
|---|---|
| `boot_marker` | current-boot reference marker used by evidence checks |
| `block_installed` | Stage A blackout was installed |
| `blackout_active` | blackout should still be considered active |
| `radio_off_pending` | radios should remain suppressed until restore criteria are met |
| `manual_override` | current-boot manual recovery latch |
| `stop_requested` | service loop should stop |
| `service.pid` | PID of the current service loop |
| `ipv4_out_table`, `ipv6_out_table` | which table owns the family blackout |
| `ipv4_fwd_active`, `ipv6_fwd_active` | `FORWARD` block state |
| `ipv6_held` | terminal state: AFWall is not accepted as IPv6 owner and module IPv6 protection is intentionally retained |
| `ipv4_in_active`, `ipv6_in_active` | optional `INPUT` block state |
| `ll/` | lower-layer state written only for things the module changed |

Do not hand-edit these unless you are deliberately debugging the module internals.

### Manual recovery

Supported recovery path:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh
```

Or use the Magisk module **Action** button.

What it does:

1. writes `manual_override` and `stop_requested`,
2. clears blackout-active markers,
3. stops the service loop if it is still running,
4. removes module-owned blackout chains,
5. restores lower-layer state recorded in `state/ll/`,
6. prints diagnostics and the last log lines.

The override persists only for the current boot and is cleared by the next `post-fs-data` run.

## Troubleshooting

Use [README.md → Recovery and common problems](README.md#recovery-and-common-problems) for the short version.
Use this section when you need the exact checks, rule inspection, or developer-level detail.

### Device stuck offline after boot

Start with the log:

```sh
tail -50 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
```

Then check the live rule state:

```sh
iptables  -t filter -S | grep afwall
ip6tables -t filter -S | grep afwall
iptables  -t raw    -S | grep MOD_PRE_AFW
iptables  -t filter -S | grep MOD_PRE_AFW
ip6tables -t raw    -S | grep MOD_PRE_AFW
ip6tables -t filter -S | grep MOD_PRE_AFW
```

Common causes:

- AFWall firewall not enabled
- AFWall rules never applied
- AFWall “Fix Startup Data Leak” still enabled
- AFWall graph still drifting during boot
- AFWall graph missing or trivial

Recover immediately with [Manual recovery](#manual-recovery) if needed.

### Wi-Fi not coming back after AFWall loads

Check for Wi-Fi transport lines in the log, then inspect whether `afwall-wifi` is actually reachable from the main AFWall graph.

Useful checks:

```sh
iptables  -t filter -S | grep afwall-wifi
ip6tables -t filter -S | grep afwall-wifi
iptables  -t filter -S | grep 'afwall.*afwall-wifi'
ip6tables -t filter -S | grep 'afwall.*afwall-wifi'
```

If AFWall does not use a dedicated Wi-Fi transport subtree on your setup, the default absence-stable fallback should still restore Wi-Fi once the “not usable” state is stable.

### Mobile data not coming back

Same pattern as Wi-Fi, using the rooted `afwall-3g` subtree and the absence/orphan fallback.

```sh
iptables  -t filter -S | grep afwall-3g
ip6tables -t filter -S | grep afwall-3g
iptables  -t filter -S | grep 'afwall.*afwall-3g'
ip6tables -t filter -S | grep 'afwall.*afwall-3g'
```

### Release is slower than expected

Look for a generation gate that has not opened or for repeated graph drift.

Typical checks:

- `startup prefs unavailable` means the module cannot yet read AFWall's startup-delay state,
- `waiting for delayed AFWall generation` means `customDelay + AFWALL_DELAY_GRACE_SECS` has not elapsed,
- `barrier snapshots differed` or repeated `graph drift` means AFWall is still mutating rules,
- enabling `DEBUG=1` gives finer-grained progress information.

### Watchdog fires but device stays offline

That is expected with `WATCHDOG_POLICY=block`: unresolved module blocks are retained and the log explains the exact blocker.

To opt into watchdog-based recovery, put this in module-local `config.local.sh`:

```sh
# /data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
WATCHDOG_POLICY=unblock
```

Be explicit about the trade-off: connectivity can return even if AFWall is still absent or broken.

## Installer, profiles, and reconfiguration

### Profiles

The installer offers five entry points:

| Profile | Meaning |
|---|---|
| `standard` | recommended default; full protection with balanced defaults |
| `minimal` | firewall-only mode; lower-layer suppression off |
| `strict` | maximum protection; more features enabled by default |
| `recovery` | recovery-oriented watchdog behaviour with lower-layer suppression off |
| `custom` | individual option selection |

### Input method priority

The installer tries, in order:

1. raw `getevent`,
2. bundled `keycheck`,
3. non-interactive fallback.

Non-interactive fallback uses installer defaults and module-local config only. Legacy external runtime config is ignored by service/post-fs-data and does not affect boot behaviour.

### Reconfiguration after install

To rerun the interactive configuration flow later:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
```

Changes are written under the module directory and take effect on the next reboot.

### Pre-seeded installer config example

```sh
IC_PROFILE=standard
# or minimal / strict / recovery / custom
WATCHDOG_POLICY=block
```

## v4.4.4 handoff diagnostics and Proton investigation notes

The Android 16 Proton/WireGuard evidence is consistent with early module-owned netfilter blackout denying Proton's protected gateway socket before AFWall takeover. The protected socket bypasses VPN routing, not netfilter, so `sendto: operation not permitted` is legitimate while `MOD_PRE_AFW*` OUTPUT layers are installed.

Source and host-side timeline simulations support these conclusions:

- Family OUTPUT release is driven by the rooted AFWall graph fingerprint and per-family stability timer.
- IPv4 and IPv6 release independently.
- Transport subtree absence, stale unreachable transport chains, Android boot completion, unlock, always-on VPN provider reads, and lockdown state do not gate family release.
- All installed module-owned OUTPUT layers are removed from both raw and filter tables, and release is only accounted after module-owned OUTPUT/FORWARD/INPUT layers are verified absent.
- If the watchdog fires with `WATCHDOG_POLICY=block`, the service keeps protection, emits actionable diagnostics, and drops to low-frequency degraded monitoring instead of continuing the full boot polling loop.

A 57-second delay after AFWall's application log is not reproduced by the module state machine when the rooted graph is stable. Remaining real-device hypotheses are therefore AFWall graph churn after the application message, repeated AFWall application caused by Android network changes, AFWall final rules still blocking Proton's UID, or non-netfilter Proton/radio timing. The new timestamped boot log and `diagnostics.sh` output are intended to distinguish those on the next boot without a full trace.

### Read-only VPN behaviour

`VPN_LOCKDOWN_MODE=off` and `preserve` never write Android always-on VPN settings. Preserve records and logs `always_on_vpn_app` and `always_on_vpn_lockdown` only. Restore remains an explicit advanced mode: it targets a single explicit provider, or the already-selected provider, writes transactionally, and verifies by readback after each write. No VPN settings are written from `post-fs-data`.

### Device validation runbook

1. Confirm AFWall+ is enabled, rules are applied, and AFWall's `Fix Startup Data Leak` is disabled.
2. Confirm Android always-on VPN provider and lockdown in Settings.
3. Reboot and wait at least two minutes after unlock or until connectivity returns.
4. Collect:

```sh
su -c tail -200 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
su -c sh /data/adb/modules/AFWall-Boot-AntiLeak/diagnostics.sh > /sdcard/afwall-boot-antileak-diagnostics.txt
```

Pass criteria: the log shows graph first seen, graph stable, per-family release started and verified absent; Proton EPERM stops shortly after release. Fail criteria: graph fingerprint keeps changing, release verification fails, AFWall final graph remains present but Proton continues to receive EPERM, or watchdog degraded mode is entered.
