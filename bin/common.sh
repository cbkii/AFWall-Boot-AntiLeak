#!/system/bin/sh
# AFWall Boot AntiLeak v2.2.22 - Common library
# POSIX/ash compatible. No bashisms. Sourced by all module scripts; do not
# execute directly.

# ── Module identity ────────────────────────────────────────────────────────────
MODULE_ID="AFWall-Boot-AntiLeak"
MODULE_DATA="/data/adb/${MODULE_ID}"
LOG_DIR="${MODULE_DATA}/logs"
LOG_FILE="${LOG_DIR}/boot.log"
STATE_DIR="${MODULE_DATA}/state"

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

# Backward-compatibility aliases used by legacy cleanup paths
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
# Sources config.sh from the module directory (built-in defaults), then from the
# persistent data directory (user override). Both files are loaded so the
# persistent override at MODULE_DATA/config.sh takes precedence over defaults
# and survives module updates.
load_config() {
  local cfg loaded=0
  # Load built-in defaults from the module directory first.
  cfg="${MODDIR:-}/config.sh"
  if [ -f "$cfg" ]; then
    . "$cfg" 2>/dev/null || true
    debug_log "config: loaded defaults from $cfg"
    loaded=1
  fi
  # Load persistent user override second; its values win over the defaults above.
  cfg="${MODULE_DATA}/config.sh"
  if [ -f "$cfg" ]; then
    . "$cfg" 2>/dev/null || true
    debug_log "config: loaded user override from $cfg"
    loaded=1
  fi
  [ "$loaded" = "0" ] && debug_log "config: no config files found; using built-in defaults"
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

  # Verify the parent built-in chain exists in this table (guard against
  # calling e.g. FORWARD in the raw table which only has PREROUTING/OUTPUT).
  if ! "$cmd" -t "$table" -S "$parent_chain" >/dev/null 2>&1; then
    debug_log "_install_chain_block_table: $parent_chain not in $table ($(basename "$cmd"))"
    return 1
  fi

  # Create chain if it does not yet exist.
  if ! _chain_exists "$cmd" "$table" "$chain"; then
    if ! "$cmd" -t "$table" -N "$chain" 2>/dev/null; then
      log "_install_chain_block_table: failed to create $chain in $table"
      return 1
    fi
    debug_log "_install_chain_block_table: created $chain in $table"
  fi

  # Loopback exemption — direction depends on parent chain.
  # OUTPUT: exempt packets leaving on loopback (-o lo).
  # INPUT/FORWARD: exempt packets arriving on loopback (-i lo) to avoid
  # breaking local IPC and preventing kernel health traffic from being dropped.
  case "$parent_chain" in
    OUTPUT)
      if ! "$cmd" -t "$table" -C "$chain" -o lo -j RETURN 2>/dev/null; then
        "$cmd" -t "$table" -A "$chain" -o lo -j RETURN 2>/dev/null || true
      fi
      ;;
    INPUT|FORWARD)
      if ! "$cmd" -t "$table" -C "$chain" -i lo -j RETURN 2>/dev/null; then
        "$cmd" -t "$table" -A "$chain" -i lo -j RETURN 2>/dev/null || true
      fi
      ;;
  esac

  # Add DROP rule to the chain (idempotent check).
  if ! "$cmd" -t "$table" -C "$chain" -j DROP 2>/dev/null; then
    if ! "$cmd" -t "$table" -A "$chain" -j DROP 2>/dev/null; then
      log "_install_chain_block_table: failed to add DROP to $chain in $table"
      # Roll back the chain so it is not left half-configured.
      "$cmd" -t "$table" -F "$chain" 2>/dev/null || true
      "$cmd" -t "$table" -X "$chain" 2>/dev/null || true
      return 1
    fi
  fi

  # Insert jump at position 1 in parent_chain (idempotent).
  if ! _jump_exists "$cmd" "$table" "$parent_chain" "$chain"; then
    if ! "$cmd" -t "$table" -I "$parent_chain" 1 -j "$chain" 2>/dev/null; then
      log "_install_chain_block_table: failed to insert $parent_chain jump to $chain in $table"
      # Do not abort; chain + DROP are still in place and will block if a
      # jump already exists from a previous invocation.
    fi
  fi

  return 0
}

# Backward-compatible alias used internally (OUTPUT direction, any table).
_install_block_table() { _install_chain_block_table "$1" "$2" "$3" OUTPUT; }

# ── OUTPUT block (device-originated traffic) ───────────────────────────────────
# Prefers raw table (pre-conntrack); falls back to filter table.
install_output_block_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || {
    log "install_output_block_v4: iptables not found"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ipt" raw "$CHAIN_OUT_V4" OUTPUT; then
    printf 'raw' > "${STATE_DIR}/ipv4_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv4_table" 2>/dev/null || true
    log "install_output_block_v4: installed in raw table"
    return 0
  fi

  log "install_output_block_v4: raw table failed; falling back to filter table"
  if _install_chain_block_table "$ipt" filter "$CHAIN_OUT_V4" OUTPUT; then
    printf 'filter' > "${STATE_DIR}/ipv4_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv4_table" 2>/dev/null || true
    log "install_output_block_v4: installed in filter table (fallback)"
    return 0
  fi

  log "install_output_block_v4: WARN: could not install IPv4 OUTPUT block"
  return 1
}

install_output_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_output_block_v6: ip6tables not found; IPv6 OUTPUT unprotected"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ip6t" raw "$CHAIN_OUT_V6" OUTPUT; then
    printf 'raw' > "${STATE_DIR}/ipv6_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv6_table" 2>/dev/null || true
    log "install_output_block_v6: installed in raw table"
    return 0
  fi

  log "install_output_block_v6: raw table failed; falling back to filter table"
  if _install_chain_block_table "$ip6t" filter "$CHAIN_OUT_V6" OUTPUT; then
    printf 'filter' > "${STATE_DIR}/ipv6_out_table" 2>/dev/null || true
    rm -f "${STATE_DIR}/ipv6_table" 2>/dev/null || true
    log "install_output_block_v6: installed in filter table (fallback)"
    return 0
  fi

  log "install_output_block_v6: WARN: could not install IPv6 OUTPUT block"
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

  if _install_chain_block_table "$ipt" filter "$CHAIN_FWD_V4" FORWARD; then
    printf '1' > "${STATE_DIR}/ipv4_fwd_active" 2>/dev/null || true
    log "install_forward_block_v4: installed in filter table"
    return 0
  fi

  log "install_forward_block_v4: WARN: could not install IPv4 FORWARD block; tethered-client traffic unprotected"
  return 1
}

install_forward_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_forward_block_v6: ip6tables not found; IPv6 FORWARD unprotected (reduced tether coverage)"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ip6t" filter "$CHAIN_FWD_V6" FORWARD; then
    printf '1' > "${STATE_DIR}/ipv6_fwd_active" 2>/dev/null || true
    log "install_forward_block_v6: installed in filter table"
    return 0
  fi

  log "install_forward_block_v6: WARN: could not install IPv6 FORWARD block; reduced tether coverage"
  return 1
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

  if _install_chain_block_table "$ipt" filter "$CHAIN_IN_V4" INPUT; then
    printf '1' > "${STATE_DIR}/ipv4_in_active" 2>/dev/null || true
    log "install_input_block_v4: installed in filter table"
    return 0
  fi

  log "install_input_block_v4: WARN: could not install IPv4 INPUT block"
  return 1
}

install_input_block_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || {
    log "install_input_block_v6: ip6tables not found; IPv6 INPUT unprotected"
    return 1
  }
  _init_dirs

  if _install_chain_block_table "$ip6t" filter "$CHAIN_IN_V6" INPUT; then
    printf '1' > "${STATE_DIR}/ipv6_in_active" 2>/dev/null || true
    log "install_input_block_v6: installed in filter table"
    return 0
  fi

  log "install_input_block_v6: WARN: could not install IPv6 INPUT block"
  return 1
}

install_block() {
  _init_dirs
  load_config
  local out_v4=0 out_v6=0
  log "install_block: start (fwd=${ENABLE_FORWARD_BLOCK:-1} in=${ENABLE_INPUT_BLOCK:-0})"

  # OUTPUT block: always installed (device-originated traffic).
  install_output_block_v4 && out_v4=1
  install_output_block_v6 && out_v6=1

  # FORWARD block: enabled by default; covers tethered-client / hotspot /
  # USB-tether / Bluetooth-tether forwarded traffic.
  if [ "${ENABLE_FORWARD_BLOCK:-1}" != "0" ]; then
    install_forward_block_v4 || true
    install_forward_block_v6 || true
  else
    log "install_block: FORWARD block disabled by ENABLE_FORWARD_BLOCK=0"
  fi

  # INPUT block: disabled by default; opt-in for inbound traffic hardening.
  if [ "${ENABLE_INPUT_BLOCK:-0}" = "1" ]; then
    install_input_block_v4 || true
    install_input_block_v6 || true
  else
    log "install_block: INPUT block not enabled (set ENABLE_INPUT_BLOCK=1 to enable)"
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

  # Remove all jump rules from parent_chain pointing at our chain.
  while _jump_exists "$cmd" "$table" "$parent_chain" "$chain"; do
    "$cmd" -t "$table" -D "$parent_chain" -j "$chain" 2>/dev/null || break
    n=$((n + 1))
    if [ "$n" -gt 10 ]; then
      log "_remove_chain_block_table: loop-guard hit removing $parent_chain jump ($chain $table)"
      break
    fi
  done

  # Flush and delete the chain if it still exists.
  if _chain_exists "$cmd" "$table" "$chain"; then
    "$cmd" -t "$table" -F "$chain" 2>/dev/null || true
    "$cmd" -t "$table" -X "$chain" 2>/dev/null || true
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
  # Support both new state file name and legacy name from v2.0.0.
  table="$(cat "${STATE_DIR}/ipv4_out_table" 2>/dev/null)" || table=""
  [ -z "$table" ] && table="$(cat "${STATE_DIR}/ipv4_table" 2>/dev/null)" || true

  if [ -n "$table" ]; then
    _remove_chain_block_table "$ipt" "$table" "$CHAIN_OUT_V4" OUTPUT
    rm -f "${STATE_DIR}/ipv4_out_table" "${STATE_DIR}/ipv4_table" 2>/dev/null || true
  else
    # State lost; try both tables defensively.
    _remove_chain_block_table "$ipt" raw    "$CHAIN_OUT_V4" OUTPUT
    _remove_chain_block_table "$ipt" filter "$CHAIN_OUT_V4" OUTPUT
  fi
  log "remove_output_block_v4: done"
}

remove_output_block_v6() {
  local ip6t table
  ip6t="$(_find_cmd ip6tables)" || return 0
  table="$(cat "${STATE_DIR}/ipv6_out_table" 2>/dev/null)" || table=""
  [ -z "$table" ] && table="$(cat "${STATE_DIR}/ipv6_table" 2>/dev/null)" || true

  if [ -n "$table" ]; then
    _remove_chain_block_table "$ip6t" "$table" "$CHAIN_OUT_V6" OUTPUT
    rm -f "${STATE_DIR}/ipv6_out_table" "${STATE_DIR}/ipv6_table" 2>/dev/null || true
  else
    _remove_chain_block_table "$ip6t" raw    "$CHAIN_OUT_V6" OUTPUT
    _remove_chain_block_table "$ip6t" filter "$CHAIN_OUT_V6" OUTPUT
  fi
  log "remove_output_block_v6: done"
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
forward_block_present_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_exists "$ipt" filter "$CHAIN_FWD_V4" && return 0
  return 1
}

forward_block_present_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_exists "$ip6t" filter "$CHAIN_FWD_V6" && return 0
  return 1
}

input_block_present_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || return 1
  _chain_exists "$ipt" filter "$CHAIN_IN_V4" && return 0
  return 1
}

input_block_present_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || return 1
  _chain_exists "$ip6t" filter "$CHAIN_IN_V6" && return 0
  return 1
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
# Once OUTPUT is confirmed, AFWall has also installed any FORWARD/INPUT rules
# it needs based on user configuration (tether, LAN, VPN, roaming controls).
# The settle delay in service.sh gives additional time for all per-app rules.
afwall_rules_present_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 1
  "$ipt" -S 2>/dev/null | grep -qE '^-N afwall($| )' || return 1
  "$ipt" -S OUTPUT 2>/dev/null | grep -qE '^-A OUTPUT .*-j afwall($| )'
}

afwall_rules_present_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || return 1
  "$ip6t" -S 2>/dev/null | grep -qE '^-N afwall($| )' || return 1
  "$ip6t" -S OUTPUT 2>/dev/null | grep -qE '^-A OUTPUT .*-j afwall($| )'
}

afwall_rules_present() {
  afwall_rules_present_v4 && return 0
  afwall_rules_present_v6 && return 0
  return 1
}

# ── Stronger per-family takeover detection ─────────────────────────────────────
# These functions are stricter than afwall_rules_present_v4/v6: they additionally
# verify that the afwall chain is explicitly in the filter table (not raw), that
# the OUTPUT hook uses the filter table, and that the afwall chain contains at
# least one rule (non-trivial — not just a bare chain creation).
#
# Why stronger detection matters:
#   - Custom scripts may create partial chains that do not constitute full takeover.
#   - Stale/mid-apply state produces a chain but no rules yet.
#   - Requiring at least one rule guards against a chain-only intermediate state.
#   - The stability window in service.sh then ensures the rule graph is settled.
afwall_takeover_present_v4() {
  local ipt count
  ipt="$(_find_cmd iptables)" || return 1
  # Chain must exist in filter table (AFWall's primary table for app rules).
  _chain_exists "$ipt" filter afwall || return 1
  # OUTPUT must hook into afwall in the filter table.
  "$ipt" -t filter -S OUTPUT 2>/dev/null | grep -qE '^-A OUTPUT .*-j afwall($| )' || return 1
  # Chain must contain at least one rule — guards against bare chain creation.
  count="$("$ipt" -t filter -S afwall 2>/dev/null | grep -c '^-A ')" || count=0
  [ "${count:-0}" -ge 1 ] || return 1
  return 0
}

afwall_takeover_present_v6() {
  local ip6t count
  ip6t="$(_find_cmd ip6tables)" || return 1
  _chain_exists "$ip6t" filter afwall || return 1
  "$ip6t" -t filter -S OUTPUT 2>/dev/null | grep -qE '^-A OUTPUT .*-j afwall($| )' || return 1
  count="$("$ip6t" -t filter -S afwall 2>/dev/null | grep -c '^-A ')" || count=0
  [ "${count:-0}" -ge 1 ] || return 1
  return 0
}

# ── AFWall rule-graph stability signatures ────────────────────────────────────
# Returns a concise snapshot of the AFWall rule graph as "rules:chains".
# The caller compares successive snapshots to detect whether the rule graph is
# still being populated (changing) or has settled (stable).
# Counting rules in the afwall chain + the number of afwall-prefixed chains
# captures both the main chain density and any custom-script sub-chains.
afwall_takeover_signature_v4() {
  local ipt rule_count chain_count
  ipt="$(_find_cmd iptables 2>/dev/null)" || { printf 'na:na'; return 1; }
  rule_count="$("$ipt" -t filter -S afwall 2>/dev/null | grep -c '^-A ')" || rule_count=0
  chain_count="$("$ipt" -t filter -S 2>/dev/null | grep -c '^-N afwall')" || chain_count=0
  printf '%s:%s' "$rule_count" "$chain_count"
}

afwall_takeover_signature_v6() {
  local ip6t rule_count chain_count
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || { printf 'na:na'; return 1; }
  rule_count="$("$ip6t" -t filter -S afwall 2>/dev/null | grep -c '^-A ')" || rule_count=0
  chain_count="$("$ip6t" -t filter -S 2>/dev/null | grep -c '^-N afwall')" || chain_count=0
  printf '%s:%s' "$rule_count" "$chain_count"
}

# ── Secondary evidence of current-boot AFWall activity ───────────────────────
# Checks whether AFWall's private data files were written after this module
# installed its block (using the ipv4_out_table state file as a reference
# timestamp — that file is created during post-fs-data when the block is first
# installed). Returns 0 if evidence found; 1 otherwise.
#
# This is SECONDARY / CORROBORATING evidence only. It is NOT a primary gate.
# Used in the fallback path to increase confidence when liveness is not visible.
# Reason the state-file reference is reliable: post-fs-data runs before any user-
# space apps start, so any AFWall data file newer than that marker was written by
# AFWall during the current boot session.
afwall_secondary_evidence_present() {
  local pkg="$1" data_dir ref
  [ -n "$pkg" ] || return 1
  data_dir="/data/data/${pkg}"
  [ -d "$data_dir" ] || return 1
  # Use the earliest available state file as the reference timestamp.
  ref="${STATE_DIR}/ipv4_out_table"
  [ -f "$ref" ] || ref="${STATE_DIR}/ipv6_out_table"
  [ -f "$ref" ] || return 1
  # If any key AFWall file is newer than our state-file reference, AFWall has
  # been active since we installed our block (current-boot evidence).
  find "$data_dir" \
    \( -name "Logs.db" -o -name "rules.db" -o -name "AFWallStatus.xml" \) \
    -newer "$ref" 2>/dev/null | grep -q '.' && return 0
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

  # Module-owned chain state: which table holds the OUTPUT block (if any).
  chain_out="absent"
  _chain_exists "$cmd" raw    "$mod_out_chain" && chain_out="raw"
  _chain_exists "$cmd" filter "$mod_out_chain" && chain_out="filter"

  chain_fwd="absent"
  _chain_exists "$cmd" filter "$mod_fwd_chain" && chain_fwd="present"

  chain_in="absent"
  _chain_exists "$cmd" filter "$mod_in_chain" && chain_in="present"

  # AFWall chain state.
  afw_chain="absent"; afw_hook="absent"; afw_rules=0
  if _chain_exists "$cmd" filter afwall; then
    afw_chain="present"
    afw_rules="$("$cmd" -t filter -S afwall 2>/dev/null | grep -c '^-A ')" || afw_rules=0
    if "$cmd" -t filter -S OUTPUT 2>/dev/null | \
        grep -qE '^-A OUTPUT .*-j afwall($| )'; then
      afw_hook="present"
    fi
  fi

  log "snapshot[$phase]: $family mod_out=$chain_out mod_fwd=$chain_fwd mod_in=$chain_in afw_chain=$afw_chain afw_hook=$afw_hook afw_rules=$afw_rules"
}

# Supplementary diagnostic: check whether AFWall has set up its FORWARD hook.
# Returns 0 if AFWall's FORWARD -j afwall jump exists (tether control active).
# Not used as a release gate; informational only.
afwall_forward_hook_present() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 1
  "$ipt" -t filter -S FORWARD 2>/dev/null | grep -qE '^-A FORWARD .*-j afwall($| )'
}

# Supplementary diagnostic: check whether AFWall has set up its INPUT hook.
# Returns 0 if AFWall's INPUT -j afwall jump exists (INPUT chain control active).
# Not used as a release gate; informational only.
afwall_input_hook_present() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 1
  "$ipt" -t filter -S INPUT 2>/dev/null | grep -qE '^-A INPUT .*-j afwall($| )'
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
# This function returns 0 if evidence of AFWall's startup script is found.
# It also returns 0 if AFWall's filter-table chains are already present,
# which indicates AFWall is currently running (relevant for service.sh context).
afwall_startup_protection_active() {
  # Primary check: look for an afwallstart script that is NOT module-owned.
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
      debug_log "afwall_startup_protection: skipping module-owned $f"
      continue
    fi
    debug_log "afwall_startup_protection: found afwallstart script at $f"
    return 0
  done

  # Secondary check: AFWall's filter-table chains (indicates AFWall is running).
  # Useful when called from service.sh context after AFWall has started.
  local cmd t c
  for cmd in iptables ip6tables; do
    c="$(_find_cmd "$cmd" 2>/dev/null)" || continue
    if _table_available "$c" filter && \
       "$c" -t filter -S 2>/dev/null | grep -qE '^-N afwall($| )'; then
      debug_log "afwall_startup_protection: found afwall filter chain ($cmd)"
      return 0
    fi
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
# Evaluates config and current state, writes the chosen mode to the state
# directory, and returns 0 always (failures are logged).
#
# Integration mode behaviour during post-fs-data:
#   At post-fs-data stage iptables is clean (flushed on reboot).  AFWall's
#   filter chains do NOT exist yet, so afwall_startup_protection_active() can
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
  local b c n chain
  for b in iptables ip6tables; do
    c="$(_find_cmd "$b" 2>/dev/null)" || continue
    # Clean up all known module-owned chain names from raw table (legacy + current).
    for chain in MOD_PRE_AFW MOD_PRE_AFW_V6 \
                 MOD_PRE_AFW_FWD MOD_PRE_AFW_FWD_V6 \
                 MOD_PRE_AFW_IN MOD_PRE_AFW_IN_V6; do
      n=0
      while "$c" -t raw -C OUTPUT -j "$chain" 2>/dev/null; do
        "$c" -t raw -D OUTPUT -j "$chain" 2>/dev/null || break
        n=$((n + 1)); [ "$n" -gt 10 ] && break
      done
      n=0
      while "$c" -t raw -C PREROUTING -j "$chain" 2>/dev/null; do
        "$c" -t raw -D PREROUTING -j "$chain" 2>/dev/null || break
        n=$((n + 1)); [ "$n" -gt 10 ] && break
      done
      "$c" -t raw -F "$chain" 2>/dev/null || true
      "$c" -t raw -X "$chain" 2>/dev/null || true
    done
  done
}

# Remove legacy afwallstart scripts only if they carry a known module marker.
# Covers every path that v1.x variants have been observed to use.
remove_legacy_afwallstart() {
  local f
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
  return 0
}

cleanup_legacy() {
  local phase="${1:-unknown}"
  log "cleanup_legacy: phase=$phase"
  remove_legacy_raw_drop
  remove_legacy_afwallstart
  return 0
}

# ── Transport-specific AFWall chain detection ──────────────────────────────────
# AFWall+ creates dedicated sub-chains for each transport type:
#   afwall-wifi   — Wi-Fi rules
#   afwall-3g     — mobile data rules
# These are created only when AFWall has been configured with per-transport
# rules. Detection requires: chain exists, hook present, and at least one rule.

# Generic helper: check that a named afwall transport chain exists in the filter
# table and contains at least one rule.
_afwall_transport_chain_ready() {
  local cmd="$1" chain="$2" count
  [ -x "$cmd" ] || return 1
  _chain_exists "$cmd" filter "$chain" || return 1
  count="$("$cmd" -t filter -S "$chain" 2>/dev/null | grep -c '^-A ')" || count=0
  [ "${count:-0}" -ge 1 ] || return 1
  return 0
}

# Wi-Fi transport chain present (IPv4)
afwall_wifi_chain_present_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 1
  _afwall_transport_chain_ready "$ipt" afwall-wifi
}

# Wi-Fi transport chain present (IPv6)
afwall_wifi_chain_present_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || return 1
  _afwall_transport_chain_ready "$ip6t" afwall-wifi
}

# Mobile data transport chain present (IPv4)
afwall_mobile_chain_present_v4() {
  local ipt
  ipt="$(_find_cmd iptables)" || return 1
  _afwall_transport_chain_ready "$ipt" afwall-3g
}

# Mobile data transport chain present (IPv6)
afwall_mobile_chain_present_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables)" || return 1
  _afwall_transport_chain_ready "$ip6t" afwall-3g
}

# Transport-specific rule-graph signature: returns "rules:chains" for the
# named transport chain. Used to detect whether the chain is still settling.
_afwall_transport_signature() {
  local cmd="$1" chain="$2" rule_count
  [ -x "$cmd" ] || { printf 'na:na'; return 1; }
  rule_count="$("$cmd" -t filter -S "$chain" 2>/dev/null | grep -c '^-A ')" || rule_count=0
  printf '%s' "$rule_count"
}

afwall_wifi_signature_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || { printf 'na'; return 1; }
  _afwall_transport_signature "$ipt" afwall-wifi
}

afwall_wifi_signature_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || { printf 'na'; return 1; }
  _afwall_transport_signature "$ip6t" afwall-wifi
}

afwall_mobile_signature_v4() {
  local ipt
  ipt="$(_find_cmd iptables 2>/dev/null)" || { printf 'na'; return 1; }
  _afwall_transport_signature "$ipt" afwall-3g
}

afwall_mobile_signature_v6() {
  local ip6t
  ip6t="$(_find_cmd ip6tables 2>/dev/null)" || { printf 'na'; return 1; }
  _afwall_transport_signature "$ip6t" afwall-3g
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

blackout_is_active() {
  [ -f "${STATE_DIR}/blackout_active" ]
}

radio_off_pending() {
  [ -f "${STATE_DIR}/radio_off_pending" ]
}

# ── Lower-layer suppression subsystem ─────────────────────────────────────────
# Source the lower-layer suppression library if present.
# This provides: lowlevel_prepare_environment_early, lowlevel_prepare_environment,
# lowlevel_restore_changed_state, lowlevel_emergency_restore, and helpers.
# MODDIR is set by the calling script before sourcing common.sh.
if [ -f "${MODDIR:-}/bin/lowlevel.sh" ]; then
  . "${MODDIR}/bin/lowlevel.sh"
fi
