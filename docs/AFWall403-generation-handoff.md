# AFWall+ 4.0.3 generation-aware boot handoff

This document records the AFWall+ 4.0.3 behaviour that AFWall Boot AntiLeak now treats as part of its security boundary.

## Observed AFWall startup sequence

The decompiled 4.0.3 application registers `OnBootReceiver` for `BOOT_COMPLETED`, starts `FirewallService`, then calls `BootRuleManager.initializeBootRuleApplication()`.

`BootRuleManager` starts an initial asynchronous rule application. When `addDelayStart` is enabled, it schedules a second asynchronous application after `customDelay` seconds. Its internal booleans and success-looking log messages are updated before the underlying root-command callbacks have necessarily completed.

Consequences:

- AFWall process presence is not readiness proof.
- A first valid `OUTPUT -> afwall` graph may be an initial generation, not the final generation.
- A graph can be rewritten after the configured startup delay.
- Credential-encrypted preferences may be unavailable until unlock.

## Module handoff model

The module keeps its early kernel blackout authoritative and exposes an AFWall graph to the existing service state machine only after all of these conditions are satisfied:

1. The AFWall package process has been observed. Its first observed monotonic timestamp becomes the conservative startup epoch.
2. AFWall startup preferences have been located and parsed from its private `shared_prefs` XML.
3. If `addDelayStart=true`, `customDelay` plus `AFWALL_DELAY_GRACE_SECS` has elapsed from the process epoch.
4. Two complete `iptables -w -t filter -S` reads are byte-identical for the family being evaluated.
5. The rooted `OUTPUT -> afwall` graph is structurally closed: every reachable `afwall*` jump target is defined.
6. The rooted graph contains executable rules.
7. The order-sensitive rooted graph fingerprint remains stable for the existing conservative stability window.

The graph fingerprint preserves:

- the ordinal position of the `OUTPUT -> afwall` hook;
- reachable-chain discovery from the live root;
- exact rule order inside every reachable chain.

It deliberately does not sort rule lines. First-match iptables semantics make ordering security-relevant.

## Corroborating signals

AFWall process presence, AFWall private-file modification times and main-chain density remain useful diagnostics, but the generation guard prevents them from shortening the conservative graph-stability window.

## Integration policy

`auto`, `prefer_module` and `prefer_afwall` all install the module blackout. `prefer_afwall` is retained only as a compatibility label; an AFWall-owned `afwallstart` script is not accepted as equivalent proof. `off` is the only mode that skips module blocking.

AFWall's `fixLeak=true` setting is detected and logged as a conflict. The module does not delete AFWall-owned files.

## Failure behaviour

If the AFWall process is never observed, preferences remain unreadable, the delayed deadline has not elapsed, the graph is incomplete, or snapshots continue to drift, the module stays blocked. Recovery remains controlled by the configured watchdog policy and the module Action script.

## Validation

`tests/test-generation-guard.sh` verifies:

- rule-order changes alter the fingerprint;
- moving the AFWall hook within OUTPUT alters the fingerprint;
- undefined reachable chains are rejected;
- startup-delay preferences are selected and parsed correctly;
- delayed generation remains gated through delay plus grace;
- `prefer_afwall` still installs the authoritative module blackout;
- `off` remains the only skip mode.

These are shell-level deterministic tests. Exact-device validation must still confirm packet-level behaviour on the target Android build across locked boot, delayed startup, root denial, IPv4, IPv6, Wi-Fi, mobile data, VPN and tethering.
