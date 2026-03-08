# AFWall Boot AntiLeak — v2.0.0

A Magisk module that **blocks all internet traffic at the kernel level** during
early Android boot, before AFWall+ has applied its firewall rules.
When AFWall+'s rules are detected as active the block is automatically removed.

---

## How it works

| Phase | Action |
|---|---|
| `post-fs-data` | Installs a temporary `DROP` chain (`MOD_PRE_AFW` / `MOD_PRE_AFW_V6`) in the iptables raw table (falls back to filter). Loopback is exempted. |
| `service` (background) | Polls iptables every 2 s for AFWall's `afwall` chain and OUTPUT jump. Removes the module block only when AFWall rules are confirmed. Falls back to a configurable timeout (default 120 s). |
| `action` (manual) | Emergency recovery: removes block and cleans up. Accessible from the Magisk app. |
| `uninstall` | Removes all module-owned chains and state files. |

---

## Requirements

- **AFWall+** (`dev.ukanth.ufirewall` or donate variant) — without it the
  timeout failsafe will eventually unblock (see `TIMEOUT_SECS`).
- **Magisk >= 30.6**
- **Android 16** (tested on Pixel 9a / `tegu`); works on earlier versions.

---

## Configuration

Edit `config.sh` in the module directory (or drop a copy at
`/data/adb/AFWall-Boot-AntiLeak/config.sh` to survive updates):

| Variable | Default | Description |
|---|---|---|
| `INTEGRATION_MODE` | `auto` | How to coordinate with AFWall+'s own startup leak protection (see below). |
| `TIMEOUT_SECS` | `120` | Seconds before force-unblocking if AFWall never becomes ready. |
| `SETTLE_SECS` | `5` | Seconds to wait after AFWall rules are first detected before removing the block. |
| `DEBUG` | `0` | Set to `1` for verbose `[DEBUG]` entries in the log. |

### Integration modes

| Mode | Behaviour |
|---|---|
| `auto` | Inspect AFWall state. If AFWall startup-leak chains are found the module block supplements them; otherwise it is the sole protection. |
| `prefer_module` | Always install the module block, regardless of AFWall state. |
| `prefer_afwall` | Skip the module block if AFWall startup-leak chains are already active; install if they are absent. |
| `off` | Disable module blocking entirely (emergency use only). |

---

## Logs and state

```
/data/adb/AFWall-Boot-AntiLeak/
  logs/
    boot.log          # all events from every boot phase
  state/
    block_installed   # present while module block is active
    ipv4_table        # table used for IPv4 block (raw or filter)
    ipv6_table        # table used for IPv6 block (raw or filter)
    integration_mode  # integration mode chosen for this boot
```

---

## Fallback table

| Failure | Action taken |
|---|---|
| `iptables` not found | Log error; IPv4 unprotected |
| `ip6tables` not found | Log warning; IPv6 unprotected (IPv4 still protected) |
| raw table unavailable | Fall back to filter table |
| filter table also fails | Log critical warning; block not installed |
| AFWall absent or slow | Timeout failsafe (`TIMEOUT_SECS`) unblocks |
| `svc` unavailable | Radio toggles silently skipped (not primary protection) |
| State files lost | Removal attempts both raw and filter tables defensively |

---

## AFWall+ compatibility

This module is compatible with AFWall+'s optional **Fix Startup Data Leak**
preference:

- **`auto` / `prefer_module`** — Module block installs alongside AFWall's own
  protection for belt-and-suspenders coverage. Block is removed only after
  AFWall's main chains (`-N afwall`, `-A OUTPUT … -j afwall`) are confirmed.
- **`prefer_afwall`** — Module defers to AFWall if startup-leak chains are
  already present; installs its own block otherwise.
- The module **never removes AFWall-owned chains** (only `MOD_PRE_AFW` /
  `MOD_PRE_AFW_V6` are touched).

---

## ChangeLog

* **v2.0.0** — Major redesign: kernel-level iptables block (raw → filter
  fallback), IPv6 support, AFWall rule-based release condition, integration
  mode system, configurable timeout/settle, persistent logging and state
  tracking, legacy artifact cleanup, `action.sh` / `uninstall.sh`.
* v1.3 — Legacy: automatic deletion of afwallstart from both
  `/data/adb/post-fs-data.d/` and `/data/adb/system.d/`.
* v1.2 — Legacy: added delay before enabling internet back.
* v1.1 — Legacy: enforced WiFi and Mobile Data block.
* v1.0 — Legacy: first release.
