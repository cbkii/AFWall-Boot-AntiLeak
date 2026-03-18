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
2. suppress lower-layer connectivity once framework services exist,
3. prove AFWall is actually ready,
4. release the family blackout, then
5. restore Wi-Fi and mobile when their own restore criteria are satisfied.

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
- disables Wi-Fi and mobile data with framework commands when configured,
- optionally quiesces interfaces and stops tethering,
- periodically reasserts both blackout integrity and radio-off state while waiting.

This stage is why the module is not relying on the raw `iptables` blackout alone. Lower-layer suppression is a second line of protection, not a replacement. See [Configuration reference](#configuration-reference).

### Stage C — AFWall takeover detection

The main poll loop waits for AFWall readiness per IP family.

Important properties of the implementation:

- snapshots are captured once per family per poll using `iptables -t filter -S` / `ip6tables -t filter -S`,
- all readiness checks for that poll use the same snapshot,
- the module fingerprints the full AFWall graph, not just the root chain count,
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

### Coherent per-poll snapshots

Each poll captures one filter-table snapshot per family and derives all checks from that exact snapshot.

The module intentionally uses `iptables -t filter -S`, not `iptables-save`, because downstream parsing expects `-N` / `-A` rule-spec lines rather than restore-file syntax.

Typical startup log lines:

```text
service: snapshot backend v4=iptables-S
service: snapshot backend v6=ip6tables-S
```

### Full-graph fingerprinting

Readiness is based on the whole AFWall graph, including:

- `afwall*` chain definitions,
- rules inside `afwall*` chains,
- jumps to `afwall*` chains.

The sorted graph is checksummed with `cksum`. Any change in descendants, such as transport subchains, resets stability.

### Confirmation paths

A family can hand off in two ways.

#### Fast path

All of the following must be true:

1. AFWall main chain is present and non-trivial.
2. The full graph fingerprint is stable for `FAST_STABLE_SECS`.
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
2. The full graph fingerprint is stable for `SLOW_STABLE_SECS`.
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

## Timeout and unlock semantics

### Default behaviour

The shipped defaults are conservative:

- `TIMEOUT_POLICY=fail_closed`
- `AUTO_TIMEOUT_UNBLOCK=0`
- `TIMEOUT_UNLOCK_GATED=1`

That means:

- timeout countdown does not start before device unlock,
- timeout never auto-unblocks unless you explicitly opt into it,
- on unresolved families the module keeps the blackout by default.

### Unlock-gated timeout

When `TIMEOUT_UNLOCK_GATED=1`, the timeout countdown starts only after the device has been positively detected as unlocked.

This prevents a timeout expiring while the device is still sitting at the lock screen.

### Auto-unblocking on timeout

Timeout-based unblocking requires **both**:

```sh
AUTO_TIMEOUT_UNBLOCK=1
TIMEOUT_POLICY=unblock
```

If you set only `TIMEOUT_POLICY=unblock`, the module logs a warning and still behaves fail-closed.

### What happens on fail-closed timeout

With the default fail-closed behaviour, lower-layer state can be restored while unresolved family blackouts remain in place. Recovery is then manual; see [Manual recovery](#manual-recovery).

## Configuration reference

Persistent user overrides live at:

```sh
/data/adb/AFWall-Boot-AntiLeak/config.sh
```

Built-in defaults ship in [`config.sh`](config.sh). Edit the persistent file, then reboot.

### Integration mode

| Key | Default | Meaning |
|---|---:|---|
| `INTEGRATION_MODE` | `auto` | Coordinate with AFWall's own startup-leak feature. `auto` is recommended; `prefer_module` always installs the module blackout; `prefer_afwall` defers only when AFWall startup protection is actually detected; `off` disables module blocking. |

### Kernel blackout and chain coverage

| Key | Default | Meaning |
|---|---:|---|
| `ENABLE_FORWARD_BLOCK` | `1` | Also block `FORWARD` so tethered clients cannot leak through hotspot/USB/Bluetooth tethering during boot. |
| `ENABLE_INPUT_BLOCK` | `0` | Optional inbound hardening for `INPUT`; loopback stays exempt. |

### Lower-layer suppression

| Key | Default | Meaning |
|---|---:|---|
| `LOWLEVEL_MODE` | `safe` | `off`, `safe`, or `strict`. `safe` is the default balanced mode. |
| `LOWLEVEL_INTERFACE_QUIESCE` | `1` | Bring eligible interfaces down during the waiting period. |
| `LOWLEVEL_USE_WIFI_SERVICE` | `1` | Disable and later restore Wi-Fi if the module changed it. |
| `LOWLEVEL_USE_PHONE_DATA_CMD` | `1` | Disable and later restore mobile data if the module changed it. |
| `LOWLEVEL_USE_BLUETOOTH_MANAGER` | `0` | Optional Bluetooth suppression. Disabled by default because it is disruptive and rarely needed. |
| `LOWLEVEL_USE_TETHER_STOP` | `1` | Stop active tethering during boot; tethering is not automatically restarted. |

### Timeout and restore behaviour

| Key | Default | Meaning |
|---|---:|---|
| `TIMEOUT_SECS` | `120` | Maximum wait before timeout handling. |
| `TIMEOUT_POLICY` | `fail_closed` | `fail_closed` keeps unresolved family blackouts; `unblock` only works when auto-timeout unblocking is also enabled. |
| `AUTO_TIMEOUT_UNBLOCK` | `0` | Master gate for timeout-based unblocking. Default disables it entirely. |
| `TIMEOUT_UNLOCK_GATED` | `1` | Timeout starts only after unlock. |
| `WIFI_AFWALL_GATE` | `1` | Gate Wi-Fi restore on transport-aware logic. |
| `MOBILE_AFWALL_GATE` | `1` | Gate mobile-data restore on transport-aware logic. |
| `RADIO_REASSERT_INTERVAL` | `10` | Seconds between radio-off verification while waiting. |
| `BLACKOUT_REASSERT_INTERVAL` | `5` | Seconds between blackout integrity checks while waiting. |
| `UNLOCK_POLL_INTERVAL` | `5` | Seconds between unlock checks before timeout starts. |

### Readiness and timing

| Key | Default | Meaning |
|---|---:|---|
| `SETTLE_SECS` | `5` | Stable window for reachable transport subtree acceptance before post-boot acceleration applies. |
| `POLL_INTERVAL_SECS` | `1` | Main readiness poll interval. |
| `FAST_STABLE_SECS` | `2` | Fast-path AFWall graph stability window when corroboration exists. |
| `SLOW_STABLE_SECS` | `6` | Conservative AFWall graph stability window without corroboration. |
| `TRANSPORT_ABSENCE_STABLE_SECS` | `3` | Accept absent or unreachable transport after this stable window. |
| `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT` | `2` | Shorter post-boot absence window. |
| `BOOT_COMPLETE_ACCELERATE` | `1` | Enable shorter post-boot thresholds. |
| `AFWALL_RULE_DENSITY_MIN` | `3` | Minimum chain density for boot-complete corroboration. |
| `LIVENESS_SECS_POST_BOOT` | `2` | Post-boot fast-path stability threshold. |
| `FALLBACK_SECS_POST_BOOT` | `4` | Post-boot conservative-path stability threshold. |
| `SETTLE_SECS_POST_BOOT` | `1` | Post-boot transport subtree settle window. |
| `TRANSPORT_WAIT_SECS_POST_BOOT` | `5` | Retained compatibility alias; not the active absence-stable control path. |

### Diagnostics and behaviour flags

| Key | Default | Meaning |
|---|---:|---|
| `MANUAL_OVERRIDE_PERSISTS_THIS_BOOT` | `1` | Informational flag documenting current-boot override behaviour. |
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

If AFWall does not use a dedicated Wi-Fi transport subtree on your setup, `WIFI_AFWALL_GATE=0` is the blunt workaround; otherwise the default absence-stable fallback should still restore Wi-Fi once the “not usable” state is stable.

### Mobile data not coming back

Same pattern as Wi-Fi, using `afwall-3g` and `MOBILE_AFWALL_GATE`.

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

### Timeout fires but device stays offline

That is expected with the default configuration.

To opt into timeout-based recovery:

```sh
# /data/adb/AFWall-Boot-AntiLeak/config.sh
AUTO_TIMEOUT_UNBLOCK=1
TIMEOUT_POLICY=unblock
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

Non-interactive fallback priority is:

1. external `/data/adb/AFWall-Boot-AntiLeak/installer.cfg`,
2. existing persistent `/data/adb/AFWall-Boot-AntiLeak/config.sh`,
3. standard defaults.

### Reconfiguration after install

To rerun the interactive configuration flow later:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
```

Changes are written to the persistent config and take effect on the next reboot.

### Pre-seeded installer config example

```sh
IC_PROFILE=standard
# or minimal / strict / custom
AUTO_TIMEOUT_UNBLOCK=0
TIMEOUT_UNLOCK_GATED=1
WIFI_AFWALL_GATE=1
MOBILE_AFWALL_GATE=1
```
