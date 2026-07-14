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
5. Install v5.0.0 or newer.
6. Select a new profile or run the configuration tool.
7. Reboot again.

Old external configuration files are not used by v5.

## Profiles

| Profile | Purpose |
|---|---|
| **Standard** | Recommended for most users. Uses the kernel firewall block without extra radio toggles. |
| **Minimal** | Uses the main firewall handoff with fewer optional protections. |
| **Strict** | Adds stronger temporary protection. Network recovery may take longer. |
| **Recovery-friendly** | Uses easier automatic recovery if AFWall+ never becomes ready. This is less strict. |
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

| Key | What it does | Accepted values or examples | Default |
|---|---|---|---:|
| `LEAK_PROTECTION_MODE` | Selects the main protection style while AFWall+ starts. | `balanced`, `strict`, `recovery_friendly` | `balanced` |
| `INTEGRATION_MODE` | Controls whether the module installs its own boot-time network block. | `auto`, `prefer_module`, `prefer_afwall`, `off` | `auto` |
| `POLL_INTERVAL_SECS` | Sets how often the module checks the live AFWall+ rules during boot. | Whole seconds from `1` upward; examples: `1`, `2`, `5` | `2` |
| `FAST_STABLE_SECS` | Keeps compatibility with older timing logic; v5 does not use it as a faster release path. | Whole seconds from `0` upward; examples: `0`, `2`, `6` | `6` |
| `SLOW_STABLE_SECS` | Sets how long the final AFWall+ rules must stay unchanged before traffic is released. | Whole seconds from `0` upward; examples: `3`, `6`, `10` | `6` |
| `AFWALL_DELAY_GRACE_SECS` | Adds extra time after the AFWall+ startup delay before final rule checking begins. | Whole seconds from `0` upward; examples: `0`, `4`, `10` | `4` |
| `AFWALL_PREFS_RETRY_SECS` | Sets how often the module retries reading AFWall+ startup settings. | Whole seconds from `0` upward; examples: `1`, `2`, `5` | `2` |
| `WATCHDOG_SERVICE_SECS` | Sets the maximum wait from module service start before the watchdog acts. | Whole seconds from `0` upward; examples: `120`, `300`, `600` | `300` |
| `WATCHDOG_BOOT_COMPLETED_SECS` | Sets the maximum wait after Android reports boot complete before the watchdog acts. | Whole seconds from `0` upward; examples: `120`, `240`, `600` | `240` |
| `WATCHDOG_POLICY` | Chooses what happens if the module cannot prove that AFWall+ is ready. | `block`, `unblock` | `block` |
| `BLOCK_FORWARD` | Temporarily blocks forwarded traffic from hotspot, USB tethering, or Bluetooth tethering. | `1` to enable, `0` to disable | `1` |
| `BLOCK_INPUT` | Temporarily blocks incoming connections during boot while keeping loopback available. | `1` to enable, `0` to disable | `0` |
| `RADIO_SUPPRESSION` | Optionally pauses lower-level network services in addition to the firewall block. | `off`, `safe`, `strict` | `off` |
| `AFWALL_PACKAGE` | Selects the AFWall+ package that the module inspects. | `auto`, `dev.ukanth.ufirewall`, `dev.ukanth.ufirewall.donate`, `com.ukanth.ufirewall` | `auto` |
| `VPN_LOCKDOWN_MODE` | Controls how Android always-on VPN lockdown is handled during boot and recovery. | `off`, `preserve`, `restore` | `off` |
| `VPN_PROVIDER_PACKAGES` | Selects the VPN app package used by VPN lockdown restore. | `auto`, or package names separated by spaces or commas; examples: `ch.protonvpn.android`, `com.wireguard.android` | `auto` |
| `DEBUG` | Enables more detailed boot logging. | `1` to enable, `0` to disable | `0` |
| `TRANSPORT_ABSENCE_STABLE_SECS` | Sets how long a missing AFWall+ transport chain must stay missing before restore continues. | Whole seconds from `0` upward; examples: `1`, `3`, `5` | `3` |
| `TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT` | Uses a shorter missing-transport wait after Android completes booting. | Whole seconds from `0` upward; examples: `1`, `2`, `5` | `2` |
| `TRANSPORT_ORPHAN_STABLE_SECS` | Sets how long an unreachable transport chain must remain unchanged before it is treated as unused. | Whole seconds from `0` upward; examples: `1`, `3`, `5` | `3` |
| `TRANSPORT_INCONCLUSIVE_SECS` | Sets how long an unclear transport state may continue before a verified restore attempt. | Whole seconds from `0` upward; examples: `10`, `20`, `30` | `20` |
| `TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT` | Uses a shorter unclear-transport timeout after Android completes booting. | Whole seconds from `0` upward; examples: `5`, `8`, `15` | `8` |
| `BLACKOUT_REASSERT_INTERVAL` | Sets how often the module checks and repairs its firewall block while waiting for AFWall+. | Whole seconds from `0` upward; examples: `5`, `10`, `20` | `10` |
| `RADIO_REASSERT_INTERVAL` | Sets how often lower-level radio or service suppression is re-applied while restore is pending. | Whole seconds from `0` upward; examples: `5`, `15`, `30` | `15` |
| `UNLOCK_POLL_INTERVAL` | Sets how often unlock status is checked for diagnostics. Unlock does not release the firewall. | Whole seconds from `0` upward; examples: `5`, `10`, `30` | `10` |
| `AFWALL_RULE_DENSITY_MIN` | Keeps a diagnostic rule-count threshold for compatibility. v5 does not use it to release traffic early. | Whole numbers from `0` upward; examples: `0`, `3`, `5` | `3` |

Most users should change only the profile, watchdog policy, tethering protection, inbound protection, radio suppression, VPN handling, and debug logging.

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

### Network access returns only after the watchdog

AFWall+ probably started or applied rules too late.

Check the AFWall+ startup delay and root access. Do not change the watchdog to `unblock` only to hide a startup problem. `unblock` can restore connectivity without proof that AFWall+ is ready.

### IPv6 remains blocked

Check that IPv6 support and IPv6 control are enabled in AFWall+.

If AFWall+ does not control IPv6, the module keeps IPv6 blocked by design. Use the Action button only when you intentionally want to remove that protection.

### Wi-Fi or mobile data returns slowly

Use the **Standard** profile and keep radio suppression off unless your device needs it.

Stricter profiles can delay network recovery because they also manage lower-level network services.

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
- watchdog behaviour;
- VPN lockdown handling;
- technical diagnostics and troubleshooting details.
