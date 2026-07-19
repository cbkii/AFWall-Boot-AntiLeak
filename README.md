# AFWall Boot AntiLeak

AFWall Boot AntiLeak is a Magisk module for rooted Android devices that use AFWall+.

It blocks network traffic during boot. It removes the temporary block only after AFWall+ has applied a complete and stable firewall ruleset.

> **Important:** This module is fail-closed by default. If AFWall+ does not become ready, the device may stay offline. Use the Magisk **Action** button to remove the module-owned blocks and restore connectivity.

## Compatibility

The main v5 target is:

- Android 16;
- Magisk 30.6 or newer;
- modern 64-bit Android devices, with primary testing on Pixel devices.

The installer also allows Android 10 or newer with Magisk 27 or newer. These older combinations are not the main test target.

AFWall+ Free and Donate packages are supported.

## What it does

During boot, the module:

1. adds a temporary kernel firewall block before Android finishes starting;
2. checks that the temporary block is still present;
3. watches the live AFWall+ firewall rules;
4. waits for the final ruleset to stop changing;
5. respects the startup delay configured in AFWall+;
6. releases IPv4 and IPv6 separately;
7. keeps IPv6 blocked if AFWall+ is not configured to control IPv6;
8. restores only the network state that the module changed.

The AFWall+ app process alone is not treated as proof that the firewall is ready.

## Before installation

Open AFWall+ and set these options before the first reboot with this module:

| AFWall+ option | Required setting |
|---|---|
| Firewall | Enabled |
| Apply rules | Apply once before installing |
| Enable firewall on boot | Enabled |
| Fix Startup Data Leak | Disabled |
| Startup delay | `0` is recommended |
| IPv6 support | Enable it if your network or VPN uses IPv6 |

The AFWall+ **Fix Startup Data Leak** option must be disabled because this module replaces that function.

Also remove other boot anti-leak scripts from these directories if you installed any:

```text
/data/adb/service.d/
/data/adb/post-fs-data.d/
```

Do not remove scripts unless you know they belong to another anti-leak setup.

## Installation

1. Download `AFWall-Boot-AntiLeak.zip` from the latest release.
2. Install the ZIP in Magisk.
3. Select a profile in the installer.
4. Check the AFWall+ settings shown above.
5. Reboot.
6. Allow extra time for the first boot.
7. Confirm that AFWall+ is enabled and network access returns normally.

## Upgrade from an older version

A clean upgrade is recommended for v5 because it uses only module-local configuration.

1. Remove the old module in Magisk.
2. Reboot once.
3. Check only these module-owned locations for old files you no longer need:

   ```text
   /data/adb/modules/AFWall-Boot-AntiLeak/
   /data/adb/AFWall-Boot-AntiLeak/
   ```

4. Do not delete unrelated files or directories under `/data/adb`.
5. Install v5.1.0 or newer.
6. Select a new profile or run the configuration tool.
7. Reboot again.

Old external configuration files are not used by v5.

## Profiles

| Profile | Purpose |
|---|---|
| **Standard** | Recommended for most users. Uses the kernel firewall block without extra radio toggles. |
| **Minimal** | Uses the main firewall handoff with fewer optional protections. |
| **Strict** | Adds inbound and tether protection, strict radio handling, and VPN restore behavior. Network recovery may take longer. |
| **Recovery-friendly** | Removes module blocks when a timeout is reached without AFWall+ proof. This restores access more easily but is less fail-closed. |
| **Custom** | Lets you choose individual options. |

Use **Standard** unless you have a clear reason to choose another profile.

## Configuration

The module uses two configuration files inside its Magisk module directory:

```text
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
```

### File order and precedence

The files are loaded in this order:

| Order | Source | Purpose |
|---:|---|---|
| 1 | Built-in safe fallbacks | Used when a key is missing or invalid. |
| 2 | `config.sh` | Packaged defaults. Loaded first. A module update may replace this file. |
| 3 | `config.local.sh` | Optional user overrides. Loaded after `config.sh`. A matching key here takes priority. |

Important rules:

- Use the installer or `reconfigure.sh` to create `config.local.sh`.
- Do not normally edit `config.sh`; updates may replace it.
- A key in `config.local.sh` overrides the same key from `config.sh`.
- A key that is not in `config.local.sh` keeps the value from `config.sh`.
- Invalid values are replaced with a safe fallback and recorded in the boot log.
- Files outside the module directory are not loaded as runtime configuration.

To change settings after installation, run:

```sh
su -c 'sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh'
reboot
```

The new settings take effect on the next boot.

### Configuration keys

| Key | What changes when you use it | Accepted values and effect | Default |
|---|---|---|---:|
| `LEAK_PROTECTION_MODE` | Records the installer profile family in logs and support reports. Actual blocks, radio handling, VPN handling, and timeout behavior use separate keys. | `balanced` = Standard or Minimal profile label; `strict` = Strict profile label; `recovery_friendly` = Recovery-friendly profile label. Changing only this key does not change the other settings. | `balanced` |
| `INTEGRATION_MODE` | Decides whether this module installs its early firewall block when an AFWall-owned startup script is present. | `auto` = install the module block and supplement any AFWall script; `prefer_module` = always install the module block; `prefer_afwall` = skip the module block only when an AFWall-owned `afwallstart` script is detected, otherwise install it; `off` = never install this module's boot block. | `auto` |
| `POLL_INTERVAL_SECS` | Trades faster AFWall+ handoff detection against extra CPU use and iptables reads during boot. | Whole seconds from `1` upward; examples: `1`, `2`, `5`. Lower values react sooner but perform more checks. | `2` |
| `FAST_STABLE_SECS` | Keeps the old fast timing field available for compatibility and post-boot calculations. The v5 generation guard does not use it to bypass full rule proof. | Whole seconds from `0` upward; examples: `0`, `2`, `6`. | `6` |
| `SLOW_STABLE_SECS` | Requires the final ordered AFWall+ rule graph to stay unchanged before temporary OUTPUT protection is removed. | Whole seconds from `0` upward; examples: `3`, `6`, `10`. | `6` |
| `AFWALL_DELAY_GRACE_SECS` | Adds scheduling margin after AFWall+'s own startup delay so the module does not release traffic during a delayed second rule pass. | Whole seconds from `0` upward; examples: `0`, `4`, `10`. | `4` |
| `AFWALL_PREFS_RETRY_SECS` | Limits repeated reads of encrypted AFWall+ preference files while they are unavailable, reducing boot I/O. | Whole seconds from `0` upward; examples: `1`, `2`, `5`. | `2` |
| `WATCHDOG_SERVICE_SECS` | Starts the first timeout decision after the module worker has run for this long, even if Android has not finished booting. | Whole seconds from `0` upward; examples: `120`, `300`, `600`. | `300` |
| `WATCHDOG_BOOT_COMPLETED_SECS` | Starts a second timeout decision after Android reports boot complete, preventing an endless offline state after the framework is ready. | Whole seconds from `0` upward; examples: `120`, `240`, `600`. | `240` |
| `WATCHDOG_POLICY` | Defines the safety result when a timeout is reached without complete AFWall+ readiness proof. | `block` = keep unresolved traffic blocked and continue low-rate diagnostics; `unblock` = remove module-owned blocks and restore connectivity even though AFWall+ readiness was not proven. | `block` |
| `BLOCK_FORWARD` | Extends temporary protection to traffic routed through the phone, including hotspot, USB tethering, and Bluetooth tethering. | `1` = enable; `0` = disable. | `1` |
| `BLOCK_INPUT` | Rejects new inbound network connections during handoff while keeping local loopback traffic available. | `1` = enable; `0` = disable. | `0` |
| `RADIO_SUPPRESSION` | Chooses between firewall-only protection and additional Wi-Fi, mobile-data, interface, and tether-service changes. | `off` = firewall-only with no radio or service changes; `safe` = currently the same non-disruptive radio behavior as `off`, retained as a separate profile value; `strict` = disable Wi-Fi and mobile data, quiesce interfaces, and stop tethering until restore. | `off` |
| `AFWALL_PACKAGE` | Determines which app process and preference directory are used to read AFWall+ startup delay and IPv6 ownership. | `auto` = detect Donate, then Free, then legacy; `dev.ukanth.ufirewall` = AFWall+ Free; `dev.ukanth.ufirewall.donate` = AFWall+ Donate; `com.ukanth.ufirewall` = legacy AFWall package. | `auto` |
| `VPN_LOCKDOWN_MODE` | Chooses whether Android always-on VPN and lockdown state is ignored, observed, or actively enforced and later restored. | `off` = do not manage lockdown state; `preserve` = record the existing state and avoid settings writes; `restore` = enforce the selected provider during protection and restore the recorded pre-boot state after handoff. | `off` |
| `VPN_PROVIDER_PACKAGES` | Identifies which VPN app may be targeted when `restore` mode needs to enforce or restore Android lockdown. | `auto` = use the currently configured always-on VPN provider when available; explicit package names = use only those apps, separated by spaces or commas; `ch.protonvpn.android` = Proton VPN example; `com.wireguard.android` = WireGuard example. | `auto` |
| `DEBUG` | Adds detailed state transitions and decision reasons to `boot.log`. It does not change firewall decisions. | `1` = enable; `0` = disable. | `0` |
| `TRANSPORT_ABSENCE_STABLE_SECS` | Allows network-service restoration after an expected AFWall+ Wi-Fi or mobile subtree has remained missing, avoiding a permanent wait on devices that do not create it. | Whole seconds from `0` upward; examples: `1`, `3`, `5`. | `3` |
| `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT` | Shortens the missing-subtree wait after Android is fully booted so connectivity is not delayed unnecessarily. | Whole seconds from `0` upward; examples: `1`, `2`, `5`. | `2` |
| `TRANSPORT_ORPHAN_STABLE_SECS` | Allows restoration when a transport subtree exists but is not reachable from the live AFWall+ graph, avoiding deadlock on stale chains. | Whole seconds from `0` upward; examples: `1`, `3`, `5`. | `3` |
| `TRANSPORT_INCONCLUSIVE_SECS` | Forces a verified transport restore attempt after the transport state cannot be classified for this long. | Whole seconds from `0` upward; examples: `10`, `20`, `30`. | `20` |
| `TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT` | Uses a shorter unclassified-state limit after Android reports boot complete. | Whole seconds from `0` upward; examples: `5`, `8`, `15`. | `8` |
| `BLACKOUT_REASSERT_INTERVAL` | Limits how often module-owned firewall chains are rechecked and repaired while handoff is pending. Lower values increase iptables I/O. | Whole seconds from `0` upward; examples: `5`, `10`, `20`. | `10` |
| `RADIO_REASSERT_INTERVAL` | Limits how often strict lower-level network suppression is reapplied before restore. It has no practical effect when radio suppression is `off`. | Whole seconds from `0` upward; examples: `5`, `15`, `30`. | `15` |
| `UNLOCK_POLL_INTERVAL` | Controls diagnostic checks for user-unlock and credential-storage availability. Unlock never proves AFWall+ readiness or releases traffic. | Whole seconds from `0` upward; examples: `5`, `10`, `30`. | `10` |
| `AFWALL_RULE_DENSITY_MIN` | Preserves an old diagnostic rule-count threshold for log compatibility. v5 release decisions ignore it. | Whole numbers from `0` upward; examples: `0`, `3`, `5`. | `3` |

Most users should change only the profile, timeout action, tethering protection, inbound protection, radio handling, VPN handling, and detailed logging.

## Normal boot behaviour

A short offline period during boot is normal.

The offline period may be longer when:

- AFWall+ has a startup delay;
- encrypted app storage is not available yet;
- AFWall+ is slow to obtain root;
- the firewall rules are still changing;
- the device has not been unlocked after a reboot.

If AFWall+ proves control of IPv4 but not IPv6, IPv4 may work while IPv6 remains blocked. This is an intentional safe state.

## Recovery

### Magisk Action button

Open Magisk, find the module, and press **Action**.

The Action script:

- stops the module worker;
- removes the module-owned firewall blocks;
- restores network state changed by the module;
- prints recent diagnostic information.

### Run recovery from a root shell

```sh
su -c 'sh /data/adb/modules/AFWall-Boot-AntiLeak/action.sh'
```

### Disable the module before reboot

```sh
su -c 'touch /data/adb/modules/AFWall-Boot-AntiLeak/disable'
reboot
```

Use this when the Action button is not available.

## Logs and checks

View the boot log:

```sh
su -c 'tail -120 /data/adb/AFWall-Boot-AntiLeak/logs/boot.log'
```

Check AFWall+ firewall rules:

```sh
su -c 'iptables -t filter -S | grep afwall'
su -c 'ip6tables -t filter -S | grep afwall'
```

Check temporary module rules:

```sh
su -c 'iptables -t raw -S | grep MOD_PRE_AFW'
su -c 'iptables -t filter -S | grep MOD_PRE_AFW'
su -c 'ip6tables -t raw -S | grep MOD_PRE_AFW'
su -c 'ip6tables -t filter -S | grep MOD_PRE_AFW'
```

Temporary module rules are expected while the handoff is still in progress. They should normally disappear after AFWall+ is confirmed ready. An IPv6 block may remain when AFWall+ does not control IPv6.

## Common problems

### The device stays offline

Check these items:

- AFWall+ firewall is enabled;
- AFWall+ rules were applied at least once;
- firewall on boot is enabled in AFWall+;
- AFWall+ received root access;
- **Fix Startup Data Leak** is disabled in AFWall+;
- no other anti-leak script is changing the same firewall rules.

Use the Magisk Action button to restore access, then inspect the boot log.

### Network access returns only after timeout recovery

AFWall+ probably started or applied rules too late.

Check the AFWall+ startup delay and root access. Do not change `WATCHDOG_POLICY` to `unblock` only to hide a startup problem. `unblock` can restore connectivity without proof that AFWall+ is ready.

### IPv6 remains blocked

Check that IPv6 support and IPv6 control are enabled in AFWall+.

If AFWall+ does not control IPv6, the module keeps IPv6 blocked by design. Use the Action button only when you intentionally want to remove that protection.

### Wi-Fi or mobile data returns slowly

Use the **Standard** profile and keep radio suppression off unless your device needs it.

The **Strict** profile can delay network recovery because it also changes lower-level network services.

## What this module does not do

- It does not replace AFWall+.
- It does not create AFWall+ app rules for you.
- It does not prove that a VPN is private or correctly configured.
- It does not guarantee compatibility with every kernel, ROM, firewall module, or custom script.
- It does not remove AFWall+ data or AFWall+-owned files.

## Advanced information

See [ADVANCED.md](ADVANCED.md) for:

- detailed boot stages;
- firewall rule verification;
- timeout and recovery behaviour;
- VPN lockdown handling;
- technical diagnostics and troubleshooting details.
