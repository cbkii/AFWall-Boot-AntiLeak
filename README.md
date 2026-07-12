# AFWall Boot AntiLeak

AFWall Boot AntiLeak is a Magisk module for rooted Android devices that blocks device network traffic during boot until AFWall+ has actually applied its firewall rules.

It is intended for users who already rely on AFWall+ and want the boot handoff to be fail-closed, inspectable, and recoverable.

## What it protects against

Android can bring Wi-Fi, mobile data, VPN, DNS, Google services, app sync, and other network activity up before AFWall+ finishes applying its rules. That creates a short boot-time leak window.

This module closes that window by installing temporary module-owned firewall rules early in boot, then removing them only after AFWall+ is proven ready from the live iptables rule graph.

## How this fork differs from the original upstream module

The original AFWall boot anti-leak module was intentionally simple: during late boot it repeatedly disabled Wi-Fi and mobile data until the AFWall process appeared, waited briefly, then re-enabled connectivity.

This fork is a much stricter and more observable handoff system.

| Area | Original module | This fork |
|---|---|---|
| Main proof of AFWall readiness | AFWall process exists | Live rooted `OUTPUT -> afwall` iptables graph is present, non-trivial, and stable |
| Primary protection | Disable Wi-Fi/mobile data with `svc` | Kernel firewall blackout using module-owned iptables chains |
| IPv4/IPv6 handling | Not family-aware | IPv4 and IPv6 are handled independently |
| OUTPUT protection | No dedicated temporary OUTPUT chain model | Temporary OUTPUT blackout, with raw preferred and filter fallback/shadow coverage |
| Tethering/forwarded traffic | Not covered | Optional temporary FORWARD blackout |
| Inbound traffic | Not covered | Optional temporary INPUT blackout |
| AFWall process state | Treated as enough | Diagnostic/corroborating only; not sufficient for release |
| Unlock state | Not modelled | Diagnostic only; family release does not require unlock |
| Stale/orphan AFWall chains | Not modelled | Only chains reachable from the live AFWall graph count |
| Recovery | Disable/remove module manually | Magisk Action button, watchdog policy, logs, state files, emergency cleanup |
| Configuration | Minimal | Installer profiles plus module-local `config.sh` and optional `config.local.sh` |

## Requirements

Before installing, make sure these are true:

- Android 8.0 or newer.
- Magisk is installed and working.
- AFWall+ is installed.
- AFWall+ firewall is enabled.
- AFWall+ rules have been applied at least once.
- You have a recovery path: Magisk app, root shell, ADB, or recovery module removal.

This module is developed and tested primarily on modern Android/Pixel-style devices. It should not be installed on a device where you cannot recover from a fail-closed network block.

## Required AFWall+ settings

Open AFWall+ before first boot with this module and check:

| AFWall+ setting | Recommended value |
|---|---|
| Firewall enabled | Enabled |
| Apply rules | Apply once before installing |
| Enable firewall on boot | Enabled |
| Fix Startup Data Leak | Disabled |
| Startup delay | `0`, unless you intentionally need a delay |
| IPv6 support | Enabled if your network/VPN uses IPv6 |

Disable AFWall+'s own startup-leak option because this module replaces that job. Running both can create confusing handoff behaviour.

## Install

1. Download the latest release ZIP.
2. Flash it in Magisk.
3. Choose a profile when prompted.
4. Reboot.
5. Let the first boot settle before changing settings again.

The installer writes module-local configuration only. Old external files under `/data/adb/AFWall-Boot-AntiLeak/` are ignored and should be removed when upgrading from older releases.

## Profiles

| Profile | Behaviour | Use when |
|---|---|---|
| Standard | Recommended default. Uses the firewall blackout as primary protection and leaves Wi-Fi/mobile service state alone by default. | Most users, especially modern Pixel-style devices. |
| Minimal | Keeps the core OUTPUT handoff but reduces optional coverage such as tether/inbound extras. | You want fewer moving parts and do not need tether-client protection. |
| Strict | Enables stronger optional suppression such as radio/service handling and INPUT coverage. | You accept slower reconnects for more aggressive temporary suppression. |
| Recovery-friendly | Uses recovery-oriented watchdog behaviour. | You are testing and want easier automatic recovery if AFWall proof never arrives. |
| Custom | Lets you choose the main options. | You know which trade-offs you want. |

## What happens during boot

A normal boot follows this model:

1. `post-fs-data.sh` runs early and installs the temporary module firewall blackout.
2. The module records state showing which blackout layers were installed.
3. `service.sh` starts later and verifies that the blackout is still intact.
4. If the expected blackout is damaged or missing, the module attempts to repair it.
5. The service loop records the first observed AFWall process time and reads AFWall's startup-delay preferences.
6. If delayed startup is enabled, the blackout remains in place through the configured delay plus `AFWALL_DELAY_GRACE_SECS`.
7. Each family snapshot is exposed only after two byte-identical filter-table reads, then the rooted `OUTPUT -> afwall` graph must be structurally closed, non-trivial, order-stable, and unchanged for `SLOW_STABLE_SECS`.
8. IPv4 and IPv6 are released independently when each family is ready.
9. Optional transport/radio/VPN restoration is handled after, and does not block family firewall release.
10. Once handoff is complete, AFWall+ is the only active firewall layer.

AFWall process visibility establishes a conservative generation epoch; it is not readiness proof. Unlock state, file timestamps, rule density, boot completion, VPN routes, and similar signals remain diagnostics only and cannot shorten the final graph-stability window.

## Configuration files

Runtime configuration is module-local:

```sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
```

`config.sh` is the packaged default file. Do not edit it unless you are deliberately modifying the installed module.

`config.local.sh` is optional local override state, usually generated by the installer or `reconfigure.sh`. Put user overrides there.

Old external paths such as these are legacy and are not runtime configuration sources:

```sh
/data/adb/AFWall-Boot-AntiLeak/config.sh
/data/adb/AFWall-Boot-AntiLeak/installer.cfg
```

If those files exist after upgrading, remove them or perform a clean uninstall/reboot/reinstall.

## Main options

| Key | Recommended/default | Meaning |
|---|---:|---|
| `LEAK_PROTECTION_MODE` | `balanced` | Main safety profile: `balanced`, `strict`, or `recovery_friendly`. |
| `INTEGRATION_MODE` | `auto` | How to coexist with AFWall's own startup script handling. |
| `POLL_INTERVAL_SECS` | `2` | Seconds between AFWall graph checks during handoff. |
| `FAST_STABLE_SECS` | `6` | Compatibility threshold kept equal to the conservative window; generation-aware handoff does not use a shorter corroborated path. |
| `SLOW_STABLE_SECS` | `6` | Final order-sensitive rooted-graph stability window after generation eligibility opens. |
| `AFWALL_DELAY_GRACE_SECS` | `4` | Extra guard time after AFWall's configured delayed-start deadline. |
| `AFWALL_PREFS_RETRY_SECS` | `2` | Retry interval while AFWall startup preferences are unavailable. |
| `WATCHDOG_SERVICE_SECS` | `300` | Absolute watchdog from service start. |
| `WATCHDOG_BOOT_COMPLETED_SECS` | `240` | Absolute watchdog after Android reports boot complete. |
| `WATCHDOG_POLICY` | `block` | `block` keeps unresolved protection; `unblock` removes module suppression for recovery. |
| `BLOCK_FORWARD` | `1` | Temporarily protect tethered clients with a FORWARD blackout. |
| `BLOCK_INPUT` | `0` | Optional temporary INPUT blackout. |
| `RADIO_SUPPRESSION` | `off` | Optional lower-layer suppression: `off`, `safe`, or `strict`. |
| `AFWALL_PACKAGE` | `auto` | AFWall package hint: auto, free, donate, or legacy package. |
| `VPN_LOCKDOWN_MODE` | `off` | Optional Android always-on VPN lockdown handling. |
| `VPN_PROVIDER_PACKAGES` | `auto` | Auto-detect or specify VPN package names. |
| `DEBUG` | `0` | Verbose logs for diagnostics. |

Most users should change only the profile, watchdog policy, tether/INPUT coverage, radio suppression, VPN handling, and debug logging.

## Reconfigure after install

Run as root:

```sh
sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
reboot
```

Configuration changes apply on the next boot. They do not reconfigure a handoff already in progress.

## Recovery

### Use the Magisk Action button

In Magisk, press the module's Action button. It latches manual override, stops the service loop, removes module-owned blackout rules, and restores lower-layer state that the module changed.

### Run the action script manually

```sh
su -c 'sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh'
```

### Disable the module before reboot

```sh
su -c 'touch /data/adb/modules/AFWall-Boot-AntiLeak/disable'
reboot
```

### Remove local overrides

```sh
su -c 'rm -f /data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh'
reboot
```

## Useful checks

View the module log:

```sh
su -c 'tail -120 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log'
```

Check AFWall rules:

```sh
su -c 'iptables -t filter -S | grep afwall'
su -c 'ip6tables -t filter -S | grep afwall'
```

Check module-owned rules:

```sh
su -c 'iptables -t raw -S | grep MOD_PRE_AFW'
su -c 'iptables -t filter -S | grep MOD_PRE_AFW'
su -c 'ip6tables -t raw -S | grep MOD_PRE_AFW'
su -c 'ip6tables -t filter -S | grep MOD_PRE_AFW'
```

## Common problems

### Device stays offline after boot

Likely causes:

- AFWall+ firewall is disabled.
- AFWall+ rules were never applied.
- AFWall+ did not start or did not apply rules during boot.
- AFWall+ `Fix Startup Data Leak` is still enabled and conflicting.
- AFWall's rule graph is present but trivial or still changing.
- `WATCHDOG_POLICY=block` kept unresolved protection active.

Use the Action button to recover, then inspect `boot.log`.

### Network comes back only after watchdog recovery

AFWall is starting too slowly or applying rules late. Prefer fixing AFWall startup/rule application over setting watchdog policy to `unblock`. Watchdog unblock is recovery behaviour, not proof that AFWall was ready.

### IPv6 tests fail

That does not automatically mean a leak or module failure. It may mean your network, VPN, AFWall policy, or test target does not support IPv6/ICMPv6. Check the module log and AFWall IPv6 settings.

### There are three config files

Only these two are current runtime config sources:

```sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
```

If this exists, it is legacy and ignored:

```sh
/data/adb/AFWall-Boot-AntiLeak/config.sh
```

Remove the legacy file after a clean uninstall/reinstall.

## Clean upgrade from old versions

For upgrades from older v2/v3/v4 development builds:

1. Remove the module in Magisk.
2. Reboot once.
3. Remove stale external files under `/data/adb/AFWall-Boot-AntiLeak/` if present.
4. Reboot again if old service hooks were removed.
5. Install the new ZIP.
6. Reboot.
7. Check `boot.log`.

## Installed paths

| Path | Purpose |
|---|---|
| `/data/adb/modules/AFWall-Boot-AntiLeak/` | Installed Magisk module files. |
| `/data/adb/modules/AFWall-Boot-AntiLeak/config.sh` | Packaged defaults. |
| `/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh` | Local overrides. |
| `/data/adb/modules/AFWall-Boot-AntiLeak/action.sh` | Manual recovery action. |
| `/data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh` | Re-run configuration. |
| `/data/adb/AFWall-Boot-AntiLeak/logs/boot.log` | Current boot log. |
| `/data/adb/AFWall-Boot-AntiLeak/state/` | Current boot state. |

## What this module does not do

- It does not replace AFWall+.
- It does not create your AFWall rules.
- It does not prove VPN privacy by itself.
- It does not blindly re-enable radios the user had disabled before boot.
- It does not treat AFWall process presence as sufficient readiness proof.
- It does not remove AFWall-owned scripts or application data.

## Safety model in one sentence

The module blocks first, proves AFWall from the live rooted firewall graph, releases each IP family only after stable proof, and provides explicit recovery if proof never arrives.
