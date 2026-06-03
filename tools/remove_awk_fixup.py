from pathlib import Path
root = Path.cwd()
common = root / 'bin/common.sh'
s = common.read_text()
helper = '''_rule_jump_target_from_line() {
  local _word _want=0
  for _word in $1; do
    if [ "$_want" = "1" ]; then
      printf '%s' "$_word"
      return 0
    fi
    [ "$_word" = "-j" ] && _want=1
  done
  return 1
}

'''
anchor = '''_chain_in_list() {
  local chain="$1" list="$2" c
  for c in $list; do [ "$c" = "$chain" ] && return 0; done
  return 1
}

'''
if helper.strip() not in s:
    s = s.replace(anchor, anchor + helper)
start = s.index('reachable_chains_from_snapshot() {')
end = s.index('\n_chain_in_list() {', start)
s = s[:start] + '''reachable_chains_from_snapshot() {
  local snap="$1" line chain target reachable changed current out=""
  [ -n "$snap" ] || return 1
  afwall_graph_present_from_snapshot "$snap" || return 1
  reachable=" ${AFWALL_CHAIN_MAIN} "
  changed=1
  while [ "$changed" = "1" ]; do
    changed=0
    while IFS= read -r line; do
      case "$line" in "-A afwall"*) ;; *) continue ;; esac
      chain="${line#-A }"; chain="${chain%% *}"
      case "$reachable" in *" $chain "*) ;; *) continue ;; esac
      target="$(_rule_jump_target_from_line "$line" 2>/dev/null || true)"
      case "$target" in afwall*)
        printf '%s\n' "$snap" | grep -qE "^-N ${target}( |$)" || continue
        case "$reachable" in *" $target "*) ;; *) reachable="${reachable}${target} "; changed=1 ;; esac
        ;;
      esac
    done <<EOF
$snap
EOF
  done
  for current in $reachable; do [ -n "$current" ] && out="${out}${current}
"; done
  [ -n "$out" ] || return 1
  printf '%s' "$out"
}
''' + s[end+1:]
start = s.index('rooted_afwall_graph_from_snapshot() {')
end = s.index('\nafwall_rooted_graph_fingerprint_from_snapshot() {', start)
s = s[:start] + '''rooted_afwall_graph_from_snapshot() {
  local snap="$1" chains line chain target out=""
  chains="$(reachable_chains_from_snapshot "$snap")" || return 1
  while IFS= read -r line; do
    case "$line" in
      "-A OUTPUT "*)
        target="$(_rule_jump_target_from_line "$line" 2>/dev/null || true)"
        [ "$target" = "$AFWALL_CHAIN_MAIN" ] && out="${out}${line}
"
        ;;
      "-N afwall"*)
        chain="${line#-N }"; chain="${chain%% *}"
        _chain_in_list "$chain" "$chains" && out="${out}${line}
"
        ;;
      "-A afwall"*)
        chain="${line#-A }"; chain="${chain%% *}"
        if _chain_in_list "$chain" "$chains"; then
          target="$(_rule_jump_target_from_line "$line" 2>/dev/null || true)"
          case "$target" in afwall*) _chain_in_list "$target" "$chains" && out="${out}${line}
" ;; *) out="${out}${line}
" ;; esac
        fi
        ;;
    esac
  done <<EOF
$snap
EOF
  [ -n "$out" ] || return 1
  printf '%s' "$out" | sort
}
''' + s[end+1:]
s = s.replace("printf '%s\\n' \"$graph\" | cksum | awk '{print $1}'", "sum=\"$(printf '%s\\n' \"$graph\" | cksum 2>/dev/null)\" || sum=\"\"\n    sum=\"${sum%% *}\"\n    [ -n \"$sum\" ] && { printf '%s' \"$sum\"; return 0; }")
s = s.replace("if has_cmd cksum; then printf '%s\\n' \"$graph\" | cksum | awk '{print $1}'; else", "if has_cmd cksum; then sum=\"$(printf '%s\\n' \"$graph\" | cksum 2>/dev/null)\" || sum=\"\"; sum=\"${sum%% *}\"; [ -n \"$sum\" ] && { printf '%s' \"$sum\"; return 0; }; fi; ")
common.write_text(s)

tests = root / 'tools/mock-logic-tests.sh'
s = tests.read_text()
s = s.replace("  prev=$(awk -v key=\"$v\" 'index($0,key\"=\")==1 {print last; exit} {last=$0}' \"$ROOT/config.sh\")\n  printf '%s' \"$prev\" | grep -q '^# .*' || fail \"config variable lacks immediate explanatory comment: $v\"", "  prev=\"\"\n  found=0\n  while IFS= read -r line; do\n    case \"$line\" in\n      \"$v\"=*) found=1; break ;;\n    esac\n    prev=\"$line\"\n  done < \"$ROOT/config.sh\"\n  [ \"$found\" = \"1\" ] || fail \"config variable not found while checking comment: $v\"\n  printf '%s' \"$prev\" | grep -q '^# .*' || fail \"config variable lacks immediate explanatory comment: $v\"")
tests.write_text(s)
