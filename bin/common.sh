#!/system/bin/sh
# AFWall Boot AntiLeak v4.3.1 - Common library
# POSIX/ash compatible. No bashisms. Sourced by all module scripts; do not
# execute directly.

# ── Module identity ────────────────────────────────────────────────────────────
MODULE_ID="AFWall-Boot-AntiLeak"
MODULE_VERSION="v4.3.1"
MODULE_DATA="/data/adb/${MODULE_ID}"
LOG_DIR="${MODULE_DATA}/logs"
LOG_FILE="${LOG_DIR}/boot.log"
STATE_DIR="${MODULE_DATA}/state"
SERVICE_PID_FILE="${STATE_DIR}/aba_service.pid"
SERVICE_LOCK_FILE="${STATE_DIR}/aba_service.lock"

# ── Module-owned chain names ───────────────────────────────────────────────────
# Each traffic direction gets its own named chain so ownership is unambiguous.
# Never touch iptables chains not in this list.
#
# OUTPUT chains (device-originated traffic) — raw preferred, filter fallback
CHAIN_OUT_V4="MOD_PRE_AFW"
CHAIN_OUT_V6="MOD_PRE_AFW_V6"
# FORWARD chains (tethered-client / hotspot / USB / BT tether) — filter table
CHAIN_FWD_V4="MOD_PRE_AFW_FWD"
CHAIN_FWD_V6="MOD_PRE_AFW_FWD_V6"
# INPUT chains (optional: inbound traffic hardening) — filter table
CHAIN_IN_V4="MOD_PRE_AFW_IN"
CHAIN_IN_V6="MOD_PRE_AFW_IN_V6"

# ── Directory bootstrap ────────────────────────────────────────────────────────
_DIRS_INIT=0
_init_dirs() {
  [ "$_DIRS_INIT" = "1" ] && return 0
  mkdir -p "$LOG_DIR" "$STATE_DIR" 2>/dev/null || true
  chmod 700 "$MODULE_DATA" "$LOG_DIR" "$STATE_DIR" 2>/dev/null || true
  _DIRS_INIT=1
}

# ── Logging ────────────────────────────────────────────────────────────────────
_LOG_FILE_INIT=0
log() {
  _init_dirs
  if [ "$_LOG_FILE_INIT" = "0" ]; then
    touch "$LOG_FILE" 2>/dev/null || true
    chmod 600 "$LOG_FILE" 2>/dev/null || true
    _LOG_FILE_INIT=1
  fi
  printf '[%s +%ss] %s\n' \
    "$(date +'%F %T' 2>/dev/null || printf 'unknown-time')" \
    "$(monotonic_seconds 2>/dev/null || printf 0)" \
    "$*" >> "$LOG_FILE" 2>/dev/null || true
}

monotonic_seconds() {
  local up
  up="$(cat /proc/uptime 2>/dev/null)"
  up="${up%% *}"
  up="${up%%.*}"
  case "$up" in ''|*[!0-9]*) date +%s 2>/dev/null || printf 0 ;; *) printf '%s' "$up" ;; esac
}

kernel_boot_id() {
  cat /proc/sys/kernel/random/boot_id 2>/dev/null || printf unknown
}

debug_log() {
  [ "${DEBUG:-0}" = "1" ] || return 0
  log "[DEBUG] $*"
}

# log_on_transition GROUP STATE MESSAGE [MIN_INTERVAL_SECS]
# Logs MESSAGE at normal level if:
#   - STATE for GROUP changed since last call;
#   - OR boot phase changed (early -> boot_complete -> unlocked);
#   - OR MIN_INTERVAL_SECS elapsed since last normal log for this GROUP.
# Otherwise logs at debug level.
# Expects _boot_complete_now, device_unlocked, and optional NOW in caller scope.
# GROUP must be a small static key; put interface names, package names, and
# other dynamic details in STATE or MESSAGE so tracking variables stay bounded.
log_on_transition() {
  local group="$1" state="$2" msg="$3" min_int="${4:-}"
  local pfx cur_phase cur_ts last_state last_phase last_ts do_log

  # Sanitize group name for shell variable compatibility (replace non-alphanumeric with _)
  pfx="_LT_$(printf '%s' "$group" | tr -c 'A-Za-z0-9' '_')"

  # Phase: 0=early, 1=boot_complete, 2=unlocked
  cur_phase=0
  [ "${_boot_complete_now:-0}" = "1" ] && cur_phase=1
  [ "${device_unlocked:-0}" = "1" ] && cur_phase=2

  cur_ts="${NOW:-0}"
  [ "$cur_ts" = "0" ] && cur_ts="$(monotonic_seconds)"

  eval "last_state=\${${pfx}_S:-}"
  eval "last_phase=\${${pfx}_P:--1}"
  eval "last_ts=\${${pfx}_T:-0}"

  do_log=0
  if [ "$state" != "$last_state" ]; then
    do_log=1
  elif [ "$cur_phase" -gt "$last_phase" ]; then
    do_log=1
  elif [ -n "$min_int" ] && [ "$min_int" -gt 0 ]; then
    if [ $((cur_ts - last_ts)) -ge "$min_int" ]; then
      do_log=1
    fi
  fi

  if [ "$do_log" = "1" ]; then
    log "$msg"
    eval "${pfx}_S=\"\$state\""
    eval "${pfx}_P=\$cur_phase"
    eval "${pfx}_T=\$cur_ts"
  else
    debug_log "$msg"
  fi
}

# ── Command discovery ──────────────────────────────────────────────────────────
# Returns the full path of a command, checking PATH first then known locations.
_find_cmd() {
  local name="$1" p _cache_key _cached
  # Variable names may only contain [A-Za-z0-9_]; guard to prevent eval
  # constructing syntactically invalid variable names (e.g. with - or +).
  case "$name" in
    *[!A-Za-z0-9_]*|'') ;;
    *)
      _cache_key="_CMD_CACHE_${name}"
      eval "_cached=\${${_cache_key}:-}"
      if [ -n "$_cached" ] && [ -x "$_cached" ]; then
        printf '%s' "$_cached"
        return 0
      fi
      ;;
  esac

  if command -v "$name" >/dev/null 2>&1; then
    p="$(command -v "$name")"
    case "$name" in
      *[!A-Za-z0-9_]*|'') ;;
      *) eval "${_cache_key}=\"\$p\"" ;;
    esac
    printf '%s' "$p"
    return 0
  fi
  for p in \
    "/system/bin/${name}" \
    "/system/xbin/${name}" \
    "/sbin/${name}" \
    "/data/adb/magisk/${name}" \
    "/data/adb/ksu/bin/${name}"; do
    if [ -x "$p" ]; then
      case "$name" in
        *[!A-Za-z0-9_]*|'') ;;
        *) eval "${_cache_key}=\"\$p\"" ;;
      esac
      printf '%s' "$p"
      return 0
    fi
  done
  debug_log "cmd_not_found: $name"
  return 1
}

has_cmd() { _find_cmd "$1" >/dev/null 2>&1; }

# ── iptables/ip6tables wrapper ────────────────────────────────────────────────
# Android builds and backends differ in xtables lock support.  Prefer -w to
# avoid racing AFWall+ while it applies rules, then fall back cleanly for older
# binaries that reject -w.  Keep all arguments after the binary path unchanged.
_ipt() {
  local cmd="$1" base cache state
  shift
  [ -x "$cmd" ] || return 127
  base="$(basename "$cmd" | tr -c 'A-Za-z0-9_' '_')"
  cache="_IPT_WAIT_${base}"
  eval "state=\${${cache}:-unknown}"
  case "$state" in
    yes) "$cmd" -w "$@" 2>/dev/null; return $? ;;
    no) "$cmd" "$@" 2>/dev/null; return $? ;;
  esac
  if "$cmd" -w -L >/dev/null 2>&1; then
    eval "${cache}=yes"
    "$cmd" -w "$@" 2>/dev/null
    return $?
  fi
  eval "${cache}=no"
  "$cmd" "$@" 2>/dev/null
}

_ipt_out() {
  _ipt "$@"
}


# ── Config loading ─────────────────────────────────────────────────────────────
# v4.3.1 breaking-change config model: only module-local config is read.
# Sources, in order:
#   1. $MODDIR/config.sh        (packaged defaults)
#   2. $MODDIR/config.local.sh  (optional user overrides)
# Nothing under /data/adb/AFWall-Boot-AntiLeak is sourced at runtime.
_config_warn() {
  _init_dirs
  printf '%s\n' "$*" >> "${STATE_DIR}/config_warnings" 2>/dev/null || true
  log "$*"
}

_config_bool() {
  case "$1" in 1|yes|true|on) printf '1' ;; *) printf '0' ;; esac
}

_config_uint_or_default() {
  local val="$1" def="$2" name="$3"
  case "$val" in
    ''|*[!0-9]*) _config_warn "config: invalid numeric value for ${name}='${val}'; using ${def}"; printf '%s' "$def" ;;
    *) printf '%s' "$val" ;;
  esac
}

_warn_and_unset_legacy_config_vars() {
  local v set
  for v in \
    TIMEOUT_START_AFTER_READY_GATE TIMEOUT_UNLOCK_GATED \
    AFWALL_READY_REQUIRE_BOOT_COMPLETED AFWALL_READY_REQUIRE_UNLOCK AFWALL_READY_MIN_POST_UNLOCK_SECS \
    TIMEOUT_POLICY AUTO_TIMEOUT_UNBLOCK TIMEOUT_SECS \
    TRANSPORT_WAIT_SECS TRANSPORT_WAIT_SECS_POST_BOOT \
    SETTLE_SECS SETTLE_SECS_POST_BOOT LIVENESS_SECS_POST_BOOT FALLBACK_SECS_POST_BOOT \
    LOWLEVEL_MODE LOWLEVEL_WIFI_DATA_OFF LOWLEVEL_INTERFACE_QUIESCE \
    LOWLEVEL_USE_WIFI_SERVICE LOWLEVEL_USE_PHONE_DATA_CMD LOWLEVEL_USE_BLUETOOTH_MANAGER LOWLEVEL_USE_TETHER_STOP \
    VPN_LOCKDOWN_BOOT_ENFORCE VPN_LOCKDOWN_RELEASE_ON_RESTORE VPN_LOCKDOWN_PROVIDER_PACKAGES \
    WIFI_AFWALL_GATE MOBILE_AFWALL_GATE ENABLE_FORWARD_BLOCK ENABLE_INPUT_BLOCK; do
    eval "set=\${${v}+set}"
    if [ "$set" = "set" ]; then
      _config_warn "config: unsupported legacy variable ignored in v4.3.1: $v"
      unset "$v"
    fi
  done
}

derive_internal_config() {
  # Validate simple enums first.  Invalid values fall back to safe defaults.
  case "${LEAK_PROTECTION_MODE:-balanced}" in
    balanced|strict|recovery_friendly) ;;
    *) _config_warn "config: invalid LEAK_PROTECTION_MODE='${LEAK_PROTECTION_MODE}'; using balanced"; LEAK_PROTECTION_MODE=balanced ;;
  esac
  case "${INTEGRATION_MODE:-auto}" in
    auto|prefer_module|prefer_afwall|off) ;;
    *) _config_warn "config: invalid INTEGRATION_MODE='${INTEGRATION_MODE}'; using auto"; INTEGRATION_MODE=auto ;;
  esac
  case "${WATCHDOG_POLICY:-block}" in
    block|unblock) ;;
    *) _config_warn "config: invalid WATCHDOG_POLICY='${WATCHDOG_POLICY}'; using block"; WATCHDOG_POLICY=block ;;
  esac
  case "${RADIO_SUPPRESSION:-off}" in
    off|safe|strict) ;;
    *) _config_warn "config: invalid RADIO_SUPPRESSION='${RADIO_SUPPRESSION}'; using off"; RADIO_SUPPRESSION=off ;;
  esac
  case "${AFWALL_PACKAGE:-auto}" in
    auto|dev.ukanth.ufirewall|dev.ukanth.ufirewall.donate|com.ukanth.ufirewall) ;;
    *) _config_warn "config: invalid AFWALL_PACKAGE='${AFWALL_PACKAGE}'; using auto"; AFWALL_PACKAGE=auto ;;
  esac
  case "${VPN_LOCKDOWN_MODE:-off}" in
    off|preserve|restore) ;;
    *) _config_warn "config: invalid VPN_LOCKDOWN_MODE='${VPN_LOCKDOWN_MODE}'; using off"; VPN_LOCKDOWN_MODE=off ;;
  esac

  # Numeric config with defaults.
  POLL_INTERVAL_SECS="$(_config_uint_or_default "${POLL_INTERVAL_SECS:-2}" 2 POLL_INTERVAL_SECS)"
  [ "$POLL_INTERVAL_SECS" = "0" ] && { _config_warn "config: POLL_INTERVAL_SECS=0 is too aggressive; using 1"; POLL_INTERVAL_SECS=1; }
  FAST_STABLE_SECS="$(_config_uint_or_default "${FAST_STABLE_SECS:-2}" 2 FAST_STABLE_SECS)"
  SLOW_STABLE_SECS="$(_config_uint_or_default "${SLOW_STABLE_SECS:-6}" 6 SLOW_STABLE_SECS)"
  WATCHDOG_SERVICE_SECS="$(_config_uint_or_default "${WATCHDOG_SERVICE_SECS:-300}" 300 WATCHDOG_SERVICE_SECS)"
  WATCHDOG_BOOT_COMPLETED_SECS="$(_config_uint_or_default "${WATCHDOG_BOOT_COMPLETED_SECS:-240}" 240 WATCHDOG_BOOT_COMPLETED_SECS)"
  TRANSPORT_ABSENCE_STABLE_SECS="$(_config_uint_or_default "${TRANSPORT_ABSENCE_STABLE_SECS:-3}" 3 TRANSPORT_ABSENCE_STABLE_SECS)"
  TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT="$(_config_uint_or_default "${TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT:-2}" 2 TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT)"
  TRANSPORT_ORPHAN_STABLE_SECS="$(_config_uint_or_default "${TRANSPORT_ORPHAN_STABLE_SECS:-3}" 3 TRANSPORT_ORPHAN_STABLE_SECS)"
  TRANSPORT_INCONCLUSIVE_SECS="$(_config_uint_or_default "${TRANSPORT_INCONCLUSIVE_SECS:-20}" 20 TRANSPORT_INCONCLUSIVE_SECS)"
  TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT="$(_config_uint_or_default "${TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT:-8}" 8 TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT)"
  BLACKOUT_REASSERT_INTERVAL="$(_config_uint_or_default "${BLACKOUT_REASSERT_INTERVAL:-10}" 10 BLACKOUT_REASSERT_INTERVAL)"
  RADIO_REASSERT_INTERVAL="$(_config_uint_or_default "${RADIO_REASSERT_INTERVAL:-15}" 15 RADIO_REASSERT_INTERVAL)"
  UNLOCK_POLL_INTERVAL="$(_config_uint_or_default "${UNLOCK_POLL_INTERVAL:-10}" 10 UNLOCK_POLL_INTERVAL)"
  AFWALL_RULE_DENSITY_MIN="$(_config_uint_or_default "${AFWALL_RULE_DENSITY_MIN:-3}" 3 AFWALL_RULE_DENSITY_MIN)"

  BLOCK_FORWARD_EFFECTIVE="$(_config_bool "${BLOCK_FORWARD:-1}")"
  BLOCK_INPUT_EFFECTIVE="$(_config_bool "${BLOCK_INPUT:-0}")"
  DEBUG="$(_config_bool "${DEBUG:-0}")"

  # Internal knobs consumed by the existing lower-layer/firewall implementation.
  # They are derived only from v4.3.1 user-facing settings and are not user config.
  ENABLE_FORWARD_BLOCK="$BLOCK_FORWARD_EFFECTIVE"
  ENABLE_INPUT_BLOCK="$BLOCK_INPUT_EFFECTIVE"
  TRANSPORT_RESTORE_GATING_EFFECTIVE=1

  # LEAK_PROTECTION_MODE controls firewall proof only. It must not implicitly
  # force disruptive radio handling; strict radio suppression is opt-in via
  # RADIO_SUPPRESSION=strict or the installer strict profile.
  case "$RADIO_SUPPRESSION" in
    off)
      LOWLEVEL_MODE=off; LOWLEVEL_WIFI_DATA_OFF=0; LOWLEVEL_INTERFACE_QUIESCE=0
      LOWLEVEL_USE_WIFI_SERVICE=0; LOWLEVEL_USE_PHONE_DATA_CMD=0; LOWLEVEL_USE_BLUETOOTH_MANAGER=0; LOWLEVEL_USE_TETHER_STOP=0 ;;
    safe)
      LOWLEVEL_MODE=safe; LOWLEVEL_WIFI_DATA_OFF=0; LOWLEVEL_INTERFACE_QUIESCE=0
      LOWLEVEL_USE_WIFI_SERVICE=0; LOWLEVEL_USE_PHONE_DATA_CMD=0; LOWLEVEL_USE_BLUETOOTH_MANAGER=0; LOWLEVEL_USE_TETHER_STOP=0 ;;
    strict)
      LOWLEVEL_MODE=strict; LOWLEVEL_WIFI_DATA_OFF=1; LOWLEVEL_INTERFACE_QUIESCE=1
      LOWLEVEL_USE_WIFI_SERVICE=1; LOWLEVEL_USE_PHONE_DATA_CMD=1; LOWLEVEL_USE_BLUETOOTH_MANAGER=0; LOWLEVEL_USE_TETHER_STOP=1 ;;
  esac

  case "$VPN_LOCKDOWN_MODE" in
    off) VPN_LOCKDOWN_BOOT_ENFORCE=0; VPN_LOCKDOWN_RELEASE_ON_RESTORE=0; VPN_LOCKDOWN_PRESERVE_ONLY=0 ;;
    preserve) VPN_LOCKDOWN_BOOT_ENFORCE=0; VPN_LOCKDOWN_RELEASE_ON_RESTORE=0; VPN_LOCKDOWN_PRESERVE_ONLY=1 ;;
    restore) VPN_LOCKDOWN_BOOT_ENFORCE=1; VPN_LOCKDOWN_RELEASE_ON_RESTORE=1; VPN_LOCKDOWN_PRESERVE_ONLY=0 ;;
  esac
  if [ "${VPN_PROVIDER_PACKAGES:-auto}" = "auto" ]; then
    VPN_LOCKDOWN_PROVIDER_PACKAGES=""
  else
    VPN_LOCKDOWN_PROVIDER_PACKAGES="${VPN_PROVIDER_PACKAGES:-}"
  fi

  TRANSPORT_SETTLE_SECS_EFFECTIVE=5
  TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE=1
  FAMILY_FAST_SECS_POST_BOOT_EFFECTIVE="$FAST_STABLE_SECS"
  FAMILY_SLOW_SECS_POST_BOOT_EFFECTIVE="$SLOW_STABLE_SECS"
}

load_config() {
  [ "${_MODULE_CFG_LOADED:-0}" = "1" ] && return 0
  _init_dirs
  CONFIG_SOURCED_FILES=""
  CONFIG_IGNORED_FILES=""

  local cfg legacy
  cfg="${MODDIR:-}/config.sh"
  if [ -f "$cfg" ]; then
    if . "$cfg" 2>/dev/null; then
      CONFIG_SOURCED_FILES="$cfg"
    else
      _config_warn "config: failed to source module config: $cfg"
      return 1
    fi
  fi
  cfg="${MODDIR:-}/config.local.sh"
  if [ -f "$cfg" ]; then
    if . "$cfg" 2>/dev/null; then
      CONFIG_SOURCED_FILES="${CONFIG_SOURCED_FILES}${CONFIG_SOURCED_FILES:+ }$cfg"
    else
      _config_warn "config: failed to source module config: $cfg"
      return 1
    fi
  fi

  for legacy in "${MODULE_DATA}/config.sh" "${MODULE_DATA}/installer.cfg"; do
    if [ -f "$legacy" ]; then
      CONFIG_IGNORED_FILES="${CONFIG_IGNORED_FILES}${CONFIG_IGNORED_FILES:+ }$legacy"
      _config_warn "config: legacy external config path ignored in v4.3.1 breaking-change release: $legacy"
    fi
  done

  _warn_and_unset_legacy_config_vars
  derive_internal_config
  [ -z "$CONFIG_SOURCED_FILES" ] && CONFIG_SOURCED_FILES="(none; built-in fallbacks)"
  _MODULE_CFG_LOADED=1
  return 0
}

log_effective_config() {
  log "config: sourced=${CONFIG_SOURCED_FILES:-unknown} ignored_legacy=${CONFIG_IGNORED_FILES:-none}"
  log "config: effective mode=${LEAK_PROTECTION_MODE:-balanced} poll=${POLL_INTERVAL_SECS}s fast=${FAST_STABLE_SECS}s slow=${SLOW_STABLE_SECS}s watchdog_service=${WATCHDOG_SERVICE_SECS}s watchdog_boot=${WATCHDOG_BOOT_COMPLETED_SECS}s watchdog_policy=${WATCHDOG_POLICY}"
  log "config: effective blocks forward=${BLOCK_FORWARD_EFFECTIVE} input=${BLOCK_INPUT_EFFECTIVE} radio=${RADIO_SUPPRESSION} afwall_package=${AFWALL_PACKAGE:-auto} vpn_mode=${VPN_LOCKDOWN_MODE} vpn_providers=${VPN_PROVIDER_PACKAGES:-auto}"
}

write_service_lock() {
  _init_dirs
  local pid="$1" now boot tmp
  now="$(monotonic_seconds)"
  boot="$(kernel_boot_id)"
  tmp="${SERVICE_LOCK_FILE}.$$"
  {
    printf 'pid=%s\n' "$pid"
    printf 'boot_id=%s\n' "$boot"
    printf 'module_version=%s\n' "$MODULE_VERSION"
    printf 'start_mono=%s\n' "$now"
  } > "$tmp" 2>/dev/null || return 1
  mv -f "$tmp" "$SERVICE_LOCK_FILE" 2>/dev/null || return 1
  chmod 600 "$SERVICE_LOCK_FILE" 2>/dev/null || true
}

service_lock_active() {
  [ -f "$SERVICE_LOCK_FILE" ] || return 1
  local pid="" boot_id="" module_version="" current_boot key val
  while IFS='=' read -r key val; do
    case "$key" in
      pid) pid="$val" ;;
      boot_id) boot_id="$val" ;;
      module_version) module_version="$val" ;;
    esac
  done < "$SERVICE_LOCK_FILE" 2>/dev/null || return 1
  current_boot="$(kernel_boot_id)"
  [ "$boot_id" = "$current_boot" ] || return 1
  [ "$module_version" = "$MODULE_VERSION" ] || return 1
  case "$pid" in ''|*[!0-9]*) return 1 ;; esac
  kill -0 "$pid" 2>/dev/null
}

clear_service_lock() {
  rm -f "$SERVICE_LOCK_FILE" 2>/dev/null || true
}

# ── IPTables low-level helpers ─────────────────────────────────────────────────
_table_available() {
  local cmd="$1" table="$2"
  _ipt "$cmd" -t "$table" -S >/dev/null 2>&1
}

_chain_exists() {
  local cmd="$1" table="$2" chain="$3"
  _ipt "$cmd" -t "$table" -S "$chain" >/dev/null 2>&1
}

# Check whether a plain jump rule (-j TARGET) already exists in CHAIN.
_jump_exists() {
  local cmd="$1" table="$2" chain="$3" target="$4"
  _ipt "$cmd" -t "$table" -C "$chain" -j "$target" >/dev/null 2>&1
}

_drop_exists() {
  local cmd="$1" table="$2" chain="$3"
  _ipt "$cmd" -t "$table" -C "$chain" -j DROP >/dev/null 2>&1
}

_loopback_return_exists() {
  local cmd="$1" table="$2" chain="$3" parent_chain="$4"
  case "$parent_chain" in
    OUTPUT)
      _ipt "$cmd" -t "$table" -C "$chain" -o lo -j RETURN >/dev/null 2>&1 && return 0
      # IPv6 raw fallback for backends that reject -o lo in raw checks.
      case "$(basename "$cmd"):$table" in
        ip6tables*:raw)
          _ipt "$cmd" -t "$table" -C "$chain" -d ::1/128 -j RETURN >/dev/null 2>&1 && return 0
          ;;
      esac
      ;;
    INPUT|FORWARD)
      _ipt "$cmd" -t "$table" -C "$chain" -i lo -j RETURN >/dev/null 2>&1 && return 0
      ;;
  esac
  return 1
}

_ensure_loopback_return() {
  local cmd="$1" table="$2" chain="$3" parent_chain="$4"
  _loopback_return_exists "$cmd" "$table" "$chain" "$parent_chain" && return 0
  case "$parent_chain" in
    OUTPUT)
      if _ipt "$cmd" -t "$table" -I "$chain" 1 -o lo -j RETURN >/dev/null 2>&1; then
        return 0
      fi
      case "$(basename "$cmd"):$table" in
        ip6tables*:raw)
          if _ipt "$cmd" -t "$table" -I "$chain" 1 -d ::1/128 -j RETURN >/dev/null 2>&1; then
            log "_ensure_loopback_return: used IPv6 ::1 raw fallback for $chain"
            return 0
          fi
          ;;
      esac
      ;;
    INPUT|FORWARD)
      _ipt "$cmd" -t "$table" -I "$chain" 1 -i lo -j RETURN >/dev/null 2>&1 && return 0
      ;;
  esac
  log "_ensure_loopback_return: WARN: could not add loopback RETURN to $chain in $table/$(basename "$cmd")"
  return 1
}

_chain_block_intact() {
  local cmd="$1" table="$2" chain="$3" parent_chain="$4" rules=""

  # Hot-path integrity check: read the table once, then inspect the captured
  # rules in memory.  This avoids several iptables/ip6tables forks per polling
  # cycle while preserving the same chain+DROP+parent-jump+loopback semantics.
  rules="$(_ipt "$cmd" -t "$table" -S 2>/dev/null)" || return 1

  printf '%s\n' "$rules" | grep -qE "^-N ${chain}( |$)" || return 1
  printf '%s\n' "$rules" | grep -qE "^-A ${chain}( .*| )-j DROP$|^-A ${chain}( .*| )-j DROP " || return 1
  printf '%s\n' "$rules" | grep -qE "^-A ${parent_chain}( .*| )-j ${chain}$|^-A ${parent_chain}( .*| )-j ${chain} " || return 1

  case "$parent_chain" in
    OUTPUT)
      printf '%s\n' "$rules" | grep -qE "^-A ${chain}( .*| )-o lo( .*| )-j RETURN$|^-A ${chain}( .*| )-o lo( .*| )-j RETURN " && return 0
      case "$(basename "$cmd"):$table" in
        ip6tables*:raw)
          printf '%s\n' "$rules" | grep -qE "^-A ${chain}( .*| )-d ::1/128( .*| )-j RETURN$|^-A ${chain}( .*| )-d ::1/128( .*| )-j RETURN " && return 0
          ;;
      esac
      ;;
    INPUT|FORWARD)
      printf '%s\n' "$rules" | grep -qE "^-A ${chain}( .*| )-i lo( .*| )-j RETURN$|^-A ${chain}( .*| )-i lo( .*| )-j RETURN " && return 0
      ;;
  esac

  return 1
}

# ── Block installation ─────────────────────────────────────────────────────────
# Generic helper: create a DROP chain and jump to it from parent_chain.
# Handles loopback exemption per traffic direction.
# Idempotent: safe to call multiple times.
_install_chain_block_table() {
  local cmd="$1" table="$2" chain="$3" parent_chain="$4"
  debug_log "_install_chain_block_table: cmd=$(basename "$cmd") table=$table chain=$chain parent=$parent_chain"

  if ! _table_available "$cmd" "$table"; then
    debug_log "_install_chain_block_table: $table unavailable for $(basename "$cmd")"
    return 1
  fi

  if ! _ipt "$cmd" -t "$table" -S "$parent_chain" >/dev/null 2>&1; then
    debug_log "_install_chain_block_table: $parent_chain not in $table ($(basename "$cmd"))"
    return 1
  fi

  if ! _chain_exists "$cmd" "$table" "$chain"; then
    if ! _ipt "$cmd" -t "$table" -N "$chain" >/dev/null 2>&1; then
      log "_install_chain_block_table: failed to create $chain in $table"
      return 1
    fi
    debug_log "_install_chain_block_table: created $chain in $table"
  fi

  # Loopback exemption must be inserted before DROP.  A stale chain may already
  # contain DROP, so append is not safe here.
  _ensure_loopback_return "$cmd" "$table" "$chain" "$parent_chain" || true

  if ! _drop_exists "$cmd" "$table" "$chain"; then
    if ! _ipt "$cmd" -t "$table" -A "$chain" -j DROP >/dev/null 2>&1; then
      log "_install_chain_block_table: failed to add DROP to $chain in $table"
      _ipt "$cmd" -t "$table" -F "$chain" >/dev/null 2>&1 || true
      _ipt "$cmd" -t "$table" -X "$chain" >/dev/null 2>&1 || true
      return 1
    fi
  fi

  if ! _jump_exists "$cmd" "$table" "$parent_chain" "$chain"; then
    if _ipt "$cmd" -t "$table" -I "$parent_chain" 1 -j "$chain" >/dev/null 2>&1; then
      log "_install_chain_block_table: inserted $parent_chain -> $chain in $table"
    else
      log "_install_chain_block_table: WARN: failed to insert $parent_chain jump to $chain in $table"
    fi
  fi

  if _chain_block_intact "$cmd" "$table" "$chain" "$parent_chain"; then
    return 0
  fi

  log "_install_chain_block_table: DEGRADED $table/$parent_chain->$chain (chain/drop/jump/loopback not all verified)"
  return 1
}

# Backward-compatible alias used internally (OUTPUT direction, any table).
_install_block_table() { _install_chain_block_table "$1" "$2" "$3" OUTPUT; }

# ── OUTPUT block (device-originated traffic) ───────────────────────────────────
# Dual-layer blackout: installs OUTPUT block in BOTH raw (primary) and filter
# (shadow/failsafe) tables for defence-in-depth.
# If raw disappears unexpectedly, filter still blocks OUTPUT traffic.
# The primary table recorded in the state file is "raw" when raw succeeds;
# both tables are always attempted for maximum coverage.
install_output_block_v4() {
  local ipt raw_ok=0 filter_ok=0
  ipt="$(_find_cmd iptables)" || {
    log "install_output_block_v4: iptables not found"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ipt" raw "$CHAIN_OUT_V4" OUTPUT; then
    raw_ok=1
    log "install_output_block_v4: raw layer installed"
  else
    log "install_output_block_v4: raw layer failed"
  fi

  # Always attempt filter layer as shadow/failsafe regardless of raw result.
  if _install_chain_block_table "$ipt" filter "$CHAIN_OUT_V4" OUTPUT; then
    filter_ok=1
    log "install_output_block_v4: filter layer installed (shadow)"
  else
    log "install_output_block_v4: filter layer failed (shadow unavailable)"
  fi

  if [ "$raw_ok" = "1" ]; then
    printf 'raw' > "${STATE_DIR}/ipv4_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv4_table" 2>/dev/null || true
    log "install_output_block_v4: done (raw=primary filter=${filter_ok})"
    return 0
  elif [ "$filter_ok" = "1" ]; then
    printf 'filter' > "${STATE_DIR}/ipv4_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv4_table" 2>/dev/null || true
    log "install_output_block_v4: done (filter=primary; raw unavailable)"
    return 0
  fi

  log "install_output_block_v4: WARN: could not install IPv4 OUTPUT block in any table"
  return 1
}

install_output_block_v6() {
  local ip6t raw_ok=0 filter_ok=0
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_output_block_v6: ip6tables not found; IPv6 OUTPUT unprotected"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ip6t" raw "$CHAIN_OUT_V6" OUTPUT; then
    raw_ok=1
    log "install_output_block_v6: raw layer installed"
  else
    log "install_output_block_v6: raw layer failed"
  fi

  if _install_chain_block_table "$ip6t" filter "$CHAIN_OUT_V6" OUTPUT; then
    filter_ok=1
    log "install_output_block_v6: filter layer installed (shadow)"
  else
    log "install_output_block_v6: filter layer failed (shadow unavailable)"
  fi

  if [ "$raw_ok" = "1" ]; then
    printf 'raw' > "${STATE_DIR}/ipv6_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv6_table" 2>/dev/null || true
    log "install_output_block_v6: done (raw=primary filter=${filter_ok})"
    return 0
  elif [ "$filter_ok" = "1" ]; then
    printf 'filter' > "${STATE_DIR}/ipv6_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv6_table" 2>/dev/null || true
    log "install_output_block_v6: done (filter=primary; raw unavailable)"
    return 0
  fi

  log "install_output_block_v6: WARN: could not install IPv6 OUTPUT block in any table"
  return 1
}

# ── FORWARD block (tethered-client / hotspot / USB-tether / BT-tether) ─────────
# FORWARD chain exists only in the filter table (not raw); no table fallback.
install_forward_block_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || {
    log "install_forward_block_v4: iptables not found"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ipt" filter "$CHAIN_FWD_V4" FORWARD && forward_block_intact_v4; then
    printf '1' > "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
    log "install_forward_block_v4: active in filter table (chain+DROP+FORWARD jump+loopback verified)"
    return 0
  fi

  rm -f "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
  if _chain_exists "$ipt" filter "$CHAIN_FWD_V4"; then
    log "install_forward_block_v4: DEGRADED/orphaned; not marking active"
  else
    log "install_forward_block_v4: WARN: could not install IPv4 FORWARD block; tethered-client traffic unprotected"
  fi
  return 1
}

install_forward_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_forward_block_v6: ip6tables not found; IPv6 FORWARD unprotected (reduced tether coverage)"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ip6t" filter "$CHAIN_FWD_V6" FORWARD && forward_block_intact_v6; then
    printf '1' > "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
    log "install_forward_block_v6: active in filter table (chain+DROP+FORWARD jump+loopback verified)"
    return 0
  fi

  rm -f "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
  if _chain_exists "$ip6t" filter "$CHAIN_FWD_V6"; then
    log "install_forward_block_v6: DEGRADED/orphaned; not marking active"
  else
    log "install_forward_block_v6: WARN: could not install IPv6 FORWARD block; reduced tether coverage"
  fi
  return 1
}

repair_forward_block_v4() {
  [ "${ENABLE_FORWARD_BLOCK:-1}" = "0" ] && return 0
  log "repair_forward_block_v4: verifying/repairing IPv4 FORWARD block"
  install_forward_block_v4
}

repair_forward_block_v6() {
  [ "${ENABLE_FORWARD_BLOCK:-1}" = "0" ] && return 0
  log "repair_forward_block_v6: verifying/repairing IPv6 FORWARD block"
  install_forward_block_v6
}

# ── INPUT block (optional: inbound traffic hardening) ─────────────────────────
# INPUT chain exists only in the filter table; loopback is always exempted.
install_input_block_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || {
    log "install_input_block_v4: iptables not found"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ipt" filter "$CHAIN_IN_V4" INPUT && input_block_intact_v4; then
    printf '1' > "${STATE_DIR}/ipv4_in_active" 2>/dev/null || true
    log "install_input_block_v4: active in filter table (chain+DROP+INPUT jump+loopback verified)"
    return 0
  fi

  rm -f "${STATE_DIR}/ipv4_in_active" 2>/dev/null || true
  if _chain_exists "$ipt" filter "$CHAIN_IN_V4"; then
    log "install_input_block_v4: DEGRADED/orphaned; not marking active"
  else
    log "install_input_block_v4: WARN: could not install IPv4 INPUT block"
  fi
  return 1
}

install_input_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_input_block_v6: ip6tables not found; IPv6 INPUT unprotected"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ip6t" filter "$CHAIN_IN_V6" INPUT && input_block_intact_v6; then
    printf '1' > "${STATE_DIR}/ipv6_in_active" 2>/dev/null || true
    log "install_input_block_v6: active in filter table (chain+DROP+INPUT jump+loopback verified)"
    return 0
  fi

  rm -f "${STATE_DIR}/ipv6_in_active" 2>/dev/null || true
  if _chain_exists "$ip6t" filter "$CHAIN_IN_V6"; then
    log "install_input_block_v6: DEGRADED/orphaned; not marking active"
  else
    log "install_input_block_v6: WARN: could not install IPv6 INPUT block"
  fi
  return 1
}

install_block() {
  _init_dirs
  load_config
  local out_v4=0 out_v6=0
  log "install_block: start (forward=${BLOCK_FORWARD_EFFECTIVE:-${ENABLE_FORWARD_BLOCK:-1}} input=${BLOCK_INPUT_EFFECTIVE:-${ENABLE_INPUT_BLOCK:-0}})"

  # OUTPUT block: always installed (device-originated traffic).
  install_output_block_v4 && out_v4=1
  install_output_block_v6 && out_v6=1

  # FORWARD block: enabled by default; covers tethered-client / hotspot /
  # USB-tether / Bluetooth-tether forwarded traffic.
  if [ "${ENABLE_FORWARD_BLOCK:-1}" != "0" ]; then
    install_forward_block_v4 || true
    install_forward_block_v6 || true
  else
    log "install_block: FORWARD block disabled by BLOCK_FORWARD=0"
  fi

  # INPUT block: disabled by default; opt-in for inbound traffic hardening.
  if [ "${ENABLE_INPUT_BLOCK:-0}" = "1" ]; then
    install_input_block_v4 || true
    install_input_block_v6 || true
  else
    log "install_block: INPUT block not enabled (set BLOCK_INPUT=1 to enable)"
  fi

  if [ "$out_v4" = "1" ] && [ "$out_v6" = "1" ]; then
    printf '1' > "${STATE_DIR}/block_installed" 2>/dev/null || true
    log "install_block: done — both families blocked (out_v4=1 out_v6=1)"
    return 0
  fi

  if [ "$out_v4" = "1" ] || [ "$out_v6" = "1" ]; then
    printf '1' > "${STATE_DIR}/block_installed" 2>/dev/null || true
    # Partial success: one family unprotected. Log clearly; do not collapse to success.
    log "install_block: PARTIAL — only one family blocked (out_v4=$out_v4 out_v6=$out_v6)"
    return 0
  fi

  log "install_block: WARN: no OUTPUT block layers were installed"
  return 1
}

# ── Block removal ──────────────────────────────────────────────────────────────
# Generic helper: remove all jumps from parent_chain to chain, then flush and
# delete chain. Idempotent.
_remove_chain_block_table() {
  local cmd="$1" table="$2" chain="$3" parent_chain="$4" n=0
  [ -x "$cmd" ] || return 0
  _table_available "$cmd" "$table" || return 0

  while _jump_exists "$cmd" "$table" "$parent_chain" "$chain"; do
    _ipt "$cmd" -t "$table" -D "$parent_chain" -j "$chain" >/dev/null 2>&1 || break
    n=$((n + 1))
    if [ "$n" -gt 10 ]; then
      log "_remove_chain_block_table: loop-guard hit removing $parent_chain jump ($chain $table)"
      break
    fi
  done

  if _chain_exists "$cmd" "$table" "$chain"; then
    _ipt "$cmd" -t "$table" -F "$chain" >/dev/null 2>&1 || true
    _ipt "$cmd" -t "$table" -X "$chain" >/dev/null 2>&1 || true
    debug_log "_remove_chain_block_table: removed $chain from $table ($parent_chain)"
  fi
  return 0
}

# Backward-compatible alias for OUTPUT direction (any table).
_remove_block_table() { _remove_chain_block_table "$1" "$2" "$3" OUTPUT; }

# ── Per-direction remove functions ─────────────────────────────────────────────

remove_output_block_v4() {
  local ipt table
  ipt="$(_find_cmd iptables)" || return 0
  # Always remove from both tables to handle dual-layer installs and state-loss.
  # The state file is used only for log context.
  table="$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null)" || table=""
  [ -z "$table" ] && table="$(cat "${STATE_DIR}/ipv4_table" 2>/dev/null)" || true
  _remove_chain_block_table "$ipt" raw    "$CHAIN_OUT_V4" OUTPUT
  _remove_chain_block_table "$ipt" filter "$CHAIN_OUT_V4" OUTPUT
  rm -f "${STATE_DIR}/ipv4_out_table" "${STATE_DIR}/ipv4_table" 2>/dev/null || true
  log "remove_output_block_v4: done (primary_table=${table:-unknown})"
}

remove_output_block_v6() {
  local ip6t table
  ip6t="$(_find_cmd ip6tables)" || return 0
  table="$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null)" || table=""
  [ -z "$table" ] && table="$(cat "${STATE_DIR}/ipv6_table" 2>/dev/null)" || true
  _remove_chain_block_table "$ip6t" raw    "$CHAIN_OUT_V6" OUTPUT
  _remove_chain_block_table "$ip6t" filter "$CHAIN_OUT_V6" OUTPUT
  rm -f "${STATE_DIR}/ipv6_out_table" "${STATE_DIR}/ipv6_table" 2>/dev/null || true
  log "remove_output_block_v6: done (primary_table=${table:-unknown})"
}

remove_forward_block_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 0
  _remove_chain_block_table "$ipt" filter "$CHAIN_FWD_V4" FORWARD
  rm -f "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
  log "remove_forward_block_v4: done"
}

remove_forward_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || return 0
  _remove_chain_block_table "$ip6t" filter "$CHAIN_FWD_V6" FORWARD
  rm -f "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
  log "remove_forward_block_v6: done"
}

remove_input_block_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 0
  _remove_chain_block_table "$ipt" filter "$CHAIN_IN_V4" INPUT
  rm -f "${STATE_DIR}/ipv4_in_active" 2>/dev/null || true
  log "remove_input_block_v4: done"
}

remove_input_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || return 0
  _remove_chain_block_table "$ip6t" filter "$CHAIN_IN_V6" INPUT
  rm -f "${STATE_DIR}/ipv6_in_active" 2>/dev/null || true
  log "remove_input_block_v6: done"
}

remove_block() {
  log "remove_block: start"
  remove_output_block_v4
  remove_output_block_v6
  remove_forward_block_v4
  remove_forward_block_v6
  remove_input_block_v4
  remove_input_block_v6
  rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
  log "remove_block: done"
}

# ── Live block-presence detection ─────────────────────────────────────────────
# These helpers detect whether a module-owned block chain/jump is still present
# in iptables/ip6tables, using live inspection rather than state-file presence.
#
# State files are used as a table hint (to prefer checking the right table
# first), but the authoritative answer comes from live iptables inspection.
# This ensures correct behaviour even when state files are lost or corrupt.
#
# Each helper returns:
#   0 — block chain or jump is detectably present (block is active)
#   1 — block not detected (either never installed or already removed)

output_block_present_v4() {
  local ipt table
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  # Try the recorded table first (fast path).
  table="$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null)" || table=""
  [ -z "$table" ] && table="$(cat "${STATE_DIR}/ipv4_table" 2>/dev/null)" || true
  if [ -n "$table" ]; then
    _chain_exists "$ipt" "$table" "$CHAIN_OUT_V4" && return 0
  fi
  # Live scan: check both possible tables regardless of state file.
  _chain_exists "$ipt" raw    "$CHAIN_OUT_V4" && return 0
  _chain_exists "$ipt" filter "$CHAIN_OUT_V4" && return 0
  return 1
}

output_block_present_v6() {
  local ip6t table
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  table="$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null)" || table=""
  [ -z "$table" ] && table="$(cat "${STATE_DIR}/ipv6_table" 2>/dev/null)" || true
  if [ -n "$table" ]; then
    _chain_exists "$ip6t" "$table" "$CHAIN_OUT_V6" && return 0
  fi
  _chain_exists "$ip6t" raw    "$CHAIN_OUT_V6" && return 0
  _chain_exists "$ip6t" filter "$CHAIN_OUT_V6" && return 0
  return 1
}

# FORWARD and INPUT chains live exclusively in the filter table; no table hint
# needed — just check for chain/jump existence in filter.
forward_block_intact_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_block_intact "$ipt" filter "$CHAIN_FWD_V4" FORWARD
}

forward_block_intact_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_block_intact "$ip6t" filter "$CHAIN_FWD_V6" FORWARD
}

forward_block_present_v4() { forward_block_intact_v4; }
forward_block_present_v6() { forward_block_intact_v6; }

forward_block_degraded_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_exists "$ipt" filter "$CHAIN_FWD_V4" || return 1
  forward_block_intact_v4 && return 1
  return 0
}

forward_block_degraded_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_exists "$ip6t" filter "$CHAIN_FWD_V6" || return 1
  forward_block_intact_v6 && return 1
  return 0
}

input_block_intact_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_block_intact "$ipt" filter "$CHAIN_IN_V4" INPUT
}

input_block_intact_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_block_intact "$ip6t" filter "$CHAIN_IN_V6" INPUT
}

input_block_present_v4() { input_block_intact_v4; }
input_block_present_v6() { input_block_intact_v6; }

input_block_degraded_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_exists "$ipt" filter "$CHAIN_IN_V4" || return 1
  input_block_intact_v4 && return 1
  return 0
}

input_block_degraded_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_exists "$ip6t" filter "$CHAIN_IN_V6" || return 1
  input_block_intact_v6 && return 1
  return 0
}

repair_input_block_v4() {
  [ "${ENABLE_INPUT_BLOCK:-0}" = "1" ] || return 0
  log "repair_input_block_v4: verifying/repairing IPv4 INPUT block"
  install_input_block_v4
}

repair_input_block_v6() {
  [ "${ENABLE_INPUT_BLOCK:-0}" = "1" ] || return 0
  log "repair_input_block_v6: verifying/repairing IPv6 INPUT block"
  install_input_block_v6
}

# ── Stronger OUTPUT blackout integrity detection ───────────────────────────────
# Bare chain existence alone is NOT sufficient to confirm active protection.
# These helpers require ALL THREE conditions to be true for a given table:
#   1. The module OUTPUT chain exists in that table
#   2. The chain contains the expected DROP rule
#   3. The OUTPUT hook (jump to the chain) exists in that table
#
# Per-table atomic helpers ────────────────────────────────────────────────────

output_jump_present_v4_raw() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _jump_exists "$ipt" raw OUTPUT "$CHAIN_OUT_V4"
}

output_jump_present_v4_filter() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _jump_exists "$ipt" filter OUTPUT "$CHAIN_OUT_V4"
}

output_jump_present_v6_raw() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _jump_exists "$ip6t" raw OUTPUT "$CHAIN_OUT_V6"
}

output_jump_present_v6_filter() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _jump_exists "$ip6t" filter OUTPUT "$CHAIN_OUT_V6"
}

output_drop_rule_present_v4_raw() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  "$ipt" -t raw -C "$CHAIN_OUT_V4" -j DROP 2>/dev/null
}

output_drop_rule_present_v4_filter() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  "$ipt" -t filter -C "$CHAIN_OUT_V4" -j DROP 2>/dev/null
}

output_drop_rule_present_v6_raw() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  "$ip6t" -t raw -C "$CHAIN_OUT_V6" -j DROP 2>/dev/null
}

output_drop_rule_present_v6_filter() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  "$ip6t" -t filter -C "$CHAIN_OUT_V6" -j DROP 2>/dev/null
}

# Composite helpers: true only when chain + DROP + jump are ALL present ───────

# Returns 0 if the v4 OUTPUT block is fully intact in the raw table.
_output_block_intact_v4_raw() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_block_intact "$ipt" raw "$CHAIN_OUT_V4" OUTPUT
}

# Returns 0 if the v4 OUTPUT block is fully intact in the filter table.
_output_block_intact_v4_filter() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_block_intact "$ipt" filter "$CHAIN_OUT_V4" OUTPUT
}

# Returns 0 if the v6 OUTPUT block is fully intact in the raw table.
_output_block_intact_v6_raw() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_block_intact "$ip6t" raw "$CHAIN_OUT_V6" OUTPUT
}

# Returns 0 if the v6 OUTPUT block is fully intact in the filter table.
_output_block_intact_v6_filter() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_block_intact "$ip6t" filter "$CHAIN_OUT_V6" OUTPUT
}

# output_block_intact_v4: returns 0 only when at least one full layer (chain +
# DROP + jump) is confirmed intact for IPv4 OUTPUT.  Logs detailed results.
output_block_intact_v4() {
  local raw_intact=0 filter_intact=0
  _output_block_intact_v4_raw    && raw_intact=1
  _output_block_intact_v4_filter && filter_intact=1
  debug_log "output_block_intact_v4: raw_intact=${raw_intact} filter_intact=${filter_intact}"
  [ "$raw_intact" = "1" ] || [ "$filter_intact" = "1" ]
}

# output_block_intact_v6: same for IPv6 OUTPUT.
output_block_intact_v6() {
  local raw_intact=0 filter_intact=0
  _output_block_intact_v6_raw    && raw_intact=1
  _output_block_intact_v6_filter && filter_intact=1
  debug_log "output_block_intact_v6: raw_intact=${raw_intact} filter_intact=${filter_intact}"
  [ "$raw_intact" = "1" ] || [ "$filter_intact" = "1" ]
}

# ── Blackout integrity log helper ─────────────────────────────────────────────
# Emit a structured log line describing the exact integrity state of the
# dual-layer OUTPUT blackout for a family. Used at key decision points.
log_blackout_integrity() {
  local family="$1" label="${2:-check}"
  local raw_chain=0 raw_drop=0 raw_jump=0 raw_lo=0
  local flt_chain=0 flt_drop=0 flt_jump=0 flt_lo=0
  local cmd chain

  if [ "$family" = "v4" ]; then
    cmd="$(_find_cmd iptables 2>/dev/null)"
    chain="$CHAIN_OUT_V4"
  else
    cmd="$(_find_cmd ip6tables 2>/dev/null)"
    chain="$CHAIN_OUT_V6"
  fi

  if [ -n "$cmd" ]; then
    _chain_exists "$cmd" raw    "$chain" && raw_chain=1
    _chain_exists "$cmd" filter "$chain" && flt_chain=1
    [ "$raw_chain" = "1" ] && _drop_exists "$cmd" raw "$chain" && raw_drop=1
    [ "$flt_chain" = "1" ] && _drop_exists "$cmd" filter "$chain" && flt_drop=1
    [ "$raw_chain" = "1" ] && _jump_exists "$cmd" raw OUTPUT "$chain" && raw_jump=1
    [ "$flt_chain" = "1" ] && _jump_exists "$cmd" filter OUTPUT "$chain" && flt_jump=1
    [ "$raw_chain" = "1" ] && _loopback_return_exists "$cmd" raw "$chain" OUTPUT && raw_lo=1
    [ "$flt_chain" = "1" ] && _loopback_return_exists "$cmd" filter "$chain" OUTPUT && flt_lo=1
  fi

  log "blackout_integrity[$label]: ${family} raw(chain=${raw_chain} drop=${raw_drop} jump=${raw_jump} lo=${raw_lo}) filter(chain=${flt_chain} drop=${flt_drop} jump=${flt_jump} lo=${flt_lo})"
}

# ── Self-healing OUTPUT block repair ──────────────────────────────────────────
# Called when block_installed=1 but live integrity check fails.
# Re-installs both raw and filter layers and logs as a repair event.
# Blackout state markers are preserved (not cleared) during repair.

repair_output_block_v4() {
  log "repair_output_block_v4: INTEGRITY REPAIR — reinstalling v4 OUTPUT block"
  log_blackout_integrity "v4" "pre_repair"
  if install_output_block_v4; then
    log "repair_output_block_v4: repair successful"
    log_blackout_integrity "v4" "post_repair"
    return 0
  fi
  log "repair_output_block_v4: repair FAILED — v4 OUTPUT may be unprotected"
  return 1
}

repair_output_block_v6() {
  log "repair_output_block_v6: INTEGRITY REPAIR — reinstalling v6 OUTPUT block"
  log_blackout_integrity "v6" "pre_repair"
  if install_output_block_v6; then
    log "repair_output_block_v6: repair successful"
    log_blackout_integrity "v6" "post_repair"
    return 0
  fi
  log "repair_output_block_v6: repair FAILED — v6 OUTPUT may be unprotected"
  return 1
}


# Chain name constants — AFWall+'s well-known iptables chain names.
# Defined once here so all detection and signature functions share the same
# string. If AFWall ever renames a chain only this section needs updating.
AFWALL_CHAIN_MAIN="afwall"       # primary filter OUTPUT chain
AFWALL_CHAIN_WIFI="afwall-wifi"  # Wi-Fi transport sub-chain
AFWALL_CHAIN_MOBILE="afwall-3g"  # mobile data transport sub-chain

# Prefer donate package; fall back to free package, then legacy package, then dumpsys scan.
resolve_afwall_pkg() {
  local c found
  for c in dev.ukanth.ufirewall.donate dev.ukanth.ufirewall com.ukanth.ufirewall; do
    if has_cmd cmd && cmd package path "$c" >/dev/null 2>&1; then
      printf '%s' "$c"
      return 0
    fi
    if has_cmd pm && pm path "$c" >/dev/null 2>&1; then
      printf '%s' "$c"
      return 0
    fi
  done
  if has_cmd dumpsys; then
    found="$(dumpsys package 2>/dev/null)" || found=""
    for c in dev.ukanth.ufirewall.donate dev.ukanth.ufirewall com.ukanth.ufirewall; do
      if printf '%s\n' "$found" | grep -F "Package [$c]" >/dev/null 2>&1; then
        printf '%s' "$c"
        return 0
      fi
    done
  fi
  return 1
}

# ── Coherent filter-table snapshot capture ────────────────────────────────────
# Captures the entire filter table as a single consistent string by reading it
# in one operation.  All subsequent per-poll checks derive from this snapshot
# so that presence, fingerprint, and reachability queries are all coherent —
# none of them can observe a different intermediate iptables state.
#
# Uses "iptables -t filter -S" exclusively.  All downstream parsers expect the
# "-N chain" / "-A chain ..." rule-spec syntax that this command produces.
# Restore-file snapshots use a different format (":chain - [packets:bytes]" and
# commit markers) which is NOT compatible with the parsers below.  Do not
# switch snapshot sources here unless the parser layer is first normalised to
# handle both formats.
capture_filter_snapshot_v4() {
  local cmd
  cmd="$(_find_cmd iptables 2>/dev/null)" || return 1
  _ipt_out "$cmd" -t filter -S 2>/dev/null
}

capture_filter_snapshot_v6() {
  local cmd
  cmd="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _ipt_out "$cmd" -t filter -S 2>/dev/null
}

# ── Snapshot-derived graph presence ───────────────────────────────────────────
# All helpers in this section operate on a pre-captured snapshot string passed
# as the first argument — they NEVER make additional iptables calls.

# Returns 0 when the AFWall main chain is present in the filter table AND the
# OUTPUT hook is established.  This is the minimum viable "AFWall is active"
# proof from a snapshot.
afwall_graph_present_from_snapshot() {
  local snap="$1"
  [ -n "$snap" ] || return 1
  printf '%s\n' "$snap" | grep -qE "^-N ${AFWALL_CHAIN_MAIN}"'($| )' || return 1
  printf '%s\n' "$snap" | grep -qE "^-A OUTPUT .*-j ${AFWALL_CHAIN_MAIN}"'($| )' || return 1
  return 0
}

# Returns 0 when the AFWall main chain contains at least one real rule (i.e. is
# non-trivial and not just a bare chain-creation entry).
afwall_graph_nontrivial_from_snapshot() {
  local snap="$1" count
  [ -n "$snap" ] || return 1
  count="$(printf '%s\n' "$snap" | grep -cE "^-A ${AFWALL_CHAIN_MAIN} ")" || count=0
  [ "${count:-0}" -ge 1 ]
}

# Build the live rooted AFWall chain set from the current snapshot.  Only chains
# reachable from the active OUTPUT -> afwall hook are returned.  Orphan/stale
# afwall* chains are intentionally excluded from family release fingerprints and
# transport reachability.
_snapshot_jump_targets() {
  local _rest="$1" _target
  while :; do
    case "$_rest" in
      '-j '*|*' -j '*) ;;
      *) return 0 ;;
    esac
    case "$_rest" in
      '-j '*) _rest="${_rest#-j }" ;;
      *) _rest="${_rest#* -j }" ;;
    esac
    while [ "${_rest# }" != "$_rest" ]; do
      _rest="${_rest# }"
    done
    _target="${_rest%% *}"
    [ -n "$_target" ] && printf '%s\n' "$_target"
    case "$_rest" in
      *' '*) _rest="${_rest#* }" ;;
      *) return 0 ;;
    esac
  done
}

_afwall_chain_defined() {
  local _chain="$1" _defs="$2" _c
  for _c in $_defs; do [ "$_c" = "$_chain" ] && return 0; done
  return 1
}

_snapshot_defined_chains() {
  local _snap="$1" _line _chain
  while IFS= read -r _line; do
    case "$_line" in
      '-N '*)
        _chain="${_line#-N }"
        _chain="${_chain%% *}"
        [ -n "$_chain" ] && printf '%s\n' "$_chain"
        ;;
    esac
  done <<EOF
$_snap
EOF
}

_chain_from_rule_line() {
  local _suffix
  case "$1" in
    '-A '*) ;;
    *) return 1 ;;
  esac
  _suffix="${1#-A }"
  _suffix="${_suffix%% *}"
  [ -n "$_suffix" ] || return 1
  printf '%s' "$_suffix"
}

reachable_chains_from_snapshot() {
  local snap="$1" defs reachable changed line chain target targets
  [ -n "$snap" ] || return 1
  afwall_graph_present_from_snapshot "$snap" || return 1
  defs="$(_snapshot_defined_chains "$snap")"
  _afwall_chain_defined "$AFWALL_CHAIN_MAIN" "$defs" || return 1
  reachable="$AFWALL_CHAIN_MAIN"
  changed=1
  while [ "$changed" = "1" ]; do
    changed=0
    while IFS= read -r line; do
      case "$line" in
        '-A '*)
          chain="$(_chain_from_rule_line "$line" 2>/dev/null || true)"
          _chain_in_list "$chain" "$reachable" || continue
          targets="$(_snapshot_jump_targets "$line")"
          for target in $targets; do
            case "$target" in
              afwall*)
                if _afwall_chain_defined "$target" "$defs" && ! _chain_in_list "$target" "$reachable"; then
                  reachable="$reachable $target"
                  changed=1
                fi
                ;;
            esac
          done
          ;;
      esac
    done <<EOF
$snap
EOF
  done
  printf '%s\n' "$reachable"
}

_chain_in_list() {
  local chain="$1" list="$2" c
  for c in $list; do [ "$c" = "$chain" ] && return 0; done
  return 1
}

_rule_afwall_targets_reachable() {
  local _line="$1" _reachable="$2" _targets _target _seen=0
  _targets="$(_snapshot_jump_targets "$_line")"
  for _target in $_targets; do
    case "$_target" in
      afwall*)
        _seen=1
        _chain_in_list "$_target" "$_reachable" || return 1
        ;;
    esac
  done
  [ "$_seen" = "1" ] && return 0
  return 2
}

rooted_afwall_graph_from_snapshot() {
  local snap="$1" defs reachable out line chain rc
  [ -n "$snap" ] || return 1
  afwall_graph_present_from_snapshot "$snap" || return 1
  defs="$(_snapshot_defined_chains "$snap")"
  _afwall_chain_defined "$AFWALL_CHAIN_MAIN" "$defs" || return 1
  reachable="$(reachable_chains_from_snapshot "$snap")" || return 1
  [ -n "$reachable" ] || return 1
  out=""
  while IFS= read -r line; do
    case "$line" in
      '-A OUTPUT '*)
        if _rule_afwall_targets_reachable "$line" "$AFWALL_CHAIN_MAIN"; then
          out="${out}${line}
"
        fi
        ;;
      '-N '*)
        chain="${line#-N }"
        chain="${chain%% *}"
        _chain_in_list "$chain" "$reachable" && out="${out}${line}
"
        ;;
      '-A '*)
        chain="$(_chain_from_rule_line "$line" 2>/dev/null || true)"
        if _chain_in_list "$chain" "$reachable"; then
          if _rule_afwall_targets_reachable "$line" "$reachable"; then
            out="${out}${line}
"
          else
            rc=$?
            [ "$rc" = "2" ] && out="${out}${line}
"
          fi
        fi
        ;;
    esac
  done <<EOF
$snap
EOF
  [ -n "$out" ] || return 1
  printf '%s' "$out" | sort
}

_checksum_lines() {
  local _text="$1" _ck _lc _cc
  if has_cmd cksum; then
    _ck="$(printf '%s\n' "$_text" | cksum 2>/dev/null)" || _ck=""
    _ck="${_ck%% *}"
    [ -n "$_ck" ] && { printf '%s' "$_ck"; return 0; }
  fi
  _lc="$(printf '%s\n' "$_text" | wc -l | tr -d ' ')"
  _cc="$(printf '%s\n' "$_text" | wc -c | tr -d ' ')"
  printf '%s:%s' "$_lc" "$_cc"
}

afwall_rooted_graph_fingerprint_from_snapshot() {
  local graph
  graph="$(rooted_afwall_graph_from_snapshot "$1")" || { printf 'na'; return 1; }
  _checksum_lines "$graph"
}

afwall_prefix_reachable_rooted_from_snapshot() {
  local snap="$1" prefix="$2" chains c
  [ -n "$prefix" ] || return 1
  chains="$(reachable_chains_from_snapshot "$snap")" || return 1
  for c in $chains; do
    case "$c" in "$prefix"*) return 0 ;; esac
  done
  return 1
}

afwall_transport_fingerprint_rooted_from_snapshot() {
  local snap="$1" prefix="$2" graph
  graph="$(rooted_afwall_graph_from_snapshot "$snap")" || { printf 'na'; return 1; }
  graph="$(printf '%s\n' "$graph" | grep -E "(^-N ${prefix}|^-A ${prefix}|-j ${prefix})" 2>/dev/null | sort)"
  [ -n "$graph" ] || { printf 'na'; return 1; }
  _checksum_lines "$graph"
}

# ── Full AFWall graph fingerprint ─────────────────────────────────────────────
# Produces a deterministic checksum of the ENTIRE AFWall rule graph, including
# all afwall-prefixed chain definitions, all rules inside any afwall* chain, and
# all jumps to any afwall* chain from any chain (OUTPUT hook, sub-chain jumps,
# etc.).  Descendant chain churn (afwall-wifi-*, afwall-3g-*, etc.) is fully
# captured.
#
# Because the extraction set is sorted before checksumming, the fingerprint is
# stable regardless of the order rules appear in the snapshot.
#
# Uses cksum (available in Android's toybox) as the hash primitive.  Falls back
# to a "line-count:byte-count" pair when cksum is unavailable — weaker but still
# detects most churn.
#
# Returns "na" when the snapshot is empty or yields no AFWall lines.
afwall_graph_fingerprint_from_snapshot() {
  local snap="$1" relevant
  [ -n "$snap" ] || { printf 'na'; return 1; }
  # Capture every line related to any afwall-prefixed chain:
  #   ^-N afwall  — chain definitions (afwall, afwall-wifi, afwall-3g, etc.)
  #   ^-A afwall  — rules inside any afwall-prefixed chain
  #   -j afwall   — any rule in any chain that jumps to an afwall chain
  relevant="$(printf '%s\n' "$snap" \
    | grep -E '(^-N afwall|^-A afwall|-j afwall)' 2>/dev/null \
    | sort)"
  [ -n "$relevant" ] || { printf 'na'; return 1; }
  _checksum_lines "$relevant"
}

# ── Transport subtree fingerprint ─────────────────────────────────────────────
# Produces a deterministic checksum of the ENTIRE transport subtree identified
# by a given prefix (e.g. "afwall-wifi" or "afwall-3g").
#
# Captures:
#   - all chain definitions whose name starts with the prefix
#   - all rules inside any chain with that prefix
#   - all references (jumps) to any chain with that prefix from any chain
#
# This means churn in descendant chains (afwall-wifi-lan, afwall-3g-mms, etc.)
# is fully visible in the fingerprint.
afwall_transport_fingerprint_from_snapshot() {
  local snap="$1" prefix="$2" relevant
  [ -n "$snap" ] || { printf 'na'; return 1; }
  [ -n "$prefix" ] || { printf 'na'; return 1; }
  relevant="$(printf '%s\n' "$snap" \
    | grep -E "(^-N ${prefix}|^-A ${prefix}|-j ${prefix})" 2>/dev/null \
    | sort)"
  [ -n "$relevant" ] || { printf 'na'; return 1; }
  _checksum_lines "$relevant"
}

# ── Transport subtree presence ────────────────────────────────────────────────
# Returns 0 if the snapshot contains any chain definition or reference with the
# given prefix.  This is a broad check — it detects the subtree regardless of
# whether the root chain name matches exactly.
afwall_prefix_present_from_snapshot() {
  local snap="$1" prefix="$2"
  [ -n "$snap" ] || return 1
  [ -n "$prefix" ] || return 1
  printf '%s\n' "$snap" \
    | grep -qE "(^-N ${prefix}|^-A ${prefix}|-j ${prefix})" 2>/dev/null
}

# ── Transport subtree reachability ────────────────────────────────────────────
# Returns 0 if any rule inside any afwall-prefixed chain in the snapshot jumps
# to a chain whose name starts with the given prefix.
#
# This proves the transport subtree is reachable from the live AFWall graph,
# not just that it exists in isolation.  A stale or orphaned chain that is
# not referenced by the active graph CANNOT satisfy this check.
#
# Works for both direct references (afwall -> afwall-wifi) and indirect
# references through other afwall sub-chains (afwall -> afwall-X -> afwall-wifi).
afwall_prefix_reachable_from_snapshot() {
  afwall_prefix_reachable_rooted_from_snapshot "$1" "$2"
}

# ── Boot-completion probes ────────────────────────────────────────────────────
# These helpers expose fast, property-based signals that indicate the Android
# framework has reached a well-known boot milestone.  They are intentionally
# lightweight (single getprop call) and safe to call in tight polling loops.
#
# sys_boot_completed: true when SystemServer has set sys.boot_completed=1,
#   which happens after all boot-phase services have been started and all
#   persistent apps have received ACTION_BOOT_COMPLETED.  This is the
#   canonical "framework fully up" signal on all Android versions.
#
# boot_animation_stopped: true when the bootanim service has stopped.  Fires
#   a few seconds before sys.boot_completed on most devices and is a reliable
#   "end of visible boot" signal.  Useful as an earlier accelerator.
#
# Security note: these properties are only writable by root/system; the module
# already runs as root, so there is no privilege-escalation concern.
sys_boot_completed() {
  [ "$(getprop sys.boot_completed 2>/dev/null)" = "1" ]
}

boot_animation_stopped() {
  [ "$(getprop init.svc.bootanim 2>/dev/null)" = "stopped" ]
}

# ── Snapshot-based rule density check ────────────────────────────────────────
# Returns 0 if the AFWall main chain in the given snapshot contains at least
# `min` rules.  Uses the pre-captured snapshot for coherence — no fresh
# iptables call is made.  This is the preferred form for the service.sh hot
# path where all checks must derive from one consistent per-poll snapshot.
afwall_rules_dense_from_snapshot() {
  local snap="$1" min="${2:-3}" count
  [ -n "$snap" ] || return 1
  count="$(printf '%s\n' "$snap" | grep -cE "^-A ${AFWALL_CHAIN_MAIN} ")" || count=0
  [ "${count:-0}" -ge "$min" ]
}

# ── Current-boot timestamp marker ─────────────────────────────────────────────
# Written by post-fs-data immediately after the hard block is installed.
# Used as a reference timestamp by afwall_secondary_evidence_present() to
# identify AFWall file activity that occurred during this boot session.
# Using a dedicated file avoids overloading ipv4_out_table / ipv6_out_table,
# which have a slightly different lifecycle.
mark_boot_marker() {
  _init_dirs
  printf '1' > "${STATE_DIR}/boot_marker" 2>/dev/null || true
  debug_log "mark_boot_marker: boot marker written"
}

# ── Secondary evidence of current-boot AFWall activity ───────────────────────
# Checks whether AFWall's private data files were written after this module
# installed its hard block.  Searches both Credential Encrypted (CE) and
# Device Encrypted (DE) app-data locations so that evidence is detectable
# whether or not the user storage is unlocked.
#
# Reference timestamp priority:
#   1. ${STATE_DIR}/boot_marker          — dedicated marker (most reliable)
#   2. ${STATE_DIR}/ipv4_out_table       — fallback (legacy)
#   3. ${STATE_DIR}/ipv6_out_table       — final fallback
#
# Data locations searched:
#   /data/data/<pkg>          — legacy / CE primary
#   /data/user/0/<pkg>        — CE explicit path
#   /data/user_de/0/<pkg>     — DE (always readable; not behind FBE)
#
# This is SECONDARY / CORROBORATING evidence only. It is NOT a primary gate.
afwall_secondary_evidence_present() {
  local pkg="$1" ref dir subdir f
  [ -n "$pkg" ] || return 1

  # Choose reference timestamp.
  ref="${STATE_DIR}/boot_marker"
  [ -f "$ref" ] || ref="${STATE_DIR}/ipv4_out_table"
  [ -f "$ref" ] || ref="${STATE_DIR}/ipv6_out_table"
  [ -f "$ref" ] || return 1

  # Search CE and DE data directories.
  for dir in \
      "/data/data/${pkg}" \
      "/data/user/0/${pkg}" \
      "/data/user_de/0/${pkg}"; do
    [ -d "$dir" ] || continue

    # Check well-known AFWall database/status files by name.
    for f in \
        "${dir}/Logs.db" \
        "${dir}/rules.db" \
        "${dir}/AFWallStatus.xml" \
        "${dir}/databases/Logs.db" \
        "${dir}/databases/rules.db"; do
      [ -f "$f" ] && [ "$f" -nt "$ref" ] 2>/dev/null && return 0
    done

    # Scan shared_prefs and databases directories for any file newer than
    # the reference — AFWall updates these dirs when applying rules.
    for subdir in "shared_prefs" "databases"; do
      [ -d "${dir}/${subdir}" ] || continue
      find "${dir}/${subdir}" -newer "$ref" 2>/dev/null | head -c1 | grep -q '.' && return 0
    done
  done
  return 1
}

# ── Transition-state snapshot logging ────────────────────────────────────────
# Log a concise snapshot of the relevant iptables chain state for one IP family.
# Called at key transition points so future log analysis can reconstruct why
# connectivity was blocked or released.
# family: "v4" or "v6"; phase: short label for context (e.g. "takeover_first").
log_transition_snapshot() {
  local family="$1" phase="$2"
  local cmd mod_out_chain mod_fwd_chain mod_in_chain
  local chain_out chain_fwd chain_in
  local afw_chain afw_hook afw_rules

  if [ "$family" = "v4" ]; then
    cmd="$(_find_cmd iptables 2>/dev/null)"
    mod_out_chain="$CHAIN_OUT_V4"
    mod_fwd_chain="$CHAIN_FWD_V4"
    mod_in_chain="$CHAIN_IN_V4"
  else
    cmd="$(_find_cmd ip6tables 2>/dev/null)"
    mod_out_chain="$CHAIN_OUT_V6"
    mod_fwd_chain="$CHAIN_FWD_V6"
    mod_in_chain="$CHAIN_IN_V6"
  fi

  if [ -z "$cmd" ]; then
    log "snapshot[$phase]: $family cmd_not_found"
    return 0
  fi

  # Module-owned chain state: show dual-layer (raw + filter) for OUTPUT.
  local chain_out_raw="absent" chain_out_flt="absent"
  _chain_exists "$cmd" raw    "$mod_out_chain" && chain_out_raw="present"
  _chain_exists "$cmd" filter "$mod_out_chain" && chain_out_flt="present"
  chain_out="raw=${chain_out_raw}/filter=${chain_out_flt}"

  chain_fwd="absent"
  _chain_exists "$cmd" filter "$mod_fwd_chain" && chain_fwd="present"

  chain_in="absent"
  _chain_exists "$cmd" filter "$mod_in_chain" && chain_in="present"

  # AFWall chain state.
  afw_chain="absent"; afw_hook="absent"; afw_rules=0
  if _chain_exists "$cmd" filter "$AFWALL_CHAIN_MAIN"; then
    afw_chain="present"
    afw_rules="$("$cmd" -t filter -S "$AFWALL_CHAIN_MAIN" 2>/dev/null | grep -c '^-A ')" || afw_rules=0
    if "$cmd" -t filter -S OUTPUT 2>/dev/null | \
        grep -qE "^-A OUTPUT .*-j ${AFWALL_CHAIN_MAIN}"'($| )'; then
      afw_hook="present"
    fi
  fi

  log "snapshot[$phase]: $family mod_out=$chain_out mod_fwd=$chain_fwd mod_in=$chain_in afw_chain=$afw_chain afw_hook=$afw_hook afw_rules=$afw_rules"
}

# Detect AFWall's built-in startup leak protection (the "Fix Startup Data Leak"
# preference, stored as fixLeak=true in AFWall prefs).
#
# How AFWall's fixLeak actually works (upstream code, G.java / Api.java):
#   - It installs a shell script called 'afwallstart' into init.d or su.d paths
#     such as /etc/init.d/, /su/su.d/, /system/su.d/
#   - On modern Android (8+) this is rarely effective because init.d/su.d is
#     not supported without a special kernel or SuperSU
#   - AFWall also supports Magisk paths: /data/adb/post-fs-data.d/ and
#     /data/adb/service.d/ (checked here and in the UI's startup-script selector)
#   - AFWall does NOT install iptables chains in the raw table as startup
#     protection; all its chains live in the filter table and are installed
#     only when FirewallService applies rules (after Zygote and framework start)
#
# Returns 0 if an AFWall-owned afwallstart script is found in any checked path.
# Used only during post-fs-data (install-time) to decide integration mode.
afwall_has_startup_script() {
  local f
  for f in \
    "/etc/init.d/afwallstart" \
    "/su/su.d/afwallstart" \
    "/system/su.d/afwallstart" \
    "/data/adb/post-fs-data.d/afwallstart" \
    "/data/adb/service.d/afwallstart"; do
    [ -f "$f" ] || continue
    # Do not count our own legacy artifact as AFWall protection.
    if grep -qE 'AFW-ANTILEAK|AFWall-?Boot-?AntiLeak|sys\.afw\.policy\.drop' \
        "$f" 2>/dev/null; then
      debug_log "afwall_has_startup_script: skipping module-owned $f"
      continue
    fi
    debug_log "afwall_has_startup_script: found afwallstart script at $f"
    return 0
  done
  return 1
}

# Process-level detection (supplementary; less reliable than rule checks).
# Uses three independent methods so that failures in any one (e.g., pidof not
# available, ps output format variation, or SELinux restrictions on /proc) do
# not prevent detection.
#
# Method 1: pidof — fast and authoritative on Android 8+.
# Method 2: ps — broad compatibility; handles process sub-names (pkg:service).
# Method 3: /proc/*/cmdline scan — reliable when both pidof and ps fail;
#   reads the NUL-separated argument list from procfs directly.  The first
#   token in cmdline is the process/package name on Android.
afwall_process_present() {
  local pkg="$1" esc_pkg
  [ -n "$pkg" ] || return 1

  # Method 1: pidof
  if has_cmd pidof && pidof "$pkg" >/dev/null 2>&1; then
    return 0
  fi

  # Method 2: ps
  esc_pkg="$(printf '%s' "$pkg" | sed 's/\./\\./g')"
  if has_cmd ps; then
    ps -A 2>/dev/null | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
    ps    2>/dev/null | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
  fi

  # Method 3: /proc/*/cmdline — fallback for environments where pidof/ps are
  # restricted or return unexpected output formats.
  local f first_arg
  for f in /proc/[0-9]*/cmdline; do
    [ -f "$f" ] || continue
    # The first NUL-delimited token is the process name / package name.
    first_arg="$(tr '\0' '\n' < "$f" 2>/dev/null | head -1)"
    case "$first_arg" in
      "$pkg"|"${pkg}:"*) return 0 ;;
    esac
  done

  return 1
}

# ── Integration mode ───────────────────────────────────────────────────────────
# Evaluates config and current state, writes the chosen mode to the state
# directory, and returns 0 always (failures are logged).
#
# Integration mode behaviour during post-fs-data:
#   At post-fs-data stage iptables is clean (flushed on reboot).  AFWall's
#   filter chains do NOT exist yet, so afwall_has_startup_script() can
#   only detect AFWall's afwallstart init.d/su.d scripts (rare on Android 8+).
#   Because of this, prefer_afwall will DEFER only when an AFWall-owned
#   afwallstart script is present; otherwise it installs the module block just
#   like auto/prefer_module.  On modern Pixel devices running Android 16, the
#   init.d/su.d mechanism is not supported, so prefer_afwall effectively
#   behaves the same as auto unless the user has a custom ROM with init.d.
setup_integration_mode() {
  load_config
  local mode="${INTEGRATION_MODE:-auto}"

  case "$mode" in
    auto|prefer_module|prefer_afwall|off) ;;
    *)
      log "integration: unknown mode='$mode'; defaulting to auto"
      mode="auto"
      ;;
  esac

  log "integration: configured_mode=$mode"

  case "$mode" in
    off)
      log "integration: mode=off; module blocking disabled"
      printf 'off' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      ;;
    prefer_afwall)
      if afwall_has_startup_script; then
        log "integration: prefer_afwall; AFWall startup script detected; deferring to AFWall"
        printf 'prefer_afwall_deferred' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      else
        log "integration: prefer_afwall; no AFWall startup script found; using module block"
        printf 'prefer_afwall' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      fi
      ;;
    auto)
      if afwall_has_startup_script; then
        log "integration: auto; AFWall startup script present; module block will supplement"
      else
        log "integration: auto; no AFWall startup script; module block is sole protection"
      fi
      printf 'auto' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      ;;
    prefer_module)
      log "integration: prefer_module; installing block unconditionally"
      printf 'prefer_module' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      ;;
  esac
  return 0
}

# Returns 0 if the module block should be installed, 1 if it should be skipped.
should_install_block() {
  _init_dirs
  setup_integration_mode
  local mode
  mode="$(cat "${STATE_DIR}/integration_mode" 2>/dev/null)" || mode="auto"
  case "$mode" in
    off|prefer_afwall_deferred) return 1 ;;
    *) return 0 ;;
  esac
}

# ── Legacy cleanup ─────────────────────────────────────────────────────────────
# Remove legacy afwallstart scripts installed by v1.x variants, identified by
# a known module marker.  Current active chain names (MOD_PRE_AFW*) are never
# touched here — they are managed exclusively by post-fs-data and remove_block.
# When called during the service phase (cleanup_legacy), iptables chains are
# left untouched; scripts are the only thing removed.
cleanup_legacy() {
  local phase="${1:-unknown}"
  log "cleanup_legacy: phase=$phase"
  local f

  # v1.x module-owned afwallstart hooks. Require an AntiLeak marker so an
  # AFWall-owned startup script is never removed by name alone.
  for f in \
    "/data/adb/service.d/afwallstart" \
    "/data/adb/post-fs-data.d/afwallstart" \
    "/data/adb/system.d/afwallstart"; do
    [ -f "$f" ] || continue
    if grep -qE 'AFW-ANTILEAK|AFWall-?Boot-?AntiLeak|sys\.afw\.policy\.drop' \
        "$f" 2>/dev/null; then
      rm -f "$f" 2>/dev/null || true
      log "cleanup: removed legacy $f"
    fi
  done

  # Older MMT packaging copied the Magisk Action hook into service.d/action.sh.
  # It is not a boot service and cannot resolve the module library from there.
  for f in \
    "/data/adb/service.d/action.sh" \
    "/data/adb/service.d/AFWall-Boot-AntiLeak-action.sh"; do
    [ -f "$f" ] || continue
    if grep -qE 'AFWall Boot AntiLeak|write_manual_override|recover_connectivity.*action' \
        "$f" 2>/dev/null; then
      rm -f "$f" 2>/dev/null || true
      log "cleanup: removed obsolete module Action copy $f"
    fi
  done

  # v4.2.0 runtime config has only two possible sources, both module-local:
  # config.sh and optional config.local.sh. These external files are ignored.
  for f in "${MODULE_DATA}/config.sh" "${MODULE_DATA}/installer.cfg"; do
    [ -e "$f" ] || continue
    if rm -f "$f" 2>/dev/null; then
      log "cleanup: removed ignored legacy config $f"
    else
      log "cleanup: WARN: could not remove ignored legacy config $f"
    fi
  done
  return 0
}

# Alias kept for callers that previously used the scripts-only variant.
cleanup_legacy_scripts_only() { cleanup_legacy "$1"; }

# ── Transport-specific AFWall chain detection ──────────────────────────────────
# AFWall+ creates dedicated sub-chains for each transport type:
#   afwall-wifi   — Wi-Fi rules
#   afwall-3g     — mobile data rules
# These are created only when AFWall has been configured with per-transport rules.
#
# _afwall_transport_chain_ready_from_snapshot() is the authoritative readiness
# check used by the service.sh hot path.  It derives from the per-poll coherent
# snapshot captured once per loop iteration.

# Generic snapshot-based transport readiness: chain exists with at least one
# rule AND is reachable from the active AFWall graph.  Existence alone is not
# sufficient — an isolated or stale chain would otherwise falsely pass.
_afwall_transport_chain_ready_from_snapshot() {
  local snap="$1" prefix="$2"
  [ -n "$snap" ] || return 1
  [ -n "$prefix" ] || return 1
  # Subtree must be present (any chain or reference with this prefix).
  afwall_prefix_present_from_snapshot "$snap" "$prefix" || return 1
  # Subtree must be non-trivially populated (at least one rule inside it).
  printf '%s\n' "$snap" | grep -qE "^-A ${prefix}" || return 1
  # Subtree must be reachable from within the AFWall graph.
  afwall_prefix_reachable_from_snapshot "$snap" "$prefix" || return 1
  return 0
}

# ── Blackout-state persistence ─────────────────────────────────────────────────
# State files used to communicate between post-fs-data and service phases.
# ${STATE_DIR}/blackout_active    — written by post-fs-data; cleared after handoff
# ${STATE_DIR}/radio_off_pending  — radios must remain off until transport handoff

mark_blackout_active() {
  _init_dirs
  printf '1' > "${STATE_DIR}/blackout_active" 2>/dev/null || true
  printf '1' > "${STATE_DIR}/radio_off_pending" 2>/dev/null || true
  debug_log "mark_blackout_active: blackout state persisted"
}

clear_blackout_active() {
  rm -f "${STATE_DIR}/blackout_active" "${STATE_DIR}/radio_off_pending" 2>/dev/null || true
  debug_log "clear_blackout_active: blackout state cleared"
}

# ── Manual override / service stop state ──────────────────────────────────────
# manual_override: written by action.sh before removing blocks.  Persists until
#   the next reboot (cleared by post-fs-data.sh).  Tells service.sh to stop the
#   main loop and not repair blackout state.
# stop_requested: written alongside manual_override; service.sh stops on either.
# aba_service.pid: module-unique PID marker written by service.sh at startup;
#   cleared on clean exit or by action.sh after ownership-validated signalling.

write_manual_override() {
  _init_dirs
  printf '1' > "${STATE_DIR}/manual_override" 2>/dev/null || true
  debug_log "write_manual_override: manual_override written"
}

write_stop_requested() {
  _init_dirs
  printf '1' > "${STATE_DIR}/stop_requested" 2>/dev/null || true
  debug_log "write_stop_requested: stop_requested written"
}

write_service_pid() {
  local pid="${1:-$$}"
  _init_dirs
  # Write module-unique pid marker.
  printf '%s' "$pid" > "$SERVICE_PID_FILE" 2>/dev/null || true
  write_service_lock "$pid" || true
  debug_log "write_service_pid: pid=$pid written"
}

remove_service_pid() {
  rm -f "$SERVICE_PID_FILE" 2>/dev/null || true
  clear_service_lock
  debug_log "remove_service_pid: pid marker removed"
}

manual_override_active() {
  [ -f "${STATE_DIR}/manual_override" ]
}

stop_requested_active() {
  [ -f "${STATE_DIR}/stop_requested" ]
}

# ── Shared connectivity recovery helpers ──────────────────────────────────────
# Used by action.sh (manual recovery) and service.sh (automatic final restore)
# to avoid divergent cleanup behavior.
#
# recover_stop_service_loop:
#   Best-effort stop of the background service loop using module PID markers.
#   Safe to call multiple times.
recover_stop_service_loop() {
  local _svc_pid _cmdline
  [ -s "$SERVICE_PID_FILE" ] || return 0

  _svc_pid="$(cat "$SERVICE_PID_FILE" 2>/dev/null)"
  if [ -z "$_svc_pid" ]; then
    log "recover_stop_service_loop: PID file empty/unreadable ($SERVICE_PID_FILE)"
    return 0
  fi

  # Ownership validation: only signal when cmdline indicates this module's
  # service loop. This prevents killing unrelated processes if PID is reused.
  kill -0 "$_svc_pid" 2>/dev/null || {
    log "action: pid stale or not module-owned; relying on override latch (pid=${_svc_pid} not running)"
    rm -f "$SERVICE_PID_FILE" 2>/dev/null || true
    return 0
  }
  _cmdline="$(tr '\0' ' ' < "/proc/${_svc_pid}/cmdline" 2>/dev/null)"
  case "$_cmdline" in
    *"AFWall-Boot-AntiLeak"*"service.sh"*|*"${MODDIR}/service.sh"*)
      log "action: service pid validated pid=${_svc_pid} cmdline='${_cmdline:-unreadable}'"
      kill "$_svc_pid" 2>/dev/null || true
      log "action: service pid killed pid=${_svc_pid}"
      rm -f "$SERVICE_PID_FILE" 2>/dev/null || true
      ;;
    *)
      log "action: pid stale or not module-owned; relying on override latch (pid=${_svc_pid} cmdline='${_cmdline:-unreadable}')"
      rm -f "$SERVICE_PID_FILE" 2>/dev/null || true
      log "action: stale service pid file removed: $SERVICE_PID_FILE"
      ;;
  esac
}

# recover_connectivity:
#   Canonical connectivity restoration path.
#   Arguments:
#     $1 origin label for logs (e.g. "action", "service-finalize")
#     $2 manual_mode: 1 => latch manual override markers, 0 => do not
recover_connectivity() {
  local origin="${1:-unknown}" manual_mode="${2:-0}"

  if [ "$manual_mode" = "1" ]; then
    write_manual_override
    write_stop_requested
    log "recover_connectivity[$origin]: manual override latched"
  fi

  clear_blackout_active
  rm -f "${STATE_DIR}/block_installed" "${STATE_DIR}/radio_off_pending" 2>/dev/null || true

  # Remove all module-owned firewall protections (idempotent).
  remove_block
  # Use the proven emergency restore path so recovery behavior is identical
  # between manual action and automatic paths.
  lowlevel_emergency_restore
  cleanup_legacy "$origin"

  log_blackout_integrity "v4" "${origin}_after_recovery"
  log_blackout_integrity "v6" "${origin}_after_recovery"
  log "recover_connectivity[$origin]: network state after restore: wifi=$(cmd wifi status 2>/dev/null | head -1 || printf unavailable) default_route=$(ip route show default 2>/dev/null | head -1 || printf none) vpn_active=$(_ll_vpn_get_active_pkg 2>/dev/null || printf none) vpn_lockdown=$(_ll_vpn_get_lockdown_state 2>/dev/null || printf unknown)"
  log "recover_connectivity[$origin]: complete"
}

# Remove manual_override and stop_requested markers (not PID markers).
# Called by post-fs-data.sh on boot start to clear stale state from a previous
# boot where the user may have triggered manual recovery.
clear_override_markers() {
  rm -f "${STATE_DIR}/manual_override" "${STATE_DIR}/stop_requested" \
    2>/dev/null || true
  debug_log "clear_override_markers: manual_override and stop_requested cleared"
}

# ── Lower-layer suppression subsystem ─────────────────────────────────────────
# Source the lower-layer suppression library if present.
# This provides: lowlevel_prepare_environment_early, lowlevel_prepare_environment,
# lowlevel_restore_changed_state, lowlevel_emergency_restore, and helpers.
# MODDIR is set by the calling script before sourcing common.sh.
if [ -f "${MODDIR:-}/bin/lowlevel.sh" ]; then
  . "${MODDIR}/bin/lowlevel.sh"
fi
