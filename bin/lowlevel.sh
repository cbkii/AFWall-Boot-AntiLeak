#!/system/bin/sh
# AFWall Boot AntiLeak v2.4 - Lower-layer suppression subsystem
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
    # Service already off; clear any stale marker so we don't restore what we
    # never changed.
    _ll_state_rm "wifi_was_enabled"
    debug_log "lowlevel_disable_wifi: Wi-Fi already disabled; skipping"
    return 0
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
      _ll_state_set "wifi_was_enabled" "1"
    else
      log "lowlevel: Wi-Fi disable sent but off-state not yet confirmed; tracking anyway"
      _ll_state_set "wifi_was_enabled" "1"
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

  local restored=0
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
    # Service already off; clear any stale marker so we don't restore what we
    # never changed.
    _ll_state_rm "data_was_enabled"
    debug_log "lowlevel_disable_mobile_data: mobile data already disabled; skipping"
    return 0
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
    _ll_state_set "data_was_enabled" "1"
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

  local restored=0
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
  local mode="${LOWLEVEL_MODE:-safe}"
  case "$mode" in
    off) return 0 ;;
    safe|strict) ;;
    *)
      log "lowlevel_early: unknown LOWLEVEL_MODE='$mode'; treating as off"
      return 0
      ;;
  esac

  _ll_init_dirs
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
  if [ -n "$ip_cmd" ] && [ -d "/sys/class/net" ]; then
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

  # Interface quiesce: bring down any remaining UP interfaces.
  lowlevel_quiesce_interfaces

  # Service-level suppression: retry until framework is ready.
  local attempt=0 max_attempts=5
  while [ "$attempt" -lt "$max_attempts" ]; do
    if _ll_framework_ready; then
      lowlevel_disable_wifi
      lowlevel_disable_mobile_data
      if [ "${LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ]; then
        lowlevel_disable_bluetooth
      fi
      if [ "${LOWLEVEL_USE_TETHER_STOP:-1}" = "1" ]; then
        lowlevel_stop_tethering
      fi
      log "lowlevel_late: service suppression done"
      break
    fi
    attempt=$((attempt + 1))
    if [ "$attempt" -lt "$max_attempts" ]; then
      debug_log "lowlevel: framework not ready (attempt $attempt/${max_attempts}); retrying in 3s"
      sleep 3
    fi
  done

  if [ "$attempt" -ge "$max_attempts" ]; then
    log "lowlevel_late: WARN: framework not ready after ${max_attempts} attempts; service suppression skipped (iptables hard block remains)"
  fi

  _ll_state_rm "radio_off_pending_early"
  log "lowlevel_late: done"
}

# ── Periodic reassertion: keep radios off while waiting ───────────────────────
# Called from the service.sh poll loop. Lightweight and idempotent.
# Re-verifies Wi-Fi and mobile data off-state; re-applies if needed.
lowlevel_reassert_radios_off() {
  local mode
  mode="${LOWLEVEL_MODE:-safe}"
  [ "$mode" = "off" ] && return 0

  # Wi-Fi reassertion
  if [ "${LOWLEVEL_USE_WIFI_SERVICE:-1}" = "1" ] && _ll_state_exists "wifi_was_enabled"; then
    if _ll_wifi_is_enabled; then
      log "lowlevel_reassert: Wi-Fi is back on; re-disabling"
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
    if _ll_data_is_enabled; then
      log "lowlevel_reassert: mobile data is back on; re-disabling"
      if has_cmd cmd && cmd phone data disable >/dev/null 2>&1; then
        debug_log "lowlevel_reassert: mobile data re-disabled via cmd phone"
      elif has_cmd svc; then
        svc data disable 2>/dev/null || true
      fi
    fi
  fi
}

# ── Device unlock detection ────────────────────────────────────────────────────
# Strict positive-detection model: only returns 0 (unlocked) when there is
# positive evidence from at least one reliable probe. If parsing fails,
# commands are unavailable, or signals conflict, treat as locked (return 1).
#
# Probes used:
#   A. dumpsys window: look for mKeyguardShowing=false or mShowingLockscreen=false
#   B. dumpsys power:  look for mWakefulness=Awake (screen is on = user interaction)
#   C. sys.boot_completed=1 + boot animation stopped: if the framework has
#      completed boot AND Probe A confirms keyguard is gone, the combination is
#      definitive.  The screen-awake requirement (Probe B) is relaxed because
#      a momentarily-dim screen after a completed boot is still a valid
#      post-unlock state (the device is not at the lock screen).
#   D. getprop dev.bootcomplete=1: older Android fallback that mirrors
#      sys.boot_completed; combined with Probe A it is treated the same as C.
#
# Default positive outcome: both A AND B confirm (original behaviour).
# Fast-path outcomes (new): (A AND C) OR (A AND D) also return unlocked.
lowlevel_device_is_unlocked() {
  has_cmd dumpsys || return 1  # cannot determine; treat as locked

  # Probe A: keyguard state
  local wm_line kguard_showing=0
  wm_line="$(dumpsys window 2>/dev/null | grep -iE 'mKeyguardShowing|mShowingLockscreen' | head -3)"
  if [ -z "$wm_line" ]; then
    # Alternative: check for isShowing() output style
    wm_line="$(dumpsys window 2>/dev/null | grep -i 'KeyguardController' | head -3)"
  fi
  if printf '%s' "$wm_line" | grep -qi '=false\|Showing=false\|showing: false'; then
    kguard_showing=1  # keyguard not showing: positive unlocked evidence
  fi

  # Probe B: screen awake
  local pwr_line screen_awake=0
  pwr_line="$(dumpsys power 2>/dev/null | grep -i 'mWakefulness' | head -2)"
  if printf '%s' "$pwr_line" | grep -qi 'Awake'; then
    screen_awake=1
  fi

  # Canonical check: both Probe A and Probe B confirm — original behaviour.
  if [ "$kguard_showing" = "1" ] && [ "$screen_awake" = "1" ]; then
    return 0  # Positive unlock evidence from both probes
  fi

  # Probe C fast-path: sys.boot_completed=1 (and optionally boot animation
  # stopped) combined with keyguard gone.  Once the framework has signalled
  # full boot completion the device is definitively at or past the lock screen;
  # the screen-awake requirement is relaxed because the device may briefly dim
  # while still being in an unlocked post-boot state.
  if [ "$kguard_showing" = "1" ]; then
    if sys_boot_completed; then
      return 0  # Boot complete + keyguard gone => unlocked
    fi
    if boot_animation_stopped; then
      return 0  # Boot animation stopped + keyguard gone => past lock screen
    fi
    # Probe D: older Android fallback property
    if [ "$(getprop dev.bootcomplete 2>/dev/null)" = "1" ]; then
      return 0
    fi
  fi

  return 1  # Treat as locked
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
  lowlevel_restore_wifi
}

lowlevel_restore_mobile_data_if_allowed() {
  _ll_state_exists "data_was_enabled" || {
    debug_log "lowlevel_restore_mobile_data_if_allowed: mobile data was not changed by module; skipping"
    return 0
  }
  lowlevel_restore_mobile_data
}

# ── Legacy alias: lowlevel_prepare_environment ────────────────────────────────
# Called from service.sh for backward compatibility.
# Redirects to the late phase; early phase is now called from post-fs-data.sh.
# Clears stale ll state from a previous unclean boot before starting.
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

  # Clear any stale ll state from a previous unclean boot, but preserve
  # early-phase data written during this boot's post-fs-data stage.
  _ll_state_rm "wifi_was_enabled"
  _ll_state_rm "data_was_enabled"
  _ll_state_rm "bt_was_enabled"
  _ll_state_rm "tether_was_active"
  _ll_state_rm "tether_ifaces_down"
  _ll_state_rm "ifaces_down"

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

  _ll_state_rm "mode"
  log "lowlevel_emergency_restore: done"
}
