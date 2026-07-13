# AGENTS.md — AFWall Boot AntiLeak development guide

This repository is a Magisk module, not a normal Linux service. Code runs on Android during early boot, often under Magisk's ash/toybox/busybox environment, before the framework is fully available. Be conservative.

## Project intent

AFWall Boot AntiLeak prevents device network traffic from escaping during boot before AFWall+ has applied its rules. The module must be:

- fail-closed by default;
- recoverable by explicit user action;
- family-aware for IPv4 and IPv6;
- precise about which state it changed;
- robust across reboot boundaries;
- compatible with Magisk module installation and update behaviour.

The core safety property is:

> Install a module-owned blackout early, keep it intact, and remove it only after AFWall's live rooted `OUTPUT -> afwall` graph is present, non-trivial, and stable for that IP family.

## Repository layout

Important runtime files:

```text
post-fs-data.sh          early boot blackout installation
service.sh               late_start service loop and handoff
action.sh                Magisk Action/manual recovery only
uninstall.sh             module uninstall cleanup
config.sh                packaged defaults
reconfigure.sh           user-facing config regeneration
bin/common.sh            shared firewall/config/runtime helpers
bin/lowlevel.sh          lower-layer radio/service/VPN helpers
bin/installer_config.sh  installer/reconfigure config writer
common/functions.sh      vendored MMT installer framework
common/install.sh        installer UI/messages
```

Release/build files:

```text
tools/build-release.sh
tools/validate-zip.sh
tools/mock-logic-tests.sh
tools/sync-version-metadata.py
.github/workflows/ci.yml
.github/workflows/release.yml
module.prop
update.json
```

## Non-negotiable engineering rules

1. **State inspection before action.** Read live rules/state first; do not assume a marker file proves protection.
2. **Live firewall state beats documentation.** README/ADVANCED text is never proof of runtime behaviour.
3. **No process-only readiness.** AFWall process visibility is corroboration only; it is not sufficient for handoff.
4. **No unlock-gated family release.** Unlock/CE/keyguard evidence is diagnostic only and must not block family handoff.
5. **No orphan-chain readiness.** Only AFWall chains reachable from the live `OUTPUT -> afwall` graph count.
6. **No ambiguous fail-open.** If blackout is expected but incomplete, repair it or log a loud integrity failure; do not silently treat it as already released.
7. **No partial recovery.** Action/watchdog/uninstall recovery must remove OUTPUT, FORWARD, INPUT and lower-layer state that the module changed.
8. **One boot, one state model.** Clear stale per-boot markers at boot start; never let previous-boot state drive current-boot release decisions.
9. **One source of runtime truth.** Runtime config is module-local `config.sh` plus optional `config.local.sh`; old external config files must not be sourced.
10. **Installer changes are high-risk.** Magisk/MMT install paths are unusual; test installer behaviour before accepting changes.

## Shell and Android compatibility

Write POSIX/ash-compatible shell unless a file is explicitly Bash-only.

Do:

- use `#!/system/bin/sh` for runtime module scripts;
- avoid Bash arrays, `[[ ... ]]`, process substitution, and associative arrays;
- quote variables unless intentional splitting is required;
- use `read -r` unless backslash processing is deliberately wanted;
- keep command failures best-effort where Android/Magisk variability is expected;
- use bounded loops and explicit timeouts;
- avoid `set -e` in runtime scripts unless every command is audited for it;
- treat `cmd`, `settings`, `svc`, `dumpsys`, `iptables`, `ip6tables`, `pidof`, `ps`, and `find` as potentially unavailable or variant.

Do not:

- assume GNU tools;
- assume `pgrep` exists;
- assume `iptables -w` works without fallback;
- assume framework services are usable in `post-fs-data`;
- assume CE storage is unlocked;
- assume Wi-Fi/mobile/VPN state reflects firewall readiness.

## Firewall model

### Module-owned chains

Current chain names:

```text
MOD_PRE_AFW       IPv4 OUTPUT
MOD_PRE_AFW_V6    IPv6 OUTPUT
MOD_PRE_AFW_FWD   IPv4 FORWARD
MOD_PRE_AFW_FWD_V6 IPv6 FORWARD
MOD_PRE_AFW_IN    IPv4 INPUT
MOD_PRE_AFW_IN_V6 IPv6 INPUT
```

Never remove or modify chains not owned by this module.

### Integrity means more than chain existence

A module block is intact only when all expected pieces exist:

- chain exists;
- parent jump exists;
- DROP rule exists;
- loopback exemption exists where required;
- table/family matches the expected layer.

A chain without parent jump is not active protection. A marker file without live rules is not active protection.

### Snapshot parsing

The service hot path uses `iptables -t filter -S` / `ip6tables -t filter -S` style snapshots. Parsers expect `-N` and `-A` rule-spec syntax. Do not switch to `iptables-save` output unless all parsers are normalised for restore-file syntax.

All readiness decisions inside one poll should derive from the same captured snapshot. Do not mix snapshot-derived checks with fresh live reads in the same decision.

## AFWall readiness rules

A family may release only when:

- the live `OUTPUT -> afwall` hook exists;
- the `afwall` chain is present;
- the graph is non-trivial;
- the rooted graph fingerprint is stable for the required window;
- pre-remove blackout integrity is checked/logged immediately before release.

Fast-path corroborators may shorten the stable window, but the conservative graph-only path must work without process visibility, file evidence, unlock confidence, VPN route evidence, or transport subtree presence.

Transport subtrees (`afwall-wifi`, `afwall-3g`) are for staged lower-layer restore only. They must not gate family release.

## Config model

Runtime load order:

1. `$MODDIR/config.sh`
2. `$MODDIR/config.local.sh` if present

When changing defaults, update every source together:

- `config.sh`
- `bin/common.sh` validated fallback defaults
- `bin/installer_config.sh` generated `config.local.sh` defaults
- `README.md`
- `ADVANCED.md`
- tests that assert defaults

If only one of these changes, the next install or reconfigure may silently restore old behaviour.

## Magisk/MMT installer rules

`common/functions.sh` is vendored installer scaffolding. Do not mass-refactor it only to satisfy ShellCheck. Touch it only for real module behaviour problems.

Known important installer lessons:

- `action.sh` belongs in the module directory for the Magisk Action button. Do not copy it into `/data/adb/service.d/`.
- `post-fs-data.sh`, `service.sh`, and `uninstall.sh` need correct module-local `MODDIR/MODPATH` handling.
- `reconfigure.sh` must write module-local `config.local.sh`.
- keycheck binaries and fallback input handling must work across common Android architectures.
- installer-generated files must keep shebangs after MMT comment stripping.

## Recovery semantics

Manual Action, timeout-unblock, and uninstall must be coherent:

- latch manual override/stop before removing rules;
- stop the service loop using a verified module-owned PID;
- remove all module-owned OUTPUT/FORWARD/INPUT rules;
- restore only lower-layer state that this module changed;
- remove/clear state files intentionally;
- prevent re-blocking later in the same boot after explicit recovery.

Never blindly re-enable Wi-Fi, mobile data, Bluetooth, tethering, VPN lockdown, or interfaces if the module did not record that it changed them.

## PR history lessons to preserve

The repository history contains repeated valid review findings. Do not regress them.

### Early redesign and MMT alignment, PRs #1–#5

Lessons:

- module config must load overrides correctly;
- AFWall rule regex must not confuse IPv4 and IPv6 readiness;
- legacy cleanup paths must be exact;
- release ZIPs must be rooted correctly;
- `action.sh` shebang and placement matter;
- volume-key installer loops need bounded retries and fallback;
- installer comments must not corrupt config files;
- reconfigure must not bypass installer config logic.

### Leak and blackout hardening, PRs #6–#11

Lessons:

- family-aware handoff is required; IPv4 readiness must not release IPv6 or vice versa;
- timeout policy must be explicit;
- final settle must compare pre/post signatures, not just sleep;
- state-file loss must not become fail-open;
- `UNLOCK_POLL_INTERVAL` must actually be used if exposed;
- integrity reassert timers must initialise so checks really run;
- dual-layer OUTPUT blackout and repair are necessary;
- orphan transport subtrees must not deadlock restore;
- snapshot backend and parser syntax must match;
- stale header comments are dangerous because they encode old boot models.

### Release and installer reliability, PRs #12–#18

Lessons:

- release triggers must match exactly and avoid accidental comment activation;
- tag inputs must be sanitised and passed through environment variables;
- YAML notes and shell expressions must be injection-safe;
- release version metadata must stay in sync across `module.prop`, `update.json`, headers, docs, and release tags;
- keycheck handling must glob all packaged binaries;
- shellcheck directives should be targeted, not broad suppressions.

### VPN, low-level and PID ownership, PRs #19–#23

Lessons:

- pre-unlock gates can delay release/restore and must be justified;
- repeated retry/defer logs need throttling;
- command/config lookup caching reduces boot overhead;
- service PID files must record the actual child and validate ownership before signalling;
- finalisation teardown should run once per boot loop;
- VPN lockdown/provider parsing must handle whitespace and unknown providers loudly.

### Magisk compatibility and CI hardening, PRs #24–#26

Lessons:

- do not leave dead code or stale version headers;
- Magisk installer compatibility beats cosmetic lint changes;
- docs must match actual installer/runtime behaviour;
- release CI must be concurrency-safe;
- CodeQL shell-injection findings are real when user-controlled strings reach shell;
- stale apt/update failures in CI should be handled without masking real test failures.

### Gated handoff and v4 line, PRs #27–#31

Lessons:

- readiness must be the rooted AFWall graph, not package/process state;
- Gemini/reviewer comments should be checked against live boot behaviour, not accepted blindly;
- ash-safe parser code matters on Android;
- temporary review/fixup scripts must be removed before final release;
- version synchronisation tooling must not leave `__pycache__` or stale generated files;
- current branch commits after a tag still require a version/tag decision before publishing a new release.

## Common mistakes to avoid

- Treating AFWall process presence as release proof.
- Treating boot-complete/unlock as release proof.
- Releasing both families when only one family is ready.
- Allowing marker files to override live firewall checks.
- Cleaning current module chains from a legacy cleanup function.
- Installing Action scripts into service hooks.
- Making watchdog unblock the normal successful path.
- Fixing diagnostics by loosening safety gates.
- Fixing safety by making release impossible.
- Editing docs/config but not generated installer defaults.
- Broadly rewriting vendored MMT code without testing installation.
- Accepting ShellCheck suggestions that alter intentional word splitting or Android compatibility.

## Validation checklist

Before finishing any change, run the relevant subset:

```sh
find . -path './.git' -prune -o -type f -name '*.sh' -print0 | xargs -0 -r -n1 sh -n
./tools/mock-logic-tests.sh
git diff --check
```

If ShellCheck is available, prefer the project scope rather than blindly checking vendored installer scaffolding:

```sh
shellcheck --severity=warning \
  action.sh \
  post-fs-data.sh \
  service.sh \
  uninstall.sh \
  reconfigure.sh \
  bin/common.sh \
  bin/installer_config.sh \
  bin/lowlevel.sh \
  tools/*.sh
```

Build and validate release ZIPs when packaging changes are touched:

```sh
tools/build-release.sh dist/
tools/validate-zip.sh dist/AFWall-Boot-AntiLeak-*.zip
```

## Required review questions for safety changes

Answer these explicitly in PR descriptions or review notes:

1. What exact condition installs blackout?
2. What exact condition proves blackout is intact?
3. What exact condition repairs blackout?
4. What exact condition releases IPv4?
5. What exact condition releases IPv6?
6. Can either family release too early?
7. Can either family fail to release after genuine AFWall readiness?
8. What happens if AFWall chains are present but orphaned?
9. What happens if state files are missing but live rules remain?
10. What happens if state files remain but live rules are missing?
11. What does manual Action remove and restore?
12. What does watchdog unblock remove and restore?
13. What happens across a reboot boundary?
14. Which files are installed, generated, ignored, and cleaned up?

## Documentation rules

README is for end-users. Keep it operational: requirements, install, profiles, recovery, checks, common problems.

ADVANCED.md is for deeper technical reference.

AGENTS.md is for development rules and historical pitfalls.

When behaviour changes, update all three if their audience is affected. Remove stale contradictory wording instead of appending new text that conflicts with old text.
