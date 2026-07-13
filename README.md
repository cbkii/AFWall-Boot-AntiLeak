# AFWall Boot AntiLeak

AFWall Boot AntiLeak is a Magisk module for rooted Android devices that use AFWall+.

It blocks network traffic during boot. It removes the temporary block only after AFWall+ has applied a complete and stable firewall ruleset.

> **Important:** This module is fail-closed by default. If AFWall+ does not become ready, the device may stay offline. Uses the **Action** button to remove all blockers (failsafe to restore xonnectivity).

## Compatibility

The main v5 target is:

- Android 16;
- Magisk 30.6 or newer;
- modern 64-bit Android devices (tested on Pixel devices)

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

A clean upgrade is recommended for v5+, as it uses only module-local configuration.

1. Remove the old module in Magisk.
2. Reboot once.
3. Remove/move any relic module files/configs out of `/data/adb/**`
4. Install ≥ v5.0.0.
5. Select a new profile or run the configuration tool.
6. Reboot again.

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

## Change settings after installation

Run:

```sh
su -c 'sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh'
reboot
```

The new settings take effect on the next boot.

The module reads configuration only from:

```text
/data/adb/modules/AFWall-Boot-AntiLeak/config.sh
/data/adb/modules/AFWall-Boot-AntiLeak/config.local.sh
```

Most users should use the installer or `reconfigure.sh` instead of editing these files manually.

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
- full configuration options;
- developer and troubleshooting details.
