#!/system/bin/sh
# AFWall Boot AntiLeak v4.3.0 - Lower-layer suppression subsystem
# POSIX/ash compatible. No bashisms. Sourced by common.sh; do not execute directly.
#
# PURPOSE
# ───────
# This file implements the lower-layer anti-leak tier that runs BENEATH the
# netfilter (iptables) hard block.  It provides best-effort service-level and
# interface-level suppression to reduce network connectivity during the
# pre-AFWall boot window.
#
# DESIGN RULES
# ────────────
#   1. All operations are BEST-EFFORT.  They supplement, never replace, the
#      iptables hard block.  If anything here fails, the iptables block remains
#      the authoritative hard stop.
#   2. Every change is tracked in per-boot state files under LL_STATE_DIR so
#      only module-changed state is restored.
#   3. NEVER blindly re-enable connectivity the user had disabled before boot.
#   4. NEVER remove or modify AFWall-owned artefacts.
#   5. Airplane mode is NOT used as a primary anti-leak mechanism.  See README.
#   6. Loopback (lo) is ALWAYS exempt from interface quiesce.
#
# STAGED RELEASE (service.sh)
# ──────────────────────────
#   Stage A: AFWall readiness confirmed (iptables OUTPUT hook present + settle)
#   Stage B: remove module-owned iptables blocks (remove_block)
#   Stage C: restore only low-level state changed by this module
#   Stage D: log final status
#
# NOTE ON init/rc OVERLAY
# ───────────────────────
# Magisk overlay.d allows adding init .rc files executed before the normal boot
# sequence.  We evaluated this for even-earlier interface quiesce (init/early-init
# triggers).  It was NOT implemented because:
#   - The iptables block is already installed at post-fs-data, which runs before
#     the Android framework and network stack initialise.  There is no network
#     traffic possible before post-fs-data completes.
#   - Network interfaces do NOT come up until the ConnectivityService starts,
#     which is well after post-fs-data.  There is nothing to quiesce earlier.
#   - Adding fragile init .rc services increases boot-breakage risk without
#     providing measurable security benefit.
# The service.sh-stage suppression is therefore both necessary and sufficient
# as the lower-layer tier.  LOWLEVEL_INIT_OVERLAY_MODE is intentionally absent.

# ── State directory ────────────────────────────────────────────────────────────
LL_STATE_DIR="${STATE_DIR}/ll"

# ── State-file helpers ─────────────────────────────────────────────────────────
_ll_init_dirs() {
  mkdir -p "$LL_STATE_DIR" 2>/dev/null || true
  chmod 700 "$LL_STATE_DIR" 2>/dev/null || true
}

_ll_state_set() {
  local key="$1" value="$2"
  _ll_init_dirs
  printf '%s' "$value" > "${LL_STATE_DIR}/${key}" 2>/dev/null || true
}

_ll_state_get() {
  cat "${LL_STATE_DIR}/${1}" 2>/dev/null || printf ''
}

_ll_state_exists() {
  [ -f "${LL_STATE_DIR}/${1}" ]
}

_ll_state_rm() {
  rm -f "${LL_STATE_DIR}/${1}" 2>/dev/null || true
}

_ll_state_append() {
  local key="$1" value="$2"
  _ll_init_dirs
  printf '%s\n' "$value" >> "${LL_STATE_DIR}/${key}" 2>/dev/null || true
}

# ── Service-readiness detection ────────────────────────────────────────────────
# Returns 0 when Android framework services are available for 'cmd' calls.
_ll_framework_ready() {
  has_cmd cmd || return 1
  # A cheap probe: cmd wifi status exits successfully when Wi-Fi service is up.
  cmd wifi status >/dev/null 2>&1
}

# ── Interface exemption list ───────────────────────────────────────────────────
# Returns 0 (exempt) for interfaces that must never be brought down.
# All others are eligible for quiesce.
_ll_iface_is_exempt() {
  local iface="$1"
  case "$iface" in
    lo|lo:*)               return 0 ;;  # loopback — always exempt
    dummy*)                return 0 ;;  # Linux dummy interfaces
    sit*|ip6tnl*|ip6gre*)  return 0 ;;  # IPv6 transition tunnels
    rmnet_ipa*)            return 0 ;;  # Qualcomm IPA hardware accelerator
    v4-*)                  return 0 ;;  # NAT helper virtual interfaces
  esac
  return 1
}

# ── Interface quiesce ──────────────────────────────────────────────────────────
# Brings eligible UP network interfaces DOWN and records what was changed.
# Uses /sys/class/net for interface enumeration (no `ip -o` parsing needed).
# Intended to run in service.sh stage when interfaces may be active.
#
# Safety:
#   - Loopback and kernel-internal interfaces are exempt (see _ll_iface_is_exempt)
#   - The iptables hard block remains in place throughout
#   - Restoration brings recorded interfaces back UP; routes are NOT restored
#     manually because DHCP/RA re-acquires them automatically when interfaces
#     come back up under AFWall's protection
lowlevel_quiesce_interfaces() {
  [ "${LOWLEVEL_INTERFACE_QUIESCE:-1}" = "1" ] || return 0

  local ip_cmd
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || {
    log "lowlevel_quiesce_interfaces: ip command not found; skipping"
    return 0
  }

  [ -d "/sys/class/net" ] || {
    log "lowlevel_quiesce_interfaces: /sys/class/net not found; skipping"
    return 0
  }

  _ll_init_dirs
  log "lowlevel_quiesce_interfaces: start"

  local iface operstate count=0
  for iface in /sys/class/net/*/; do
    iface="${iface%/}"
    iface="${iface##*/}"
    [ -n "$iface" ] || continue
    _ll_iface_is_exempt "$iface" && continue

    # Read interface operstate; skip if already down.
    operstate="$(cat "/sys/class/net/${iface}/operstate" 2>/dev/null)"
    case "$operstate" in
      down) continue ;;
    esac

    # Attempt to bring the interface down.
    if "$ip_cmd" link set "$iface" down 2>/dev/null; then
      _ll_state_append "ifaces_down" "$iface"
      debug_log "lowlevel: interface $iface brought DOWN (was: $operstate)"
      count=$((count + 1))
    else
      debug_log "lowlevel: could not bring down $iface (virtual/managed)"
    fi
  done

  log "lowlevel_quiesce_interfaces: done (${count} interfaces quiesced)"
}

lowlevel_restore_interfaces() {
  _ll_state_exists "ifaces_down" || {
    debug_log "lowlevel_restore_interfaces: no interfaces to restore"
    return 0
  }

  local ip_cmd
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || {
    log "lowlevel_restore_interfaces: ip command not found; cannot restore interfaces"
    return 0
  }

  log "lowlevel_restore_interfaces: start"
  local iface count=0
  while IFS= read -r iface; do
    [ -n "$iface" ] || continue
    if "$ip_cmd" link set "$iface" up 2>/dev/null; then
      debug_log "lowlevel: interface $iface brought UP (restored)"
      count=$((count + 1))
    else
      log "lowlevel: WARN: could not restore interface $iface"
    fi
  done < "${LL_STATE_DIR}/ifaces_down"

  _ll_state_rm "ifaces_down"
  log "lowlevel_restore_interfaces: done (${count} interfaces restored)"
}

# ── Wi-Fi control ──────────────────────────────────────────────────────────────
# Returns one of: on | off | unknown
_ll_wifi_state() {
  local val st
  if has_cmd settings; then
    val="$(settings get global wifi_on 2>/dev/null)"
    case "$val" in
      1) printf 'on'; return 0 ;;
      0) printf 'off'; return 0 ;;
    esac
  fi
  if has_cmd cmd; then
    st="$(cmd wifi status 2>/dev/null | tr '[:upper:]' '[:lower:]')"
    printf '%s' "$st" | grep -q 'disabled\|wifi is off' && { printf 'off'; return 0; }
    printf '%s' "$st" | grep -q 'enabled\|wifi is on' && { printf 'on'; return 0; }
  fi
  printf 'unknown'
}

# Returns 0 if Wi-Fi is currently enabled (strict positive evidence only).
_ll_wifi_is_enabled() {
  [ "$(_ll_wifi_state)" = "on" ]
}

lowlevel_disable_wifi() {
  [ "${LOWLEVEL_USE_WIFI_SERVICE:-1}" = "1" ] || return 0

  local wifi_state
  wifi_state="$(_ll_wifi_state)"
  _ll_state_set "wifi_initial_state" "$wifi_state"

  if [ "$wifi_state" = "off" ]; then
    # Service already off; clear any stale marker so we don't restore what we
    # never changed.
    _ll_state_rm "wifi_was_enabled"
    debug_log "lowlevel_disable_wifi: initial state=off; preserving user preference"
    return 0
  fi

  if [ "$wifi_state" = "unknown" ]; then
    # Keep anti-leak behavior (try to disable), but do not create a restore
    # marker unless we have positive proof Wi-Fi started enabled.
    _ll_state_rm "wifi_was_enabled"
    debug_log "lowlevel_disable_wifi: initial state unknown; disable for safety but restore marker will not be set"
  fi

  local disabled=0

  # Step 1: cmd wifi set-wifi-enabled disabled (preferred, Android 10+)
  if has_cmd cmd && cmd wifi set-wifi-enabled disabled >/dev/null 2>&1; then
    disabled=1
    log "lowlevel: Wi-Fi disable cmd sent via cmd wifi"
  fi

  # Step 2: fallback via svc wifi
  if [ "$disabled" = "0" ] && has_cmd svc; then
    if svc wifi disable 2>/dev/null; then
      disabled=1
      log "lowlevel: Wi-Fi disable cmd sent via svc wifi (fallback)"
    fi
  fi

  # Step 3: verify the off-state using multiple probes
  if [ "$disabled" = "1" ]; then
    local verified=0 val wl_state
    # Probe A: settings database
    if has_cmd settings; then
      val="$(settings get global wifi_on 2>/dev/null)"
      case "$val" in
        0) verified=$((verified + 1)) ;;
      esac
    fi
    # Probe B: cmd wifi status (look for "disabled" or "Wifi is disabled")
    if has_cmd cmd; then
      if cmd wifi status 2>/dev/null | grep -qi 'disabled\|Wifi is off'; then
        verified=$((verified + 1))
      fi
    fi
    # Probe C: wlan interface operstate (link-down state)
    local wl_iface
    for wl_iface in wlan0 wlan1 swlan0 swlan1; do
      [ -f "/sys/class/net/${wl_iface}/operstate" ] || continue
      wl_state="$(cat "/sys/class/net/${wl_iface}/operstate" 2>/dev/null)"
      case "$wl_state" in
        down) verified=$((verified + 1)); break ;;
      esac
    done
    if [ "$verified" -ge 1 ]; then
      log "lowlevel: Wi-Fi off-state confirmed (probes_passed=$verified)"
      [ "$wifi_state" = "on" ] && _ll_state_set "wifi_was_enabled" "1"
    else
      log "lowlevel: Wi-Fi disable sent but off-state not yet confirmed; tracking anyway"
      [ "$wifi_state" = "on" ] && _ll_state_set "wifi_was_enabled" "1"
    fi
    # Step 4: reinforce by bringing wlan interfaces down if present
    local ip_cmd
    ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
    if [ -n "$ip_cmd" ]; then
      for wl_iface in wlan0 wlan1 swlan0 swlan1; do
        [ -d "/sys/class/net/${wl_iface}" ] || continue
        wl_state="$(cat "/sys/class/net/${wl_iface}/operstate" 2>/dev/null)"
        case "$wl_state" in
          up|unknown)
            "$ip_cmd" link set "$wl_iface" down 2>/dev/null && \
              debug_log "lowlevel: reinforced $wl_iface link-down" || true
            ;;
        esac
      done
    fi
  else
    log "lowlevel: WARN: could not disable Wi-Fi (best-effort)"
  fi
}

lowlevel_restore_wifi() {
  _ll_state_exists "wifi_was_enabled" || return 0
  if [ "$(_ll_state_get "wifi_initial_state")" = "off" ]; then
    # Defensive guard: never force Wi-Fi on when initial state was off.
    _ll_state_rm "wifi_was_enabled"
    return 0
  fi

  local restored=0 verified_on=0 val wl_state wl_iface
  if has_cmd cmd && cmd wifi set-wifi-enabled enabled >/dev/null 2>&1; then
    restored=1
    log "lowlevel: Wi-Fi re-enabled via cmd wifi"
  fi
  if [ "$restored" = "0" ] && has_cmd svc; then
    if svc wifi enable 2>/dev/null; then
      restored=1
      log "lowlevel: Wi-Fi re-enabled via svc wifi (fallback)"
    fi
  fi
  if [ "$restored" = "0" ]; then
    log "lowlevel: WARN: could not re-enable Wi-Fi; manual recovery may be needed"
    return 1
  fi

  # Verify Wi-Fi is actually ON before clearing the marker so callers can retry
  # automatically on the next poll if framework services lag behind command ack.
  if has_cmd settings; then
    val="$(settings get global wifi_on 2>/dev/null)"
    [ "$val" = "1" ] && verified_on=$((verified_on + 1))
  fi
  if has_cmd cmd && cmd wifi status 2>/dev/null | grep -qi 'enabled\|Wifi is on'; then
    verified_on=$((verified_on + 1))
  fi
  for wl_iface in wlan0 wlan1 swlan0 swlan1; do
    [ -f "/sys/class/net/${wl_iface}/operstate" ] || continue
    wl_state="$(cat "/sys/class/net/${wl_iface}/operstate" 2>/dev/null)"
    case "$wl_state" in
      up|unknown) verified_on=$((verified_on + 1)); break ;;
    esac
  done

  if [ "$verified_on" -ge 1 ]; then
    log "lowlevel: Wi-Fi restore verified (probes_passed=$verified_on)"
    _ll_state_rm "wifi_was_enabled"
    _ll_state_rm "wifi_initial_state"
    return 0
  fi

  log "lowlevel: WARN: Wi-Fi enable sent but ON-state not yet verified; keeping marker for retry"
  return 1
}

# ── Mobile data control ────────────────────────────────────────────────────────
# Returns one of: on | off | unknown
_ll_data_state() {
  local val ip_cmd rt_out
  if has_cmd settings; then
    val="$(settings get global mobile_data 2>/dev/null)"
    case "$val" in
      1) printf 'on'; return 0 ;;
      0) printf 'off'; return 0 ;;
    esac
  fi
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
  if [ -n "$ip_cmd" ]; then
    rt_out="$("$ip_cmd" route show default 2>/dev/null)" || rt_out=""
    printf '%s' "$rt_out" | grep -qE 'rmnet|ccmni|pdp|wwan' && { printf 'on'; return 0; }
  fi
  printf 'unknown'
}

# Returns 0 if mobile data is currently enabled (strict positive evidence only).
_ll_data_is_enabled() {
  [ "$(_ll_data_state)" = "on" ]
}

lowlevel_disable_mobile_data() {
  [ "${LOWLEVEL_USE_PHONE_DATA_CMD:-1}" = "1" ] || return 0

  local data_state
  data_state="$(_ll_data_state)"
  _ll_state_set "data_initial_state" "$data_state"

  if [ "$data_state" = "off" ]; then
    # Service already off; clear any stale marker so we don't restore what we
    # never changed.
    _ll_state_rm "data_was_enabled"
    debug_log "lowlevel_disable_mobile_data: initial state=off; preserving user preference"
    return 0
  fi

  if [ "$data_state" = "unknown" ]; then
    # Keep anti-leak behavior (try to disable), but do not create a restore
    # marker unless we positively know mobile data started enabled.
    _ll_state_rm "data_was_enabled"
    debug_log "lowlevel_disable_mobile_data: initial state unknown; disable for safety but restore marker will not be set"
  fi

  local disabled=0

  # Step 1: cmd phone data disable (preferred, Android 9+)
  if has_cmd cmd && cmd phone data disable >/dev/null 2>&1; then
    disabled=1
    log "lowlevel: mobile data disable cmd sent via cmd phone"
  fi

  # Step 2: fallback via svc data
  if [ "$disabled" = "0" ] && has_cmd svc; then
    if svc data disable 2>/dev/null; then
      disabled=1
      log "lowlevel: mobile data disable cmd sent via svc data (fallback)"
    fi
  fi

  # Step 3: verify the off-state using multiple probes
  if [ "$disabled" = "1" ]; then
    local verified=0 val
    # Probe A: settings database
    if has_cmd settings; then
      val="$(settings get global mobile_data 2>/dev/null)"
      case "$val" in
        0) verified=$((verified + 1)) ;;
      esac
    fi
    # Probe B: absence of active default route via cellular interfaces
    local ip_cmd rt_out
    ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
    if [ -n "$ip_cmd" ]; then
      rt_out="$("$ip_cmd" route show default 2>/dev/null)" || rt_out=""
      # If no default route via rmnet*/ccmni*/pdp*/wwan*, data is off
      if ! printf '%s' "$rt_out" | grep -qE 'rmnet|ccmni|pdp|wwan'; then
        verified=$((verified + 1))
      fi
    fi
    if [ "$verified" -ge 1 ]; then
      log "lowlevel: mobile data off-state confirmed (probes_passed=$verified)"
    else
      log "lowlevel: mobile data disable sent but off-state not yet confirmed; tracking anyway"
    fi
    [ "$data_state" = "on" ] && _ll_state_set "data_was_enabled" "1"
    # Step 4: reinforce by bringing cellular data interfaces down where safe
    if [ -n "$ip_cmd" ]; then
      local cell_iface cell_state
      for cell_iface in /sys/class/net/rmnet* /sys/class/net/ccmni* /sys/class/net/wwan*; do
        [ -d "$cell_iface" ] || continue
        cell_iface="${cell_iface##*/}"
        cell_state="$(cat "/sys/class/net/${cell_iface}/operstate" 2>/dev/null)"
        case "$cell_state" in
          up|unknown)
            "$ip_cmd" link set "$cell_iface" down 2>/dev/null && \
              debug_log "lowlevel: reinforced $cell_iface link-down" || true
            ;;
        esac
      done
    fi
  else
    log "lowlevel: WARN: could not disable mobile data (best-effort)"
  fi
}

lowlevel_restore_mobile_data() {
  _ll_state_exists "data_was_enabled" || return 0
  if [ "$(_ll_state_get "data_initial_state")" = "off" ]; then
    # Defensive guard: never force mobile data on when initial state was off.
    _ll_state_rm "data_was_enabled"
    return 0
  fi

  local restored=0 verified_on=0 val ip_cmd rt_out
  if has_cmd cmd && cmd phone data enable >/dev/null 2>&1; then
    restored=1
    log "lowlevel: mobile data re-enabled via cmd phone"
  fi
  if [ "$restored" = "0" ] && has_cmd svc; then
    if svc data enable 2>/dev/null; then
      restored=1
      log "lowlevel: mobile data re-enabled via svc data (fallback)"
    fi
  fi
  if [ "$restored" = "0" ]; then
    log "lowlevel: WARN: could not re-enable mobile data; manual recovery may be needed"
    return 1
  fi

  # Verify mobile data is actually ON before clearing marker; this allows
  # service.sh to retry automatically instead of requiring manual action.
  if has_cmd settings; then
    val="$(settings get global mobile_data 2>/dev/null)"
    [ "$val" = "1" ] && verified_on=$((verified_on + 1))
  fi
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
  if [ -n "$ip_cmd" ]; then
    rt_out="$("$ip_cmd" route show default 2>/dev/null)" || rt_out=""
    printf '%s' "$rt_out" | grep -qE 'rmnet|ccmni|pdp|wwan' && \
      verified_on=$((verified_on + 1))
  fi

  if [ "$verified_on" -ge 1 ]; then
    log "lowlevel: mobile data restore verified (probes_passed=$verified_on)"
    _ll_state_rm "data_was_enabled"
    _ll_state_rm "data_initial_state"
    return 0
  fi

  log "lowlevel: WARN: mobile data enable sent but ON-state not yet verified; keeping marker for retry"
  return 1
}

# ── Bluetooth control ──────────────────────────────────────────────────────────
# Returns 0 if Bluetooth is currently enabled (best-effort check).
_ll_bt_is_enabled() {
  local val
  if has_cmd settings; then
    val="$(settings get global bluetooth_on 2>/dev/null)"
    case "$val" in
      1) return 0 ;;
      0) return 1 ;;
    esac
  fi
  return 1  # unknown/unavailable state — assume not enabled (conservative; avoids spurious restore)
}

lowlevel_disable_bluetooth() {
  [ "${LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ] || return 0

  if ! _ll_bt_is_enabled; then
    # Service already off; clear any stale marker so we don't restore what we
    # never changed.
    _ll_state_rm "bt_was_enabled"
    debug_log "lowlevel_disable_bluetooth: Bluetooth already disabled; skipping"
    return 0
  fi

  local disabled=0

  # Preferred: cmd bluetooth_manager (Android 12+).
  if has_cmd cmd && cmd bluetooth_manager disable >/dev/null 2>&1; then
    disabled=1
    log "lowlevel: Bluetooth disabled via cmd bluetooth_manager"
  fi

  # Fallback: svc bluetooth (older Android).
  if [ "$disabled" = "0" ] && has_cmd svc; then
    if svc bluetooth disable 2>/dev/null; then
      disabled=1
      log "lowlevel: Bluetooth disabled via svc bluetooth (fallback)"
    fi
  fi

  if [ "$disabled" = "1" ]; then
    _ll_state_set "bt_was_enabled" "1"
  else
    log "lowlevel: WARN: could not disable Bluetooth (best-effort)"
  fi
}

lowlevel_restore_bluetooth() {
  _ll_state_exists "bt_was_enabled" || return 0

  local restored=0
  if has_cmd cmd && cmd bluetooth_manager enable >/dev/null 2>&1; then
    restored=1
    log "lowlevel: Bluetooth re-enabled via cmd bluetooth_manager"
  fi
  if [ "$restored" = "0" ] && has_cmd svc; then
    if svc bluetooth enable 2>/dev/null; then
      restored=1
      log "lowlevel: Bluetooth re-enabled via svc bluetooth (fallback)"
    fi
  fi
  if [ "$restored" = "0" ]; then
    log "lowlevel: WARN: could not re-enable Bluetooth; manual recovery may be needed"
  fi
  _ll_state_rm "bt_was_enabled"
}



# ── VPN lockdown orchestration ("block connections without VPN") ─────────────
# Best-effort handling for Android's always-on VPN lockdown switch.
#
# Behaviour:
#   - During early/late boot suppression, enable lockdown for VPN provider
#     packages (auto-discovered + optional config list) as early as possible.
#   - During transport restore (after AFWall takeover), disable lockdown again
#     for the currently active provider and restore pre-boot always-on state.
#
# Internal behaviour is derived from v4.3.0 VPN_LOCKDOWN_MODE and
# VPN_PROVIDER_PACKAGES in bin/common.sh; these are not user-facing knobs here.

_ll_split_words() {
  printf '%s' "$1" | tr ',;' '  ' | tr -s '[:space:]' '\n' | sed '/^$/d'
}

_ll_vpn_get_active_pkg() {
  local v
  if has_cmd settings; then
    v="$(settings get secure always_on_vpn_app 2>/dev/null)"
    [ -n "$v" ] && [ "$v" != "null" ] && [ "$v" != "(null)" ] && { printf '%s' "$v"; return 0; }
  fi
  printf ''
}

_ll_vpn_get_lockdown_state() {
  local v
  if has_cmd settings; then
    v="$(settings get secure always_on_vpn_lockdown 2>/dev/null)"
    case "$v" in
      1) printf '1'; return 0 ;;
      0) printf '0'; return 0 ;;
    esac
  fi
  printf 'unknown'
}

_ll_vpn_discover_providers() {
  local out
  # Android command surfaces differ by version; try several probes.
  if has_cmd cmd; then
    out="$(cmd package query-intent-services -a android.net.VpnService 2>/dev/null)"
    if [ -n "$out" ]; then
      printf '%s\n' "$out" | sed -n 's/^[[:space:]]*\([^/[:space:]][^/]*\)\/.*/\1/p'
      return 0
    fi
    out="$(cmd package query-services -a android.net.VpnService 2>/dev/null)"
    if [ -n "$out" ]; then
      printf '%s\n' "$out" | sed -n 's/^[[:space:]]*\([^/[:space:]][^/]*\)\/.*/\1/p'
      return 0
    fi
  fi
  if has_cmd pm; then
    out="$(pm query-intent-services -a android.net.VpnService 2>/dev/null)"
    if [ -n "$out" ]; then
      printf '%s\n' "$out" | sed -n 's/^[[:space:]]*\([^/[:space:]][^/]*\)\/.*/\1/p'
      return 0
    fi
  fi
  return 1
}

lowlevel_clear_stale_vpn_state() {
  _ll_init_dirs
  local cleared=0 f
  for f in       vpn_pre_active_pkg       vpn_pre_lockdown       vpn_lockdown_enabled_pkgs       vpn_lockdown_released; do
    if _ll_state_exists "$f"; then
      _ll_state_rm "$f"
      cleared=1
    fi
  done
  [ "$cleared" = "1" ] && log "vpn_lockdown: cleared stale per-boot VPN state markers"
}

lowlevel_vpn_lockdown_enforce() {
  has_cmd cmd || { debug_log "vpn_lockdown: cmd not available; skipping enforce"; return 0; }

  _ll_init_dirs

  # Snapshot pre-boot state once for preserve/restore modes.
  if ! _ll_state_exists "vpn_pre_active_pkg"; then
    _ll_state_set "vpn_pre_active_pkg" "$(_ll_vpn_get_active_pkg)"
    _ll_state_set "vpn_pre_lockdown" "$(_ll_vpn_get_lockdown_state)"
    debug_log "vpn_lockdown: snapshot pre-state active='$(_ll_state_get vpn_pre_active_pkg)' lockdown='$(_ll_state_get vpn_pre_lockdown)'"
  fi

  if [ "${VPN_LOCKDOWN_BOOT_ENFORCE:-0}" != "1" ]; then
    [ "${VPN_LOCKDOWN_PRESERVE_ONLY:-0}" = "1" ] && log "vpn_lockdown: preserve mode active; recorded state without changing lockdown"
    return 0
  fi

  local pkgs pkg active
  pkgs=""
  active="$(_ll_vpn_get_active_pkg)"

  # Restore mode is explicitly opt-in and single-provider. Prefer an explicit
  # package, otherwise the already-selected always-on provider. Never scan or
  # replace all installed VPN providers during normal preserve/default handling.
  if [ -n "${VPN_LOCKDOWN_PROVIDER_PACKAGES:-}" ]; then
    pkgs="$(_ll_split_words "${VPN_LOCKDOWN_PROVIDER_PACKAGES}" | head -1)"
  elif [ -n "$active" ]; then
    pkgs="$active"
  else
    pkgs=""
  fi

  # Deduplicate and enforce lockdown where possible.
  case "$pkgs" in
    *[![:space:]]*) ;;
    *)
      log "vpn_lockdown: WARN: handling enabled but provider list is empty and auto-detection found no providers; VPN lockdown state cannot be managed"
      return 0
      ;;
  esac

  local seen=" " ok=0 after_pkg after_lock
  for pkg in $pkgs; do
    case "$seen" in *" $pkg "*) continue ;; esac
    seen="$seen$pkg "
    if cmd connectivity set-always-on-vpn "$pkg" true >/dev/null 2>&1; then
      after_pkg="$(_ll_vpn_get_active_pkg)"
      after_lock="$(_ll_vpn_get_lockdown_state)"
      if [ "$after_pkg" = "$pkg" ] && [ "$after_lock" = "1" ]; then
        log "vpn_lockdown: restore mode verified always-on+lockdown for provider $pkg"
        ok=1
      else
        log "vpn_lockdown: WARN: restore write for $pkg not verified (active=${after_pkg:-none} lockdown=${after_lock:-unknown})"
      fi
    else
      debug_log "vpn_lockdown: provider $pkg could not be set always-on+lockdown"
    fi
    break
  done

  if [ "$ok" = "0" ]; then
    log "vpn_lockdown: WARN: provider selected for restore mode but lockdown command was not verified (active=${active:-none} providers='${pkgs}')"
  fi
}

lowlevel_vpn_lockdown_release_if_needed() {
  [ "${VPN_LOCKDOWN_RELEASE_ON_RESTORE:-1}" = "1" ] || return 0
  has_cmd cmd || return 0

  # Avoid repeated release attempts once done.
  if _ll_state_exists "vpn_lockdown_released"; then
    return 0
  fi

  local active pre_pkg pre_lock current_lock
  active="$(_ll_vpn_get_active_pkg)"
  pre_pkg="$(_ll_state_get vpn_pre_active_pkg)"
  pre_lock="$(_ll_state_get vpn_pre_lockdown)"
  current_lock="$(_ll_vpn_get_lockdown_state)"
  log "vpn_lockdown: restore check pre_active=${pre_pkg:-none} pre_lockdown=${pre_lock:-unknown} current_active=${active:-none} current_lockdown=${current_lock:-unknown}"

  # Restore pre-boot always-on baseline where available. Do not temporarily
  # disable lockdown for the current provider; make one transactional write back
  # to the recorded provider/lockdown pair and verify by readback.
  if [ -n "$pre_pkg" ] && [ "$pre_pkg" != "null" ]; then
    case "$pre_lock" in
      1|0)
        if cmd connectivity set-always-on-vpn "$pre_pkg" "$pre_lock" >/dev/null 2>&1; then
          active="$(_ll_vpn_get_active_pkg)"; current_lock="$(_ll_vpn_get_lockdown_state)"
          if [ "$active" = "$pre_pkg" ] && [ "$current_lock" = "$pre_lock" ]; then
            log "vpn_lockdown: restored and verified pre-boot always-on baseline for $pre_pkg (lockdown=$pre_lock)"
          else
            log "vpn_lockdown: WARN: pre-boot restore not verified (want=$pre_pkg/$pre_lock got=${active:-none}/${current_lock:-unknown})"
          fi
        fi
        ;;
    esac
  fi

  _ll_state_rm "vpn_lockdown_enabled_pkgs"
  _ll_state_set "vpn_lockdown_released" "1"
}
# ── Tethering control ──────────────────────────────────────────────────────────
# Stops active tethering sessions.  Does NOT auto-restart tethering on restore
# because tethering requires explicit user action to start; we do not want to
# restart a session the user had stopped before our shutdown.
lowlevel_stop_tethering() {
  [ "${LOWLEVEL_USE_TETHER_STOP:-1}" = "1" ] || return 0

  local stopped=0

  # Try the connectivity service command (Android 12+ tethering API).
  if has_cmd cmd && cmd connectivity stop-tethering >/dev/null 2>&1; then
    stopped=1
    log "lowlevel: tethering stopped via cmd connectivity"
  fi

  # Bring down known tethering interfaces directly (belt-and-suspenders,
  # or fallback when cmd connectivity is unavailable).
  local ip_cmd
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
  if [ -n "$ip_cmd" ]; then
    local tether_iface
    for tether_iface in wlan1 rndis0 usb0 bt-pan ncm0; do
      [ -d "/sys/class/net/${tether_iface}" ] || continue
      local ts_state
      ts_state="$(cat "/sys/class/net/${tether_iface}/operstate" 2>/dev/null)"
      case "$ts_state" in
        up|unknown)
          if "$ip_cmd" link set "$tether_iface" down 2>/dev/null; then
            _ll_state_append "tether_ifaces_down" "$tether_iface"
            stopped=1
            log "lowlevel: tether interface $tether_iface brought DOWN"
          fi
          ;;
      esac
    done
  fi

  if [ "$stopped" = "1" ]; then
    _ll_state_set "tether_was_active" "1"
  else
    debug_log "lowlevel_stop_tethering: no active tethering found or commands unavailable"
  fi
}

# Called during restore phase.  Logs that the user must manually re-enable
# tethering; we do NOT auto-restart it.
lowlevel_restore_tethering_note() {
  _ll_state_exists "tether_was_active" || return 0
  log "lowlevel: NOTE: tethering was stopped during boot; user must re-enable manually if needed"
  _ll_state_rm "tether_was_active"
  _ll_state_rm "tether_ifaces_down"
}

# ── Top-level orchestration ────────────────────────────────────────────────────

# ── Early phase: post-fs-data safe operations only ─────────────────────────────
# Called from post-fs-data.sh. Framework services are NOT available here.
# Only kernel-space operations and /sys interactions are performed.
# Persists blackout state so service.sh knows to enforce radio-off on startup.
lowlevel_prepare_environment_early() {
  local mode="${LOWLEVEL_MODE:-off}"
  _ll_init_dirs
  lowlevel_clear_stale_vpn_state
  log "vpn_lockdown: post-fs-data observes only; no VPN setting writes in early boot"
  case "$mode" in
    off)
      debug_log "lowlevel_early: LOWLEVEL_MODE=off; lower-layer suppression disabled"
      return 0
      ;;
    safe|strict) ;;
    *)
      log "lowlevel_early: unknown LOWLEVEL_MODE='$mode'; treating as off"
      return 0
      ;;
  esac

  _ll_state_set "mode" "$mode"
  log "lowlevel_early: start (mode=$mode)"

  # Record that radios must be forced off in the late phase.
  # This state persists across the post-fs-data → service boundary.
  _ll_state_set "radio_off_pending_early" "1"

  # Quiesce any interfaces that are already present (best-effort; many
  # interfaces are not up yet at this stage — that is expected and normal).
  # The main purpose is to catch any interface that appeared unusually early.
  local ip_cmd
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
  if [ "${LOWLEVEL_INTERFACE_QUIESCE:-0}" != "1" ]; then
    debug_log "lowlevel_early: interface quiesce disabled"
  elif [ -n "$ip_cmd" ] && [ -d "/sys/class/net" ]; then
    local iface operstate
    for iface in /sys/class/net/*/; do
      iface="${iface%/}"; iface="${iface##*/}"
      [ -n "$iface" ] || continue
      _ll_iface_is_exempt "$iface" && continue
      operstate="$(cat "/sys/class/net/${iface}/operstate" 2>/dev/null)"
      case "$operstate" in
        up|unknown)
          if "$ip_cmd" link set "$iface" down 2>/dev/null; then
            _ll_state_append "ifaces_down_early" "$iface"
            log "lowlevel_early: interface $iface brought DOWN"
          fi
          ;;
      esac
    done
  else
    log "lowlevel_early: ip command or /sys/class/net not available; interface quiesce skipped"
  fi

  # Framework radio commands are NOT used here; defer to late phase.
  log "lowlevel_early: framework radio disable deferred to late phase (service.sh)"
  # VPN setting writes are intentionally not performed from post-fs-data.
  log "lowlevel_early: done"
}

# ── Late phase: framework-aware service suppression ─────────────────────────────
# Called from service.sh after framework services are available.
# Verifies Wi-Fi and mobile data off-state, not just command exit status.
lowlevel_prepare_environment_late() {
  local mode
  mode="${LOWLEVEL_MODE:-safe}"
  case "$mode" in
    off) return 0 ;;
    safe|strict) ;;
    *)
      log "lowlevel_late: unknown LOWLEVEL_MODE='$mode'; treating as off"
      return 0
      ;;
  esac

  # Merge early-phase interface list into the main quiesce list.
  if _ll_state_exists "ifaces_down_early"; then
    while IFS= read -r _iface; do
      [ -n "$_iface" ] || continue
      _ll_state_append "ifaces_down" "$_iface"
    done < "${LL_STATE_DIR}/ifaces_down_early"
    _ll_state_rm "ifaces_down_early"
  fi

  log "lowlevel_late: start (mode=$mode)"

  # Interface quiesce: bring down any remaining UP interfaces only when explicitly enabled.
  if [ "${LOWLEVEL_INTERFACE_QUIESCE:-0}" = "1" ]; then
    lowlevel_quiesce_interfaces
  else
    debug_log "lowlevel_late: interface quiesce disabled"
  fi

  # Service-level suppression is opportunistic and non-blocking.  Do not wait
  # repeatedly here: the iptables hard block is authoritative and the main
  # service loop must start tracking unlock/readiness immediately.
  if _ll_framework_ready; then
    if [ "${LOWLEVEL_WIFI_DATA_OFF:-0}" = "1" ]; then
      lowlevel_disable_wifi
      lowlevel_disable_mobile_data
    else
      log "lowlevel_late: fast reconnect mode; Wi-Fi/mobile-data left unchanged behind netfilter hard block"
    fi
    lowlevel_vpn_lockdown_enforce
    if [ "${LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ]; then
      lowlevel_disable_bluetooth
    fi
    if [ "${LOWLEVEL_USE_TETHER_STOP:-0}" = "1" ]; then
      lowlevel_stop_tethering
    fi
    log "lowlevel_late: opportunistic service suppression done"
  else
    log "lowlevel_late: framework not ready; skipping service suppression this pass (iptables hard block remains)"
  fi

  _ll_state_rm "radio_off_pending_early"
  log "lowlevel_late: done"
}

# ── Periodic reassertion: keep radios off while waiting ───────────────────────
# Called from the service.sh poll loop. Lightweight and idempotent.
# Re-verifies Wi-Fi and mobile data off-state; re-applies if needed.
lowlevel_reassert_radios_off() {
  local mode
  mode="${LOWLEVEL_MODE:-off}"
  [ "$mode" = "off" ] && return 0
  [ "${LOWLEVEL_WIFI_DATA_OFF:-0}" = "1" ] || return 0

  # Wi-Fi reassertion
  if [ "${LOWLEVEL_USE_WIFI_SERVICE:-1}" = "1" ] && _ll_state_exists "wifi_was_enabled"; then
    local wifi_state_now
    wifi_state_now="$(_ll_wifi_state)"
    if [ "$wifi_state_now" != "off" ]; then
      log "lowlevel_reassert: Wi-Fi state=${wifi_state_now}; re-disabling"
      if has_cmd cmd && cmd wifi set-wifi-enabled disabled >/dev/null 2>&1; then
        debug_log "lowlevel_reassert: Wi-Fi re-disabled via cmd wifi"
      elif has_cmd svc; then
        svc wifi disable 2>/dev/null || true
      fi
    fi
    # Re-reinforce wlan interface down-state
    local ip_cmd wl_iface wl_state
    ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
    if [ -n "$ip_cmd" ]; then
      for wl_iface in wlan0 wlan1 swlan0 swlan1; do
        [ -d "/sys/class/net/${wl_iface}" ] || continue
        wl_state="$(cat "/sys/class/net/${wl_iface}/operstate" 2>/dev/null)"
        case "$wl_state" in
          up|unknown)
            "$ip_cmd" link set "$wl_iface" down 2>/dev/null || true
            ;;
        esac
      done
    fi
  fi

  # Mobile data reassertion
  if [ "${LOWLEVEL_USE_PHONE_DATA_CMD:-1}" = "1" ] && _ll_state_exists "data_was_enabled"; then
    local data_state_now
    data_state_now="$(_ll_data_state)"
    if [ "$data_state_now" != "off" ]; then
      log "lowlevel_reassert: mobile data state=${data_state_now}; re-disabling"
      if has_cmd cmd && cmd phone data disable >/dev/null 2>&1; then
        debug_log "lowlevel_reassert: mobile data re-disabled via cmd phone"
      elif has_cmd svc; then
        svc data disable 2>/dev/null || true
      fi
    fi
  fi
}

# ── Device unlock detection ────────────────────────────────────────────────────
# Multi-signal Direct-Boot-aware unlock heuristic.  Returns textual confidence
# for logs: unlocked, probably_unlocked, locked, or unknown.  Unknown is not a
# negative result and must not block family AFWall handoff.
device_unlock_state() {
  local user="0" cmd_user="unavailable" dumpsys_user="unavailable" ce="unavailable" keyguard="unavailable" trust="unavailable" result="unknown" _cu _du _kw _tr

  if has_cmd am; then
    user="$(am get-current-user 2>/dev/null | tr -dc '0-9' | head -c 4)"
    [ -z "$user" ] && user="0"
  fi

  if has_cmd cmd; then
    _cu="$(cmd user is-user-unlocked "$user" 2>/dev/null || true)"
    case "$_cu" in
      *true*|*TRUE*|*1*|*unlocked*) cmd_user="unlocked" ;;
      *false*|*FALSE*|*0*|*locked*) cmd_user="locked" ;;
      '') cmd_user="unavailable" ;;
      *) cmd_user="unknown($_cu)" ;;
    esac
  fi

  if [ "${DEBUG:-0}" = "1" ] && has_cmd dumpsys; then
    _du="$(dumpsys user 2>/dev/null | grep -E "UserInfo\{$user:|RUNNING_UNLOCKED|unlock" | head -20)"
    if printf '%s' "$_du" | grep -q 'RUNNING_UNLOCKED\|unlocked=true\|unlockTime'; then
      dumpsys_user="RUNNING_UNLOCKED"
    elif [ -n "$_du" ]; then
      dumpsys_user="seen_no_unlock"
    fi

    _kw="$(dumpsys window 2>/dev/null | grep -iE 'mKeyguardShowing|mShowingLockscreen|isKeyguardShowing|KeyguardController' | head -5)"
    if printf '%s' "$_kw" | grep -qi '=false\|Showing=false\|showing: false\|mKeyguardShowing=false'; then
      keyguard="not_locked"
    elif printf '%s' "$_kw" | grep -qi '=true\|Showing=true\|showing: true\|mKeyguardShowing=true'; then
      keyguard="locked"
    fi

    _tr="$(dumpsys trust 2>/dev/null | grep -iE 'unlocked|deviceLocked|trusted' | head -5)"
    if printf '%s' "$_tr" | grep -qi 'unlocked=true\|deviceLocked=false'; then
      trust="unlocked"
    elif printf '%s' "$_tr" | grep -qi 'unlocked=false\|deviceLocked=true'; then
      trust="locked"
    elif [ -n "$_tr" ]; then
      trust="seen"
    fi
  elif [ "${DEBUG:-0}" != "1" ]; then
    dumpsys_user="debug_only"
    keyguard="debug_only"
    trust="debug_only"
  fi

  # CE proof: readable current-user CE root plus at least one AFWall/app CE dir
  # or any child entry.  Existence alone is not enough.
  if [ -r "/data/user/${user}" ] && find "/data/user/${user}" -mindepth 1 -maxdepth 1 -type d 2>/dev/null | head -1 | grep -q .; then
    ce="readable"
  elif [ -r "/data/user/0" ] && find "/data/user/0" -mindepth 1 -maxdepth 1 -type d 2>/dev/null | head -1 | grep -q .; then
    ce="readable_user0"
  else
    ce="not_readable"
  fi

  case "$cmd_user:$dumpsys_user:$ce" in
    unlocked:*:*|*:RUNNING_UNLOCKED:*|*:*:readable*) result="unlocked" ;;
    locked:*:not_readable) result="locked" ;;
    *)
      case "$keyguard:$trust" in
        not_locked:unlocked|not_locked:*) result="probably_unlocked" ;;
        locked:locked) result="locked" ;;
        *) result="unknown" ;;
      esac
      ;;
  esac

  log "unlock: user=${user} cmd_user=${cmd_user} dumpsys_user=${dumpsys_user} ce=${ce} keyguard=${keyguard} trust=${trust} => ${result}"
  printf '%s' "$result"
}

lowlevel_device_is_unlocked() {
  case "$(device_unlock_state 2>/dev/null)" in
    unlocked|probably_unlocked) return 0 ;;
    *) return 1 ;;
  esac
}

# ── Transport-specific restore helpers ────────────────────────────────────────
# These helpers restore a single transport only when:
#   - the module itself changed it (state file present)
#   - the caller has confirmed AFWall transport readiness
#   - no module-owned iptables blocks remain (caller responsibility)
#
# Callers must check those conditions before calling these functions.

lowlevel_restore_wifi_if_allowed() {
  _ll_state_exists "wifi_was_enabled" || {
    debug_log "lowlevel_restore_wifi_if_allowed: wifi was not changed by module; skipping"
    return 0
  }
  lowlevel_vpn_lockdown_release_if_needed
  lowlevel_restore_wifi
}

lowlevel_restore_mobile_data_if_allowed() {
  _ll_state_exists "data_was_enabled" || {
    debug_log "lowlevel_restore_mobile_data_if_allowed: mobile data was not changed by module; skipping"
    return 0
  }
  lowlevel_vpn_lockdown_release_if_needed
  lowlevel_restore_mobile_data
}

# ── Legacy alias: lowlevel_prepare_environment ────────────────────────────────
# Called from service.sh for backward compatibility.
# Redirects to the late phase; early phase is now called from post-fs-data.sh.
# Clears stale ll state from a previous unclean boot before starting.
lowlevel_prepare_environment() {
  local mode="${LOWLEVEL_MODE:-off}"
  _ll_init_dirs
  lowlevel_clear_stale_vpn_state
  case "$mode" in
    off)
      debug_log "lowlevel_prepare_environment: LOWLEVEL_MODE=off; lower-layer suppression disabled"
      return 0
      ;;
    safe|strict) ;;
    *)
      log "lowlevel: unknown LOWLEVEL_MODE='$mode'; treating as off"
      return 0
      ;;
  esac

  # Clear any stale ll state from a previous unclean boot, but preserve
  # early-phase data written during this boot's post-fs-data stage.
  _ll_state_rm "wifi_was_enabled"
  _ll_state_rm "data_was_enabled"
  _ll_state_rm "wifi_initial_state"
  _ll_state_rm "data_initial_state"
  _ll_state_rm "bt_was_enabled"
  _ll_state_rm "tether_was_active"
  _ll_state_rm "tether_ifaces_down"
  _ll_state_rm "ifaces_down"
  _ll_state_rm "vpn_lockdown_enabled_pkgs"
  _ll_state_rm "vpn_lockdown_released"

  _ll_state_set "mode" "$mode"
  log "lowlevel_prepare_environment: start (mode=$mode)"
  lowlevel_prepare_environment_late
  log "lowlevel_prepare_environment: done"
}

# Stage C of the staged release.  Called AFTER remove_block (Stage B) from
# service.sh once AFWall rules are confirmed.
# Restores only the state the module itself changed.
lowlevel_restore_changed_state() {
  _ll_state_exists "mode" || {
    debug_log "lowlevel_restore_changed_state: no lowlevel state to restore"
    return 0
  }

  log "lowlevel_restore_changed_state: start"
  lowlevel_restore_interfaces
  lowlevel_vpn_lockdown_release_if_needed
  lowlevel_restore_wifi
  lowlevel_restore_mobile_data
  lowlevel_restore_bluetooth
  lowlevel_restore_tethering_note
  _ll_state_rm "wifi_initial_state"
  _ll_state_rm "data_initial_state"
  _ll_state_rm "mode"
  log "lowlevel_restore_changed_state: done"
}

# Emergency / manual recovery (action.sh and uninstall.sh).
# More aggressive: restores state regardless of whether lowlevel was cleanly
# started, because the user is explicitly requesting recovery.
#
# For each service, both `cmd` and `svc` fallbacks are tried in order; the
# marker is only removed on success.  If all fallbacks fail the marker is
# intentionally kept so a subsequent action-button press can retry.
lowlevel_emergency_restore() {
  log "lowlevel_emergency_restore: start"

  # ── Restore interfaces the module brought down ──────────────────────────────
  if _ll_state_exists "ifaces_down"; then
    local ip_cmd
    ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
    if [ -n "$ip_cmd" ]; then
      local iface iface_ok=0
      while IFS= read -r iface; do
        [ -n "$iface" ] || continue
        if "$ip_cmd" link set "$iface" up 2>/dev/null; then
          log "lowlevel: emergency: interface $iface brought UP"
          iface_ok=$((iface_ok + 1))
        else
          log "lowlevel: emergency: WARN: could not restore interface $iface"
        fi
      done < "${LL_STATE_DIR}/ifaces_down"
    else
      log "lowlevel: emergency: WARN: ip command not found; cannot restore interfaces"
    fi
    _ll_state_rm "ifaces_down"
  fi

  lowlevel_vpn_lockdown_release_if_needed

  # ── Re-enable Wi-Fi ─────────────────────────────────────────────────────────
  if _ll_state_exists "wifi_was_enabled"; then
    local restored=0
    if has_cmd cmd && cmd wifi set-wifi-enabled enabled >/dev/null 2>&1; then
      restored=1
      log "lowlevel: emergency: Wi-Fi re-enabled via cmd wifi"
    fi
    if [ "$restored" = "0" ] && has_cmd svc; then
      if svc wifi enable 2>/dev/null; then
        restored=1
        log "lowlevel: emergency: Wi-Fi re-enabled via svc wifi (fallback)"
      fi
    fi
    if [ "$restored" = "1" ]; then
      _ll_state_rm "wifi_was_enabled"
      _ll_state_rm "wifi_initial_state"
    else
      log "lowlevel: emergency: WARN: could not re-enable Wi-Fi; marker kept for retry"
    fi
  fi

  # ── Re-enable mobile data ───────────────────────────────────────────────────
  if _ll_state_exists "data_was_enabled"; then
    local restored=0
    if has_cmd cmd && cmd phone data enable >/dev/null 2>&1; then
      restored=1
      log "lowlevel: emergency: mobile data re-enabled via cmd phone"
    fi
    if [ "$restored" = "0" ] && has_cmd svc; then
      if svc data enable 2>/dev/null; then
        restored=1
        log "lowlevel: emergency: mobile data re-enabled via svc data (fallback)"
      fi
    fi
    if [ "$restored" = "1" ]; then
      _ll_state_rm "data_was_enabled"
      _ll_state_rm "data_initial_state"
    else
      log "lowlevel: emergency: WARN: could not re-enable mobile data; marker kept for retry"
    fi
  fi

  # ── Re-enable Bluetooth ─────────────────────────────────────────────────────
  if _ll_state_exists "bt_was_enabled"; then
    local restored=0
    if has_cmd cmd && cmd bluetooth_manager enable >/dev/null 2>&1; then
      restored=1
      log "lowlevel: emergency: Bluetooth re-enabled via cmd bluetooth_manager"
    fi
    if [ "$restored" = "0" ] && has_cmd svc; then
      if svc bluetooth enable 2>/dev/null; then
        restored=1
        log "lowlevel: emergency: Bluetooth re-enabled via svc bluetooth (fallback)"
      fi
    fi
    if [ "$restored" = "1" ]; then
      _ll_state_rm "bt_was_enabled"
    else
      log "lowlevel: emergency: WARN: could not re-enable Bluetooth; marker kept for retry"
    fi
  fi

  # ── Note tethering status ───────────────────────────────────────────────────
  # Tethering is never auto-restarted; just note and clean up.
  if _ll_state_exists "tether_was_active"; then
    log "lowlevel: emergency: NOTE: tethering was stopped; user must re-enable manually"
    _ll_state_rm "tether_was_active"
    _ll_state_rm "tether_ifaces_down"
  fi

  _ll_state_rm "wifi_initial_state"
  _ll_state_rm "data_initial_state"
  _ll_state_rm "mode"
  log "lowlevel_emergency_restore: done"
}
