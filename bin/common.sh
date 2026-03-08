#!/system/bin/sh
# AFWall Boot AntiLeak v2.0.0 - Common library
# POSIX/ash compatible. No bashisms. Sourced by all module scripts; do not
# execute directly.

# ── Module identity ────────────────────────────────────────────────────────────
MODULE_ID="AFWall-Boot-AntiLeak"
MODULE_DATA="/data/adb/${MODULE_ID}"
LOG_DIR="${MODULE_DATA}/logs"
LOG_FILE="${LOG_DIR}/boot.log"
STATE_DIR="${MODULE_DATA}/state"

# Module-owned temporary chain names (never touch chains not in this list)
CHAIN_V4="MOD_PRE_AFW"
CHAIN_V6="MOD_PRE_AFW_V6"

# ── Directory bootstrap ────────────────────────────────────────────────────────
_init_dirs() {
  mkdir -p "$LOG_DIR" "$STATE_DIR" 2>/dev/null || true
  chmod 700 "$MODULE_DATA" "$LOG_DIR" "$STATE_DIR" 2>/dev/null || true
}

# ── Logging ────────────────────────────────────────────────────────────────────
log() {
  _init_dirs
  printf '[%s] %s\n' \
    "$(date +'%F %T' 2>/dev/null || printf 'unknown-time')" \
    "$*" >> "$LOG_FILE" 2>/dev/null || true
}

debug_log() {
  [ "${DEBUG:-0}" = "1" ] || return 0
  log "[DEBUG] $*"
}

# ── Command discovery ──────────────────────────────────────────────────────────
# Returns the full path of a command, checking PATH first then known locations.
_find_cmd() {
  local name="$1" p
  if command -v "$name" >/dev/null 2>&1; then
    command -v "$name"
    return 0
  fi
  for p in \
    "/system/bin/${name}" \
    "/system/xbin/${name}" \
    "/sbin/${name}" \
    "/data/adb/magisk/${name}" \
    "/data/adb/ksu/bin/${name}"; do
    if [ -x "$p" ]; then
      printf '%s' "$p"
      return 0
    fi
  done
  debug_log "cmd_not_found: $name"
  return 1
}

has_cmd() { _find_cmd "$1" >/dev/null 2>&1; }

# ── Config loading ─────────────────────────────────────────────────────────────
# Sources the first config.sh found: module directory, then persistent data dir.
load_config() {
  local cfg
  for cfg in \
    "${MODDIR:-}/config.sh" \
    "${MODULE_DATA}/config.sh"; do
    [ -f "$cfg" ] || continue
    . "$cfg" 2>/dev/null || true
    debug_log "config: loaded $cfg"
    return 0
  done
  return 0
}

# ── IPTables low-level helpers ─────────────────────────────────────────────────
_table_available() {
  local cmd="$1" table="$2"
  [ -x "$cmd" ] || return 1
  "$cmd" -t "$table" -S >/dev/null 2>&1
}

_chain_exists() {
  local cmd="$1" table="$2" chain="$3"
  [ -x "$cmd" ] || return 1
  "$cmd" -t "$table" -S "$chain" >/dev/null 2>&1
}

# Check whether a plain jump rule (-j TARGET) already exists in CHAIN.
_jump_exists() {
  local cmd="$1" table="$2" chain="$3" target="$4"
  [ -x "$cmd" ] || return 1
  "$cmd" -t "$table" -C "$chain" -j "$target" 2>/dev/null
}

# ── Block installation ─────────────────────────────────────────────────────────
# Install a DROP chain in the given table and jump to it from OUTPUT.
# Exempts loopback. Idempotent.
_install_block_table() {
  local cmd="$1" table="$2" chain="$3"
  debug_log "install_block_table: cmd=$cmd table=$table chain=$chain"

  if ! _table_available "$cmd" "$table"; then
    debug_log "install_block_table: $table unavailable for $(basename "$cmd")"
    return 1
  fi

  # Create chain if it does not yet exist.
  if ! _chain_exists "$cmd" "$table" "$chain"; then
    if ! "$cmd" -t "$table" -N "$chain" 2>/dev/null; then
      log "install_block: failed to create chain $chain in $table"
      return 1
    fi
    debug_log "install_block_table: created chain $chain in $table"
  fi

  # Exempt loopback traffic so local IPC is not disrupted.
  if ! "$cmd" -t "$table" -C "$chain" -o lo -j RETURN 2>/dev/null; then
    "$cmd" -t "$table" -A "$chain" -o lo -j RETURN 2>/dev/null || true
  fi

  # Add DROP rule to the chain (idempotent check).
  if ! "$cmd" -t "$table" -C "$chain" -j DROP 2>/dev/null; then
    if ! "$cmd" -t "$table" -A "$chain" -j DROP 2>/dev/null; then
      log "install_block: failed to add DROP to $chain in $table"
      # Roll back the chain so it is not left half-configured.
      "$cmd" -t "$table" -F "$chain" 2>/dev/null || true
      "$cmd" -t "$table" -X "$chain" 2>/dev/null || true
      return 1
    fi
  fi

  # Insert jump at position 1 in OUTPUT (idempotent).
  if ! _jump_exists "$cmd" "$table" OUTPUT "$chain"; then
    if ! "$cmd" -t "$table" -I OUTPUT 1 -j "$chain" 2>/dev/null; then
      log "install_block: failed to insert OUTPUT jump to $chain in $table"
      # Do not abort; chain + DROP are still in place and will block if a
      # jump already exists from a previous invocation.
    fi
  fi

  return 0
}

install_block_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || {
    log "install_block_v4: iptables not found"
    return 1
  }
  _init_dirs

  # Prefer raw table: captures packets before conntrack, hardest to bypass.
  if _install_block_table "$ipt" raw "$CHAIN_V4"; then
    printf 'raw' > "${STATE_DIR}/ipv4_table" 2>/dev/null || true
    log "install_block_v4: installed in raw table"
    return 0
  fi

  log "install_block_v4: raw table failed; falling back to filter table"
  if _install_block_table "$ipt" filter "$CHAIN_V4"; then
    printf 'filter' > "${STATE_DIR}/ipv4_table" 2>/dev/null || true
    log "install_block_v4: installed in filter table (fallback)"
    return 0
  fi

  log "install_block_v4: WARN: could not install IPv4 block"
  return 1
}

install_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_block_v6: ip6tables not found; IPv6 traffic unprotected"
    return 1
  }
  _init_dirs

  if _install_block_table "$ip6t" raw "$CHAIN_V6"; then
    printf 'raw' > "${STATE_DIR}/ipv6_table" 2>/dev/null || true
    log "install_block_v6: installed in raw table"
    return 0
  fi

  log "install_block_v6: raw table failed; falling back to filter table"
  if _install_block_table "$ip6t" filter "$CHAIN_V6"; then
    printf 'filter' > "${STATE_DIR}/ipv6_table" 2>/dev/null || true
    log "install_block_v6: installed in filter table (fallback)"
    return 0
  fi

  log "install_block_v6: WARN: could not install IPv6 block"
  return 1
}

install_block() {
  _init_dirs
  local v4=1 v6=1
  log "install_block: start"

  install_block_v4 && v4=0
  install_block_v6 && v6=0

  local v4_ok=$((1 - v4)) v6_ok=$((1 - v6))
  if [ "$v4_ok" = "1" ] || [ "$v6_ok" = "1" ]; then
    printf '1' > "${STATE_DIR}/block_installed" 2>/dev/null || true
    log "install_block: done (v4_ok=$v4_ok v6_ok=$v6_ok)"
    return 0
  fi

  log "install_block: WARN: no block layers were installed"
  return 1
}

# ── Block removal ──────────────────────────────────────────────────────────────
# Remove OUTPUT jump, flush, and delete the named chain. Idempotent.
_remove_block_table() {
  local cmd="$1" table="$2" chain="$3" n=0
  [ -x "$cmd" ] || return 0
  _table_available "$cmd" "$table" || return 0

  # Remove all OUTPUT jump rules pointing at our chain.
  while _jump_exists "$cmd" "$table" OUTPUT "$chain"; do
    "$cmd" -t "$table" -D OUTPUT -j "$chain" 2>/dev/null || break
    n=$((n + 1))
    if [ "$n" -gt 10 ]; then
      log "remove_block: loop-guard hit removing OUTPUT jump ($chain $table)"
      break
    fi
  done

  # Flush and delete the chain if it still exists.
  if _chain_exists "$cmd" "$table" "$chain"; then
    "$cmd" -t "$table" -F "$chain" 2>/dev/null || true
    "$cmd" -t "$table" -X "$chain" 2>/dev/null || true
    debug_log "remove_block_table: removed $chain from $table"
  fi
  return 0
}

remove_block_v4() {
  local ipt table
  ipt="$(_find_cmd iptables)" || return 0
  table="$(cat "${STATE_DIR}/ipv4_table" 2>/dev/null)" || table=""

  if [ -n "$table" ]; then
    _remove_block_table "$ipt" "$table" "$CHAIN_V4"
    rm -f "${STATE_DIR}/ipv4_table" 2>/dev/null || true
  else
    # State lost; try both tables defensively.
    _remove_block_table "$ipt" raw    "$CHAIN_V4"
    _remove_block_table "$ipt" filter "$CHAIN_V4"
  fi
  log "remove_block_v4: done"
}

remove_block_v6() {
  local ip6t table
  ip6t="$(_find_cmd ip6tables)" || return 0
  table="$(cat "${STATE_DIR}/ipv6_table" 2>/dev/null)" || table=""

  if [ -n "$table" ]; then
    _remove_block_table "$ip6t" "$table" "$CHAIN_V6"
    rm -f "${STATE_DIR}/ipv6_table" 2>/dev/null || true
  else
    _remove_block_table "$ip6t" raw    "$CHAIN_V6"
    _remove_block_table "$ip6t" filter "$CHAIN_V6"
  fi
  log "remove_block_v6: done"
}

remove_block() {
  log "remove_block: start"
  remove_block_v4
  remove_block_v6
  rm -f "${STATE_DIR}/block_installed" 2>/dev/null || true
  log "remove_block: done"
}

# ── AFWall detection ───────────────────────────────────────────────────────────
# Prefer donate package; fall back to free package; then dumpsys scan.
resolve_afwall_pkg() {
  local c found
  for c in dev.ukanth.ufirewall.donate dev.ukanth.ufirewall; do
    if has_cmd cmd && cmd package path "$c" >/dev/null 2>&1; then
      printf '%s' "$c"
      return 0
    fi
  done
  if has_cmd dumpsys; then
    found="$(dumpsys package 2>/dev/null \
      | grep -E 'Package \[dev\.ukanth\.ufirewall(\.donate)?\]' \
      | sed -nE 's/.*Package \[(dev\.ukanth\.ufirewall(\.donate)?)\].*/\1/p' \
      | head -n1)"
    if [ -n "$found" ] && has_cmd cmd && cmd package path "$found" >/dev/null 2>&1; then
      printf '%s' "$found"
      return 0
    fi
  fi
  return 1
}

# Check that AFWall's main 'afwall' chain exists AND is jumped to from OUTPUT.
# This is the documented signal that AFWall has fully applied its rules.
afwall_rules_present_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 1
  "$ipt" -S 2>/dev/null | grep -qE '^-N afwall($| )' || return 1
  "$ipt" -S OUTPUT 2>/dev/null | grep -qE '^-A OUTPUT .* -j afwall($| )'
}

afwall_rules_present_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || return 1
  "$ip6t" -S 2>/dev/null | grep -qE '^-N afwall($| )' || return 1
  "$ip6t" -S OUTPUT 2>/dev/null | grep -qE '^-A OUTPUT .* -j afwall($| )'
}

afwall_rules_present() {
  afwall_rules_present_v4 && return 0
  afwall_rules_present_v6 && return 0
  return 1
}

# Detect AFWall's built-in startup leak protection.
# AFWall's startup protection installs chains whose names begin with 'afwall'
# in the raw or filter table before the main rules are applied.
afwall_startup_protection_active() {
  local cmd t c
  for cmd in iptables ip6tables; do
    c="$(_find_cmd "$cmd" 2>/dev/null)" || continue
    for t in raw filter; do
      if _table_available "$c" "$t" && \
         "$c" -t "$t" -S 2>/dev/null | grep -qiE '^-N afwall'; then
        debug_log "afwall_startup_protection: found afwall chain in $t ($cmd)"
        return 0
      fi
    done
  done
  return 1
}

# Process-level detection (supplementary; less reliable than rule checks).
afwall_process_present() {
  local pkg="$1" esc_pkg
  [ -n "$pkg" ] || return 1
  if has_cmd pidof && pidof "$pkg" >/dev/null 2>&1; then
    return 0
  fi
  esc_pkg="$(printf '%s' "$pkg" | sed 's/\./\\./g')"
  if has_cmd ps; then
    ps -A 2>/dev/null | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
    ps    2>/dev/null | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
  fi
  return 1
}

# ── Integration mode ───────────────────────────────────────────────────────────
# Evaluates config and current firewall state, writes the chosen mode to the
# state directory, and returns 0 always (failures are logged).
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
      if afwall_startup_protection_active; then
        log "integration: prefer_afwall; AFWall startup chains detected; deferring to AFWall"
        printf 'prefer_afwall_deferred' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      else
        log "integration: prefer_afwall; no AFWall startup chains found; using module block"
        printf 'prefer_afwall' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      fi
      ;;
    auto)
      if afwall_startup_protection_active; then
        log "integration: auto; AFWall startup chains present; module block will supplement"
      else
        log "integration: auto; no AFWall startup chains; module block is sole protection"
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
# Remove legacy hard-drop raw-table chain left by older module variants.
remove_legacy_raw_drop() {
  local b c n
  for b in iptables ip6tables; do
    c="$(_find_cmd "$b" 2>/dev/null)" || continue
    n=0
    while "$c" -t raw -C OUTPUT -j MOD_PRE_AFW 2>/dev/null; do
      "$c" -t raw -D OUTPUT -j MOD_PRE_AFW 2>/dev/null || break
      n=$((n + 1)); [ "$n" -gt 10 ] && break
    done
    n=0
    while "$c" -t raw -C PREROUTING -j MOD_PRE_AFW 2>/dev/null; do
      "$c" -t raw -D PREROUTING -j MOD_PRE_AFW 2>/dev/null || break
      n=$((n + 1)); [ "$n" -gt 10 ] && break
    done
    "$c" -t raw -F MOD_PRE_AFW 2>/dev/null || true
    "$c" -t raw -X MOD_PRE_AFW 2>/dev/null || true
  done
}

# Remove legacy afwallstart script only if it carries a known module marker.
remove_legacy_afwallstart() {
  local f="/data/adb/service.d/afwallstart"
  [ -f "$f" ] || return 0
  if grep -qE 'AFW-ANTILEAK|AFWall-?Boot-?AntiLeak|sys\.afw\.policy\.drop' "$f" 2>/dev/null; then
    rm -f "$f" 2>/dev/null || true
    log "cleanup: removed legacy /data/adb/service.d/afwallstart"
  fi
  return 0
}

cleanup_legacy() {
  local phase="${1:-unknown}"
  log "cleanup_legacy: phase=$phase"
  remove_legacy_raw_drop
  remove_legacy_afwallstart
  return 0
}

# ── Radio helpers (secondary / best-effort) ────────────────────────────────────
# Radio toggles are NOT the primary protection mechanism; they are provided
# only as a belt-and-suspenders option and may be unavailable in early boot.
restore_radios() {
  has_cmd svc || { debug_log "restore_radios: svc not found"; return 0; }
  svc wifi enable 2>/dev/null || true
  svc data enable 2>/dev/null || true
  log "radios: restore issued (best-effort)"
}

disable_radios() {
  has_cmd svc || { debug_log "disable_radios: svc not found"; return 0; }
  svc wifi disable 2>/dev/null || true
  svc data disable 2>/dev/null || true
  log "radios: disable issued (best-effort)"
}
