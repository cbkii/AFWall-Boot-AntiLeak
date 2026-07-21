#!/system/bin/sh
# AFWall generation-aware readiness guard.
# Sourced from config.sh after bin/common.sh has defined the base helpers.

# This library intentionally overrides a small set of common.sh readiness
# primitives. The existing service loop, blackout ownership, watchdog,
# transport restore and Action recovery paths remain authoritative.

ABA_GENERATION_GUARD_VERSION="1"
ABA_GEN_PROCESS_FIRST_TS="${ABA_GEN_PROCESS_FIRST_TS:-0}"
ABA_GEN_PREFS_LAST_CHECK_TS="${ABA_GEN_PREFS_LAST_CHECK_TS:-0}"
ABA_GEN_PREFS_READY="${ABA_GEN_PREFS_READY:-0}"
ABA_GEN_DELAY_ENABLED="${ABA_GEN_DELAY_ENABLED:-unknown}"
ABA_GEN_DELAY_SECS="${ABA_GEN_DELAY_SECS:-0}"
ABA_GEN_PREFS_FILE="${ABA_GEN_PREFS_FILE:-}"
ABA_GEN_GATE_OPEN_TS="${ABA_GEN_GATE_OPEN_TS:-0}"
ABA_GEN_PACKAGE="${ABA_GEN_PACKAGE:-}"
ABA_GEN_FIX_LEAK="${ABA_GEN_FIX_LEAK:-unknown}"
ABA_GEN_INIT_PATH="${ABA_GEN_INIT_PATH:-unknown}"
ABA_GEN_IPV6_ENABLED="${ABA_GEN_IPV6_ENABLED:-unknown}"
ABA_GEN_IPV6_CONTROL="${ABA_GEN_IPV6_CONTROL:-unknown}"
ABA_GEN_IPV6_CONTROLLED="${ABA_GEN_IPV6_CONTROLLED:-unknown}"
ABA_GEN_IPV6_STATE="${ABA_GEN_IPV6_STATE:-unknown}"

_aba_uint_or_default() {
  case "$1" in
    ''|*[!0-9]*) printf '%s' "$2" ;;
    *) printf '%s' "$1" ;;
  esac
}

_aba_now() {
  monotonic_seconds 2>/dev/null || printf '0'
}

_aba_xml_attr_value() {
  local file="$1" key="$2" line value
  [ -f "$file" ] || return 1

  line="$(grep -m1 -E "name=[\"']${key}[\"']" "$file" 2>/dev/null)" || line=""
  [ -n "$line" ] || return 1

  value="$(printf '%s\n' "$line" | sed -n "s/.*value=[\"']\([^\"']*\)[\"'].*/\1/p")"
  if [ -z "$value" ]; then
    value="$(printf '%s\n' "$line" | sed -n 's/.*<string[^>]*>\(.*\)<\/string>.*/\1/p')"
  fi
  [ -n "$value" ] || return 1
  printf '%s' "$value"
}

_aba_pref_bool() {
  case "$1" in
    1|true|TRUE|yes|on) printf '1' ;;
    0|false|FALSE|no|off) printf '0' ;;
    *) return 1 ;;
  esac
}

_aba_resolve_pkg() {
  local pkg="${AFW_PKG:-}"
  if [ -z "$pkg" ]; then
    case "${AFWALL_PACKAGE:-auto}" in
      auto|'') pkg="$(resolve_afwall_pkg 2>/dev/null)" || pkg="" ;;
      *) pkg="$AFWALL_PACKAGE" ;;
    esac
  fi
  [ -n "$pkg" ] || return 1
  ABA_GEN_PACKAGE="$pkg"
  printf '%s' "$pkg"
}

_aba_process_present_raw() {
  local pkg="$1" esc f
  [ -n "$pkg" ] || return 1

  if has_cmd pidof; then
    pidof "$pkg" >/dev/null 2>&1 && return 0
  fi

  if has_cmd ps; then
    esc="$(printf '%s' "$pkg" | sed 's/\./\\./g')"
    ps -A 2>/dev/null | grep -qE "[[:space:]]${esc}(:[[:alnum:]_]+)?$" && return 0
    ps 2>/dev/null | grep -qE "[[:space:]]${esc}(:[[:alnum:]_]+)?$" && return 0
    # A usable ps result is authoritative. Do not scan every /proc entry on each
    # poll merely because the target process is absent.
    return 1
  fi

  # Last-resort fallback for restricted/minimal environments with neither pidof
  # nor ps. No external process is spawned per PID.
  for f in /proc/[0-9]*/cmdline; do
    _afwall_cmdline_matches_pkg "$f" "$pkg" && return 0
  done
  return 1
}

_aba_note_process_epoch() {
  local now pkg
  [ "$ABA_GEN_PROCESS_FIRST_TS" != "0" ] && return 0
  pkg="$(_aba_resolve_pkg 2>/dev/null)" || return 1
  ABA_GEN_PACKAGE="$pkg"
  _aba_process_present_raw "$pkg" || return 1
  now="$(_aba_now)"
  [ "$now" != "0" ] || return 1
  ABA_GEN_PROCESS_FIRST_TS="$now"
  log "generation_guard: AFWall process first observed pkg=$pkg mono=${ABA_GEN_PROCESS_FIRST_TS}"
  return 0
}

_aba_pref_dirs() {
  local pkg="$1" d
  for d in \
    "/data/data/${pkg}/shared_prefs" \
    "/data/user/0/${pkg}/shared_prefs" \
    "/data/user_de/0/${pkg}/shared_prefs" \
    /data/user/[0-9]*/"${pkg}"/shared_prefs \
    /data/user_de/[0-9]*/"${pkg}"/shared_prefs; do
    [ -d "$d" ] && printf '%s\n' "$d"
  done
}

_aba_find_global_prefs_file() {
  local pkg="$1" dir file

  # Prefer the file that actually owns startup-delay state. AFWall may have
  # several SharedPreferences XML files and choosing a fixLeak-only file first
  # would incorrectly default an enabled delay to false.
  for dir in $(_aba_pref_dirs "$pkg"); do
    for file in "$dir"/*.xml; do
      [ -f "$file" ] || continue
      if grep -qE "name=[\"'](addDelayStart|customDelay)[\"']" "$file" 2>/dev/null; then
        printf '%s' "$file"
        return 0
      fi
    done
  done

  # Defaults are not always materialised. Fall back to the global-looking file
  # that contains another known AFWall boot preference and treat an absent delay
  # key as AFWall's default (disabled).
  for dir in $(_aba_pref_dirs "$pkg"); do
    for file in "$dir"/*.xml; do
      [ -f "$file" ] || continue
      if grep -qE "name=[\"'](fixLeak|initPath|activeRules|enableIPv6|controlIPv6)[\"']" "$file" 2>/dev/null; then
        printf '%s' "$file"
        return 0
      fi
    done
  done
  return 1
}

_aba_load_startup_prefs() {
  local now retry pkg file raw delay fix init ipv6_enabled ipv6_control

  [ "$ABA_GEN_PREFS_READY" = "1" ] && return 0
  now="$(_aba_now)"
  retry="$(_aba_uint_or_default "${AFWALL_PREFS_RETRY_SECS:-2}" 2)"
  if [ "$now" != "0" ] && [ "$ABA_GEN_PREFS_LAST_CHECK_TS" != "0" ] && \
     [ $((now - ABA_GEN_PREFS_LAST_CHECK_TS)) -lt "$retry" ]; then
    return 1
  fi
  ABA_GEN_PREFS_LAST_CHECK_TS="$now"

  pkg="$(_aba_resolve_pkg 2>/dev/null)" || return 1
  ABA_GEN_PACKAGE="$pkg"
  file="$(_aba_find_global_prefs_file "$pkg" 2>/dev/null)" || return 1

  raw="$(_aba_xml_attr_value "$file" addDelayStart 2>/dev/null)" || raw="false"
  ABA_GEN_DELAY_ENABLED="$(_aba_pref_bool "$raw" 2>/dev/null)" || ABA_GEN_DELAY_ENABLED="unknown"
  [ "$ABA_GEN_DELAY_ENABLED" != "unknown" ] || return 1

  delay="$(_aba_xml_attr_value "$file" customDelay 2>/dev/null)" || delay="5"
  delay="$(_aba_uint_or_default "$delay" 5)"
  ABA_GEN_DELAY_SECS="$delay"

  fix="$(_aba_xml_attr_value "$file" fixLeak 2>/dev/null)" || fix="false"
  ABA_GEN_FIX_LEAK="$(_aba_pref_bool "$fix" 2>/dev/null)" || ABA_GEN_FIX_LEAK="unknown"

  init="$(_aba_xml_attr_value "$file" initPath 2>/dev/null)" || init="unknown"
  ABA_GEN_INIT_PATH="$init"

  # AFWall 4.0.3 exposes both enableIPv6 and, on some preference layouts,
  # controlIPv6.  An explicit false in either means AFWall will not own IPv6.
  # When controlIPv6 is absent, use enableIPv6 as the compatibility authority.
  ipv6_enabled="$(_aba_xml_attr_value "$file" enableIPv6 2>/dev/null)" || ipv6_enabled="true"
  ABA_GEN_IPV6_ENABLED="$(_aba_pref_bool "$ipv6_enabled" 2>/dev/null)" || ABA_GEN_IPV6_ENABLED="unknown"
  [ "$ABA_GEN_IPV6_ENABLED" != "unknown" ] || return 1

  ipv6_control="$(_aba_xml_attr_value "$file" controlIPv6 2>/dev/null)" || ipv6_control="$ipv6_enabled"
  ABA_GEN_IPV6_CONTROL="$(_aba_pref_bool "$ipv6_control" 2>/dev/null)" || ABA_GEN_IPV6_CONTROL="unknown"
  [ "$ABA_GEN_IPV6_CONTROL" != "unknown" ] || return 1

  if [ "$ABA_GEN_IPV6_ENABLED" = "1" ] && [ "$ABA_GEN_IPV6_CONTROL" = "1" ]; then
    ABA_GEN_IPV6_CONTROLLED="1"
  else
    ABA_GEN_IPV6_CONTROLLED="0"
  fi

  ABA_GEN_PREFS_FILE="$file"
  ABA_GEN_PREFS_READY="1"

  log "generation_guard: AFWall startup prefs loaded file=$file delayed=${ABA_GEN_DELAY_ENABLED} delay_secs=${ABA_GEN_DELAY_SECS} fixLeak=${ABA_GEN_FIX_LEAK} initPath=${ABA_GEN_INIT_PATH} ipv6_enabled=${ABA_GEN_IPV6_ENABLED} ipv6_control=${ABA_GEN_IPV6_CONTROL} ipv6_controlled=${ABA_GEN_IPV6_CONTROLLED}"
  if [ "$ABA_GEN_FIX_LEAK" = "1" ]; then
    log "generation_guard: WARN: AFWall fixLeak is enabled; module blackout remains authoritative and AFWall-owned afwallstart is not accepted as handoff proof"
  fi
  return 0
}

# Return AFWall's IPv6 ownership state without adding another polling path.
# Output: controlled | held | unknown.  Preferences are loaded once and then
# cached; unavailable credential-encrypted storage remains fail-closed.
afwall_ipv6_control_state() {
  _aba_load_startup_prefs || {
    ABA_GEN_IPV6_STATE="unknown"
    return 1
  }
  case "$ABA_GEN_IPV6_CONTROLLED" in
    1) ABA_GEN_IPV6_STATE="controlled"; return 0 ;;
    0) ABA_GEN_IPV6_STATE="held"; return 2 ;;
    *) ABA_GEN_IPV6_STATE="unknown"; return 1 ;;
  esac
}

_aba_generation_gate() {
  local snap="$1" now grace deadline

  # Probe the process on every poll, even before a graph exists, so the delay
  # epoch approximates AFWall's OnBootReceiver start rather than first graph time.
  _aba_note_process_epoch || true
  _afwall_base_graph_structurally_present_from_snapshot "$snap" || return 1
  if [ "$ABA_GEN_PROCESS_FIRST_TS" = "0" ]; then
    debug_log "generation_guard: valid AFWall graph seen before AFWall process epoch; retaining blackout"
    return 1
  fi

  _aba_load_startup_prefs || {
    debug_log "generation_guard: AFWall startup prefs unavailable; retaining blackout"
    return 1
  }

  now="$(_aba_now)"
  [ "$now" != "0" ] || return 1

  if [ "$ABA_GEN_DELAY_ENABLED" = "1" ]; then
    grace="$(_aba_uint_or_default "${AFWALL_DELAY_GRACE_SECS:-4}" 4)"
    deadline=$((ABA_GEN_PROCESS_FIRST_TS + ABA_GEN_DELAY_SECS + grace))
    if [ "$now" -lt "$deadline" ]; then
      debug_log "generation_guard: waiting for delayed AFWall generation now=$now deadline=$deadline delay=${ABA_GEN_DELAY_SECS}s grace=${grace}s"
      return 1
    fi
  fi

  if [ "$ABA_GEN_GATE_OPEN_TS" = "0" ]; then
    ABA_GEN_GATE_OPEN_TS="$now"
    log "generation_guard: final-generation observation window opened mono=$now process_epoch=${ABA_GEN_PROCESS_FIRST_TS} delayed=${ABA_GEN_DELAY_ENABLED} delay_secs=${ABA_GEN_DELAY_SECS}"
  fi
  return 0
}

# Read two complete filter snapshots under xtables locking and expose a snapshot
# only when both reads are byte-identical. This prevents the service loop from
# evaluating a table while AFWall is mutating it between commands.
_aba_capture_barrier_snapshot() {
  local family="$1" cmd first second
  case "$family" in
    v4) cmd="$(_find_cmd iptables 2>/dev/null)" || return 1 ;;
    v6) cmd="$(_find_cmd ip6tables 2>/dev/null)" || return 1 ;;
    *) return 1 ;;
  esac

  first="$(_ipt_out "$cmd" -t filter -S 2>/dev/null)" || return 1
  second="$(_ipt_out "$cmd" -t filter -S 2>/dev/null)" || return 1
  if [ "$first" != "$second" ]; then
    debug_log "generation_guard: ${family} barrier snapshots differed; AFWall graph still changing"
    return 1
  fi
  printf '%s\n' "$second"
}

capture_filter_snapshot_v4() { _aba_capture_barrier_snapshot v4; }
capture_filter_snapshot_v6() { _aba_capture_barrier_snapshot v6; }

# Preserve semantic rule order. The previous implementation sorted lines before
# checksumming, which made opposite first-match behaviours hash identically.
rooted_afwall_graph_from_snapshot() {
  local snap="$1" defs reachable changed line chain targets target
  local undefined="" out="" idx ord c

  [ -n "$snap" ] || return 1
  _afwall_base_graph_structurally_present_from_snapshot "$snap" || return 1

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
                if ! _afwall_chain_defined "$target" "$defs"; then
                  undefined="${undefined}${undefined:+ }${target}"
                elif ! _chain_in_list "$target" "$reachable"; then
                  reachable="$reachable $target"
                  changed=1
                fi
                ;;
            esac
          done
          ;;
      esac
    done <<EOF_SNAPSHOT_DISCOVERY
$snap
EOF_SNAPSHOT_DISCOVERY
  done

  [ -z "$undefined" ] || {
    debug_log "generation_guard: structurally incomplete AFWall graph undefined_targets=$undefined"
    return 1
  }

  idx=0
  while IFS= read -r line; do
    case "$line" in
      '-A OUTPUT '*)
        idx=$((idx + 1))
        targets="$(_snapshot_jump_targets "$line")"
        for target in $targets; do
          if [ "$target" = "$AFWALL_CHAIN_MAIN" ]; then
            out="${out}OUTPUT[${idx}] ${line}
"
            break
          fi
        done
        ;;
    esac
  done <<EOF_OUTPUT_RULES
$snap
EOF_OUTPUT_RULES

  for c in $reachable; do
    out="${out}CHAIN ${c}
"
    ord=0
    while IFS= read -r line; do
      case "$line" in
        "-A ${c} "*)
          ord=$((ord + 1))
          out="${out}RULE ${c}[${ord}] ${line}
"
          ;;
      esac
    done <<EOF_CHAIN_RULES
$snap
EOF_CHAIN_RULES
  done

  [ -n "$out" ] || return 1
  printf '%s' "$out"
}

afwall_rooted_graph_fingerprint_from_snapshot() {
  local graph
  graph="$(rooted_afwall_graph_from_snapshot "$1")" || { printf 'na'; return 1; }
  _checksum_lines "$graph"
}

# Require a closed rooted graph with at least one executable rule. Undefined
# afwall* jump targets cause rooted_afwall_graph_from_snapshot() to fail.
afwall_graph_nontrivial_from_snapshot() {
  local graph count
  graph="$(rooted_afwall_graph_from_snapshot "$1")" || return 1
  count="$(printf '%s\n' "$graph" | grep -c '^RULE ')" || count=0
  [ "${count:-0}" -ge 1 ]
}

# Gate graph visibility until AFWall's configured final generation can have run.
afwall_graph_present_from_snapshot() {
  _aba_generation_gate "$1"
}

# Process, file-mtime and density signals remain diagnostics only. Returning
# false here forces the existing service loop onto its conservative stability
# path after the generation gate opens.
afwall_process_present() { return 1; }
afwall_secondary_evidence_present() { return 1; }
afwall_rules_dense_from_snapshot() { return 1; }

# The module's blackout is authoritative in every enabled integration mode.
# AFWall-owned afwallstart scripts may supplement it but never replace it.
should_install_block() {
  _init_dirs
  case "${INTEGRATION_MODE:-auto}" in
    off)
      log "integration: mode=off; module blocking explicitly disabled"
      printf 'off' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      return 1
      ;;
    prefer_afwall)
      log "integration: prefer_afwall is compatibility-only; installing module blackout because AFWall startup scripts are not sufficient proof"
      printf 'prefer_afwall_guarded' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      return 0
      ;;
    prefer_module)
      log "integration: prefer_module; installing module blackout unconditionally"
      printf 'prefer_module' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      return 0
      ;;
    auto|*)
      log "integration: auto; installing module blackout as authoritative boot protection"
      printf 'auto' > "${STATE_DIR}/integration_mode" 2>/dev/null || true
      return 0
      ;;
  esac
}
