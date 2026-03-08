#!/system/bin/sh
# AFWall Boot AntiLeak v2.2.0 - Lower-layer suppression subsystem
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
# Returns 0 if Wi-Fi is currently enabled (best-effort check).
_ll_wifi_is_enabled() {
  local val
  if has_cmd settings; then
    val="$(settings get global wifi_on 2>/dev/null)"
    case "$val" in
      1) return 0 ;;
      0) return 1 ;;
    esac
  fi
  # Cannot determine; assume enabled to avoid skipping suppression.
  return 0
}

lowlevel_disable_wifi() {
  [ "${LOWLEVEL_USE_WIFI_SERVICE:-1}" = "1" ] || return 0

  if ! _ll_wifi_is_enabled; then
    debug_log "lowlevel_disable_wifi: Wi-Fi already disabled; skipping"
    return 0
  fi

  local disabled=0

  # Preferred: cmd wifi (Android 10+, works when Wi-Fi service is up).
  # Falls back to svc wifi (older path; may silently fail if service not ready).
  if has_cmd cmd && cmd wifi set-wifi-enabled disabled >/dev/null 2>&1; then
    disabled=1
    log "lowlevel: Wi-Fi disabled via cmd wifi"
  fi

  if [ "$disabled" = "0" ] && has_cmd svc; then
    if svc wifi disable 2>/dev/null; then
      disabled=1
      log "lowlevel: Wi-Fi disabled via svc wifi (fallback)"
    fi
  fi

  if [ "$disabled" = "1" ]; then
    _ll_state_set "wifi_was_enabled" "1"
  else
    log "lowlevel: WARN: could not disable Wi-Fi (best-effort)"
  fi
}

lowlevel_restore_wifi() {
  _ll_state_exists "wifi_was_enabled" || return 0

  if has_cmd cmd && cmd wifi set-wifi-enabled enabled >/dev/null 2>&1; then
    log "lowlevel: Wi-Fi re-enabled via cmd wifi"
  elif has_cmd svc; then
    svc wifi enable 2>/dev/null || true
    log "lowlevel: Wi-Fi re-enabled via svc wifi (fallback)"
  else
    log "lowlevel: WARN: could not re-enable Wi-Fi"
  fi
  _ll_state_rm "wifi_was_enabled"
}

# ── Mobile data control ────────────────────────────────────────────────────────
# Returns 0 if mobile data is currently enabled (best-effort check).
_ll_data_is_enabled() {
  local val
  if has_cmd settings; then
    val="$(settings get global mobile_data 2>/dev/null)"
    case "$val" in
      1) return 0 ;;
      0) return 1 ;;
    esac
  fi
  return 0
}

lowlevel_disable_mobile_data() {
  [ "${LOWLEVEL_USE_PHONE_DATA_CMD:-1}" = "1" ] || return 0

  if ! _ll_data_is_enabled; then
    debug_log "lowlevel_disable_mobile_data: mobile data already disabled; skipping"
    return 0
  fi

  local disabled=0

  # Preferred: cmd phone (Android 9+).
  if has_cmd cmd && cmd phone data disable >/dev/null 2>&1; then
    disabled=1
    log "lowlevel: mobile data disabled via cmd phone"
  fi

  if [ "$disabled" = "0" ] && has_cmd svc; then
    if svc data disable 2>/dev/null; then
      disabled=1
      log "lowlevel: mobile data disabled via svc data (fallback)"
    fi
  fi

  if [ "$disabled" = "1" ]; then
    _ll_state_set "data_was_enabled" "1"
  else
    log "lowlevel: WARN: could not disable mobile data (best-effort)"
  fi
}

lowlevel_restore_mobile_data() {
  _ll_state_exists "data_was_enabled" || return 0

  if has_cmd cmd && cmd phone data enable >/dev/null 2>&1; then
    log "lowlevel: mobile data re-enabled via cmd phone"
  elif has_cmd svc; then
    svc data enable 2>/dev/null || true
    log "lowlevel: mobile data re-enabled via svc data (fallback)"
  else
    log "lowlevel: WARN: could not re-enable mobile data"
  fi
  _ll_state_rm "data_was_enabled"
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
  return 0
}

lowlevel_disable_bluetooth() {
  [ "${LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ] || return 0

  if ! _ll_bt_is_enabled; then
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

  if has_cmd cmd && cmd bluetooth_manager enable >/dev/null 2>&1; then
    log "lowlevel: Bluetooth re-enabled via cmd bluetooth_manager"
  elif has_cmd svc; then
    svc bluetooth enable 2>/dev/null || true
    log "lowlevel: Bluetooth re-enabled via svc bluetooth (fallback)"
  else
    log "lowlevel: WARN: could not re-enable Bluetooth"
  fi
  _ll_state_rm "bt_was_enabled"
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

# Called from service.sh at the start of the background subshell.
# Performs interface quiesce immediately, then waits briefly for framework
# services and applies service-level suppression.
lowlevel_prepare_environment() {
  local mode="${LOWLEVEL_MODE:-safe}"
  case "$mode" in
    off) return 0 ;;
    safe|strict) ;;
    *)
      log "lowlevel: unknown LOWLEVEL_MODE='$mode'; treating as off"
      return 0
      ;;
  esac

  _ll_init_dirs
  _ll_state_set "mode" "$mode"
  log "lowlevel_prepare_environment: start (mode=$mode)"

  # ── Phase 1: Interface quiesce ─────────────────────────────────────────────
  # Uses only /sys/class/net and the `ip` tool; no framework services needed.
  lowlevel_quiesce_interfaces

  # ── Phase 2: Service-level suppression ────────────────────────────────────
  # Requires Android framework services.  Retry briefly (services may not be
  # ready immediately when service.sh starts).
  local attempt=0 max_attempts=5
  while [ "$attempt" -lt "$max_attempts" ]; do
    if _ll_framework_ready; then
      lowlevel_disable_wifi
      lowlevel_disable_mobile_data
      # Bluetooth: disabled by default even in strict mode (see config.sh).
      if [ "${LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ]; then
        lowlevel_disable_bluetooth
      fi
      # Tethering suppression.
      if [ "${LOWLEVEL_USE_TETHER_STOP:-1}" = "1" ]; then
        lowlevel_stop_tethering
      fi
      log "lowlevel_prepare_environment: service suppression done"
      break
    fi
    attempt=$((attempt + 1))
    if [ "$attempt" -lt "$max_attempts" ]; then
      debug_log "lowlevel: framework not ready (attempt $attempt/${max_attempts}); retrying in 3s"
      sleep 3
    fi
  done

  if [ "$attempt" -ge "$max_attempts" ]; then
    log "lowlevel: WARN: framework not ready after ${max_attempts} attempts; service suppression skipped (iptables hard block remains)"
  fi

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
  lowlevel_restore_wifi
  lowlevel_restore_mobile_data
  lowlevel_restore_bluetooth
  lowlevel_restore_tethering_note
  _ll_state_rm "mode"
  log "lowlevel_restore_changed_state: done"
}

# Emergency / manual recovery (action.sh and uninstall.sh).
# More aggressive: restores state regardless of whether lowlevel was cleanly
# started, because the user is explicitly requesting recovery.
lowlevel_emergency_restore() {
  log "lowlevel_emergency_restore: start"

  # Restore interfaces the module brought down.
  if _ll_state_exists "ifaces_down"; then
    local ip_cmd
    ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
    if [ -n "$ip_cmd" ]; then
      local iface
      while IFS= read -r iface; do
        [ -n "$iface" ] || continue
        "$ip_cmd" link set "$iface" up 2>/dev/null || true
        log "lowlevel: emergency: interface $iface brought UP"
      done < "${LL_STATE_DIR}/ifaces_down"
    fi
    _ll_state_rm "ifaces_down"
  fi

  # Re-enable Wi-Fi if the module disabled it.
  if _ll_state_exists "wifi_was_enabled"; then
    if has_cmd cmd; then
      cmd wifi set-wifi-enabled enabled >/dev/null 2>&1 || true
      log "lowlevel: emergency: Wi-Fi re-enabled"
    elif has_cmd svc; then
      svc wifi enable 2>/dev/null || true
      log "lowlevel: emergency: Wi-Fi re-enabled via svc"
    fi
    _ll_state_rm "wifi_was_enabled"
  fi

  # Re-enable mobile data if the module disabled it.
  if _ll_state_exists "data_was_enabled"; then
    if has_cmd cmd; then
      cmd phone data enable >/dev/null 2>&1 || true
      log "lowlevel: emergency: mobile data re-enabled"
    elif has_cmd svc; then
      svc data enable 2>/dev/null || true
      log "lowlevel: emergency: mobile data re-enabled via svc"
    fi
    _ll_state_rm "data_was_enabled"
  fi

  # Re-enable Bluetooth if the module disabled it.
  if _ll_state_exists "bt_was_enabled"; then
    if has_cmd cmd; then
      cmd bluetooth_manager enable >/dev/null 2>&1 || true
      log "lowlevel: emergency: Bluetooth re-enabled"
    elif has_cmd svc; then
      svc bluetooth enable 2>/dev/null || true
      log "lowlevel: emergency: Bluetooth re-enabled via svc"
    fi
    _ll_state_rm "bt_was_enabled"
  fi

  # Note tethering status (we do not auto-restart tethering).
  if _ll_state_exists "tether_was_active"; then
    log "lowlevel: emergency: NOTE: tethering was stopped; user must re-enable manually"
    _ll_state_rm "tether_was_active"
    _ll_state_rm "tether_ifaces_down"
  fi

  _ll_state_rm "mode"
  log "lowlevel_emergency_restore: done"
}
