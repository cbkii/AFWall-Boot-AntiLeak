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

- snapshots are captured once per family per poll using `iptables -t filter -S` / `ip6tables -t filter -S`,
- all readiness checks for that poll use the same snapshot,
- the module fingerprints the rooted AFWall graph, not just the root chain count,
- stability is tracked with timestamps, not blocking settle sleeps.

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

### Rooted graph checks are independent of unlock

AFWall process presence is insufficient. The module does not release because a package exists or because an AFWall process is visible; final handoff is based on the AFWall iptables graph rooted at the live `OUTPUT -> afwall` hook.

Family release does **not** wait for:

- keyguard/unlock detection,
- CE-storage access,
- AFWall process visibility,
- file mtime evidence,
- Wi-Fi/mobile transport subtree readiness, or
- VPN route readiness.

Unlock and boot-complete signals are logged as diagnostics and may strengthen optional corroboration, but unknown unlock state is not treated as locked and does not block handoff.

### Coherent per-poll snapshots

Each poll captures one filter-table snapshot per family and derives all checks from that exact snapshot.

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

### Confirmation paths

A family can hand off in two ways.

#### Fast path

All of the following must be true:

1. AFWall main chain is present and non-trivial.
2. The rooted graph fingerprint is stable for `FAST_STABLE_SECS`.
3. There is corroboration, such as:
   - AFWall process visible,
   - current-boot file evidence,
   - or `sys.boot_completed=1` plus sufficient AFWall rule density.

Typical log line:

```text
service: v4 fast-path confirmed stable=2s corroboration=process fp=...
```

#### Conservative path

All of the following must be true:

1. AFWall main chain is present and non-trivial.
2. The rooted graph fingerprint is stable for `SLOW_STABLE_SECS`.
3. No corroboration is required.

Typical log line:

```text
service: v4 conservative-path confirmed stable=6s fp=...
```

### Drift handling

If the fingerprint changes, stability resets rather than sleeping through the change.

Typical lines:

```text
service: v4 graph drift old=... new=... reset
service: v4 AFWall graph gone/trivial — resetting stability
```

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

Unlock detection is a multi-signal heuristic using `cmd user is-user-unlocked`, `dumpsys user`, current-user CE readability, keyguard/window hints, and `dumpsys trust` when available. The final confidence is logged. Unknown unlock state means “unknown”, not “locked”, and family handoff continues on the graph-only path.

## Configuration reference

Runtime config is module-local only:

```sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
```

Legacy `/data/adb/AFWall-Boot-AntiLeak/config.sh` and `/data/adb/AFWall-Boot-AntiLeak/installer.cfg` are ignored and logged. They are not sourced or migrated in v4.0.0; recreate needed settings manually in module-local `config.local.sh`.

Beginner options are grouped in `config.sh`: safety mode, release timing/watchdogs, boot suppression, AFWall package, VPN handling, and advanced/debug. Old timeout/readiness variables are unsupported in v4.0.0 and are ignored if present in `config.local.sh`.

### VPN always-on install/update detection

During install/update, `installer_config.sh` reads Android secure settings:

```sh
settings get secure always_on_vpn_app
settings get secure always_on_vpn_lockdown
```

If VPN handling is enabled and providers are set to `auto`, runtime tries to discover providers. If no provider is known, the log warns loudly and VPN handling is not reported as complete. Restore logs pre-active provider, pre-lockdown state, current lockdown state, provider used, and action taken. Runtime VPN state is per-boot only; stale VPN restore markers are cleared at boot initialisation.

### FORWARD and IPv6 raw integrity

FORWARD protection is active only when the module chain exists, the DROP rule exists, the parent `FORWARD` jump exists, and loopback exemption is present. Orphaned FORWARD chains are degraded and repaired while configured active. IPv6 raw OUTPUT is also required to have loopback exemption before being considered healthy.

### User-facing v4.0.0 keys

| Key | Default | Meaning |
|---|---:|---|
| `LEAK_PROTECTION_MODE` | `balanced` | Recommended safety profile: `balanced`, `strict`, or `recovery_friendly`. |
| `INTEGRATION_MODE` | `auto` | Coordinate with AFWall's own startup-leak feature; `auto` is recommended. |
| `BLOCK_FORWARD` | `1` | Temporary FORWARD blackout for tethered clients. |
| `BLOCK_INPUT` | `0` | Optional temporary INPUT blackout; loopback stays exempt. |
| `RADIO_SUPPRESSION` | `off` | Optional lower-layer suppression: `off`, `safe`, or `strict`. |
| `WATCHDOG_SERVICE_SECS` | `180` | Absolute watchdog from service start. |
| `WATCHDOG_BOOT_COMPLETED_SECS` | `120` | Absolute watchdog from first `sys.boot_completed=1`. |
| `WATCHDOG_POLICY` | `block` | `block` keeps unresolved protection and logs diagnostics; `unblock` removes module suppression for recovery. |
| `POLL_INTERVAL_SECS` | `1` | Main snapshot poll interval. |
| `FAST_STABLE_SECS` | `2` | Fast-path rooted graph stability window when corroboration exists. |
| `SLOW_STABLE_SECS` | `6` | Conservative rooted graph stability window without mandatory corroboration. |
| `AFWALL_PACKAGE` | `auto` | AFWall package hint: `auto`, free, donate, or legacy package. |
| `VPN_LOCKDOWN_MODE` | `off` | VPN lockdown handling: `off`, `preserve`, or `restore`. |
| `VPN_PROVIDER_PACKAGES` | `auto` | Auto-discover providers or provide a space/comma-separated package list. |
| `DEBUG` | `0` | Set to `1` for verbose boot logging. |
| `TRANSPORT_ABSENCE_STABLE_SECS` | `3` | Advanced transport restore absence fallback window. |
| `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT` | `2` | Advanced shorter post-boot absence fallback window. |
| `TRANSPORT_ORPHAN_STABLE_SECS` | `3` | Advanced orphan/unreachable transport fallback window. |
| `TRANSPORT_INCONCLUSIVE_SECS` | `20` | Advanced inconclusive transport restore retry window. |
| `TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT` | `8` | Advanced shorter post-boot inconclusive window. |
| `RADIO_REASSERT_INTERVAL` | `10` | Seconds between lower-layer suppression reassertions. |
| `BLACKOUT_REASSERT_INTERVAL` | `5` | Seconds between blackout integrity repair checks. |
| `UNLOCK_POLL_INTERVAL` | `5` | Seconds between unlock-confidence diagnostic probes. |
| `AFWALL_RULE_DENSITY_MIN` | `3` | Dense graph accelerator threshold; not a mandatory release gate. |

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
| `snapshot backend` | snapshot source selected for the current boot |
| `graph first seen fp=` | AFWall graph detected for the first time |
| `fast-path confirmed` | early release with corroboration |
| `conservative-path confirmed` | release without corroboration after longer stability |
| `graph drift` | AFWall rules still changing |
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

Look for repeated drift or lack of corroboration.

Typical checks:

- repeated `graph drift` lines mean AFWall is still mutating rules,
- missing `fast-path confirmed` with eventual `conservative-path confirmed` means the module had to wait for the longer path,
- enabling `DEBUG=1` gives finer-grained progress information,
- absence of `boot_marker` or other evidence signals can remove fast-path corroboration.

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

The installer offers four entry points:

| Profile | Meaning |
|---|---|
| `standard` | recommended default; full protection with balanced defaults |
| `minimal` | firewall-only mode; lower-layer suppression off |
| `strict` | maximum protection; more features enabled by default |
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
# or minimal / strict / custom
WATCHDOG_POLICY=block
```
