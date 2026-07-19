#!/usr/bin/env sh
set -u

FAIL=0
TMP="${TMPDIR:-/tmp}/aba-reconcile-test.$$"
mkdir -p "$TMP/state" "$TMP/shared_prefs"
trap 'rm -rf "$TMP"' EXIT INT TERM

REPO_ROOT="$(unset CDPATH; cd -- "$(dirname "$0")/.." && pwd)"
GUARD="$REPO_ROOT/bin/generation_guard.sh"
SERVICE="$REPO_ROOT/service.sh"
COMMON="$REPO_ROOT/bin/common.sh"

AFWALL_CHAIN_MAIN=afwall
AFWALL_PACKAGE=dev.ukanth.ufirewall.donate
AFW_PKG=dev.ukanth.ufirewall.donate
STATE_DIR="$TMP/state"
DEBUG=0
NOW_FAKE=100

log() { :; }
debug_log() { :; }
monotonic_seconds() { printf '%s' "$NOW_FAKE"; }
has_cmd() { command -v "$1" >/dev/null 2>&1; }
_find_cmd() { command -v "$1"; }
_ipt_out() { return 1; }
_init_dirs() { mkdir -p "$STATE_DIR"; }
resolve_afwall_pkg() { printf '%s' "$AFW_PKG"; }
_checksum_lines() {
  set -- $(printf '%s\n' "$1" | cksum)
  printf '%s' "$1"
}
_snapshot_defined_chains() { printf '%s\n' "$1" | sed -n 's/^-N \([^ ]*\).*/\1/p'; }
_afwall_chain_defined() {
  _c="$1"; _defs="$2"
  for _d in $_defs; do [ "$_d" = "$_c" ] && return 0; done
  return 1
}
_chain_in_list() {
  _c="$1"; _list="$2"
  for _d in $_list; do [ "$_d" = "$_c" ] && return 0; done
  return 1
}
_chain_from_rule_line() {
  case "$1" in '-A '*) _x="${1#-A }"; printf '%s' "${_x%% *}" ;; *) return 1 ;; esac
}
_snapshot_jump_targets() {
  _line="$1"
  case "$_line" in *' -j '*) _x="${_line#* -j }"; printf '%s\n' "${_x%% *}" ;; esac
}

# shellcheck source=../bin/generation_guard.sh
. "$GUARD"

pass() { printf 'ok - %s\n' "$1"; }
fail() { printf 'not ok - %s\n' "$1"; FAIL=$((FAIL + 1)); }
assert_true() { _name="$1"; shift; if "$@"; then pass "$_name"; else fail "$_name"; fi; }
assert_false() { _name="$1"; shift; if "$@"; then fail "$_name"; else pass "$_name"; fi; }
assert_eq() {
  _name="$1" _actual="$2" _expected="$3"
  if [ "$_actual" = "$_expected" ]; then
    pass "$_name"
  else
    printf '  expected=%s actual=%s\n' "$_expected" "$_actual"
    fail "$_name"
  fi
}
assert_order() {
  _name="$1" _section="$2" _first="$3" _second="$4" _last="$5"
  _first_line="$(printf '%s\n' "$_section" | grep -nF "$_first" | head -n 1 | cut -d: -f1)"
  _second_line="$(printf '%s\n' "$_section" | grep -nF "$_second" | head -n 1 | cut -d: -f1)"
  _last_line="$(printf '%s\n' "$_section" | grep -nF "$_last" | head -n 1 | cut -d: -f1)"
  if [ -n "$_first_line" ] && [ -n "$_second_line" ] && [ -n "$_last_line" ] && \
     [ "$_first_line" -lt "$_last_line" ] && [ "$_second_line" -lt "$_last_line" ]; then
    pass "$_name"
  else
    fail "$_name"
  fi
}

write_prefs() {
  _enabled="$1" _control="$2"
  {
    printf '%s\n' '<map>'
    printf '%s\n' '  <boolean name="addDelayStart" value="false" />'
    printf '%s\n' '  <int name="customDelay" value="5" />'
    printf '  <boolean name="enableIPv6" value="%s" />\n' "$_enabled"
    [ "$_control" = absent ] || printf '  <boolean name="controlIPv6" value="%s" />\n' "$_control"
    printf '%s\n' '</map>'
  } > "$TMP/shared_prefs/global.xml"
  ABA_GEN_PREFS_READY=0
  ABA_GEN_PREFS_LAST_CHECK_TS=0
  ABA_GEN_IPV6_ENABLED=unknown
  ABA_GEN_IPV6_CONTROL=unknown
  ABA_GEN_IPV6_CONTROLLED=unknown
  ABA_GEN_IPV6_STATE=unknown
}
_aba_pref_dirs() { printf '%s\n' "$TMP/shared_prefs"; }

write_prefs true true
assert_true 'IPv6-enabled preferences load' _aba_load_startup_prefs
assert_eq 'IPv6 enabled parsed' "$ABA_GEN_IPV6_ENABLED" 1
assert_eq 'IPv6 control parsed' "$ABA_GEN_IPV6_CONTROL" 1
assert_eq 'AFWall owns IPv6 only when both flags are true' "$ABA_GEN_IPV6_CONTROLLED" 1
assert_true 'controlled IPv6 state returns success' afwall_ipv6_control_state
assert_eq 'controlled IPv6 state is persisted' "$ABA_GEN_IPV6_STATE" controlled

write_prefs false false
assert_true 'IPv6-disabled preferences load' _aba_load_startup_prefs
_rc=0
afwall_ipv6_control_state || _rc=$?
assert_eq 'disabled IPv6 state returns held status' "$_rc" 2
assert_eq 'disabled IPv6 state is persisted' "$ABA_GEN_IPV6_STATE" held

write_prefs true false
assert_true 'controlIPv6=false preferences load' _aba_load_startup_prefs
assert_eq 'explicit controlIPv6=false is fail-closed' "$ABA_GEN_IPV6_CONTROLLED" 0

write_prefs false absent
assert_true 'missing controlIPv6 compatibility preferences load' _aba_load_startup_prefs
assert_eq 'missing controlIPv6 follows enableIPv6=false' "$ABA_GEN_IPV6_CONTROLLED" 0

write_prefs true absent
assert_true 'missing controlIPv6 true compatibility preferences load' _aba_load_startup_prefs
assert_eq 'missing controlIPv6 follows enableIPv6=true' "$ABA_GEN_IPV6_CONTROLLED" 1

rm -f "$TMP/shared_prefs/global.xml"
ABA_GEN_PREFS_READY=0
ABA_GEN_PREFS_LAST_CHECK_TS=0
ABA_GEN_IPV6_STATE=controlled
assert_false 'unavailable preferences remain fail-closed' afwall_ipv6_control_state
assert_eq 'unavailable preferences report unknown' "$ABA_GEN_IPV6_STATE" unknown

release_section="$(sed -n '/Block release: remove blocks/,/All done?/p' "$SERVICE")"
assert_order 'service removes IPv4 raw OUTPUT last' "$release_section" \
  'remove_forward_block_v4' 'remove_input_block_v4' 'remove_output_block_v4'
assert_order 'service removes IPv6 raw OUTPUT last' "$release_section" \
  'remove_forward_block_v6' 'remove_input_block_v6' 'remove_output_block_v6'

assert_true 'held IPv6 skips the normal v6 release block' grep -qF '[ "$v6_held" = "0" ]' "$SERVICE"
assert_true 'held IPv6 is terminal for completion' grep -qF '[ "$v6_held" = "0" ] && _v6_complete=0' "$SERVICE"
assert_true 'held IPv6 persists an ownership marker' grep -qF 'printf '\''1'\'' > "${STATE_DIR}/ipv6_held"' "$SERVICE"
assert_true 'held IPv6 finalization preserves blackout state' grep -qF 'finalization preserving module-owned IPv6 block' "$SERVICE"
assert_true 'graph drift invokes event-driven v4 repair' grep -qF '_repair_family_on_graph_drift v4' "$SERVICE"
assert_true 'graph drift invokes event-driven v6 repair' grep -qF '_repair_family_on_graph_drift v6' "$SERVICE"

common_remove_section="$(sed -n '/^remove_block() {/,/^}/p' "$COMMON")"
assert_order 'generic cleanup removes IPv4 raw OUTPUT after filter directions' "$common_remove_section" \
  'remove_forward_block_v4' 'remove_input_block_v4' 'remove_output_block_v4'

if [ "$FAIL" -ne 0 ]; then
  printf '%s reconciliation test(s) failed\n' "$FAIL" >&2
  exit 1
fi
printf 'All reconciliation tests passed.\n'
