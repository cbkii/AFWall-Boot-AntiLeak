#!/usr/bin/env sh
set -u

FAIL=0
TMP="${TMPDIR:-/tmp}/aba-generation-test.$$"
mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT INT TERM

REPO_ROOT="$(unset CDPATH; cd -- "$(dirname "$0")/.." && pwd)"
GUARD_PATH="${ABA_GENERATION_GUARD_PATH:-$REPO_ROOT/bin/generation_guard.sh}"

AFWALL_CHAIN_MAIN=afwall
AFWALL_PACKAGE=dev.ukanth.ufirewall.donate
AFW_PKG=dev.ukanth.ufirewall.donate
STATE_DIR="$TMP/state"
mkdir -p "$STATE_DIR"
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
_checksum_lines() { printf '%s\n' "$1" | cksum | awk '{print $1}'; }
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
. "$GUARD_PATH"

pass() { printf 'ok - %s\n' "$1"; }
fail() { printf 'not ok - %s\n' "$1"; FAIL=$((FAIL + 1)); }
assert_true() { _name="$1"; shift; if "$@"; then pass "$_name"; else fail "$_name"; fi; }
assert_false() { _name="$1"; shift; if "$@"; then fail "$_name"; else pass "$_name"; fi; }
assert_ne() { _name="$1" _a="$2" _b="$3"; [ "$_a" != "$_b" ] && pass "$_name" || fail "$_name"; }
assert_eq() {
  _name="$1" _a="$2" _b="$3"
  if [ "$_a" = "$_b" ]; then
    pass "$_name"
  else
    printf '  expected=%s actual=%s\n' "$_b" "$_a"
    fail "$_name"
  fi
}

SNAP_ALLOW_FIRST='-P OUTPUT ACCEPT
-N afwall
-N afwall-reject
-A OUTPUT -j afwall
-A afwall -j RETURN
-A afwall -j afwall-reject
-A afwall-reject -j DROP'
SNAP_REJECT_FIRST='-P OUTPUT ACCEPT
-N afwall
-N afwall-reject
-A OUTPUT -j afwall
-A afwall -j afwall-reject
-A afwall -j RETURN
-A afwall-reject -j DROP'
SNAP_HOOK_SECOND='-P OUTPUT ACCEPT
-N afwall
-N afwall-reject
-A OUTPUT -m owner --uid-owner 1000 -j RETURN
-A OUTPUT -j afwall
-A afwall -j RETURN
-A afwall -j afwall-reject
-A afwall-reject -j DROP'
SNAP_UNDEFINED='-P OUTPUT ACCEPT
-N afwall
-A OUTPUT -j afwall
-A afwall -j afwall-missing'

FP1="$(afwall_rooted_graph_fingerprint_from_snapshot "$SNAP_ALLOW_FIRST")"
FP2="$(afwall_rooted_graph_fingerprint_from_snapshot "$SNAP_REJECT_FIRST")"
FP3="$(afwall_rooted_graph_fingerprint_from_snapshot "$SNAP_HOOK_SECOND")"
assert_ne 'rule-order changes alter rooted fingerprint' "$FP1" "$FP2"
assert_ne 'OUTPUT hook ordinal changes alter rooted fingerprint' "$FP1" "$FP3"
assert_false 'undefined reachable AFWall target is rejected' rooted_afwall_graph_from_snapshot "$SNAP_UNDEFINED"
assert_true 'closed rooted graph is non-trivial' afwall_graph_nontrivial_from_snapshot "$SNAP_ALLOW_FIRST"

PREF_DIR="$TMP/shared_prefs"
mkdir -p "$PREF_DIR"
cat > "$PREF_DIR/a_fix_only.xml" <<'EOF_PREF_A'
<map>
  <boolean name="fixLeak" value="true" />
</map>
EOF_PREF_A
cat > "$PREF_DIR/z_startup.xml" <<'EOF_PREF_Z'
<map>
  <boolean name="addDelayStart" value="true" />
  <int name="customDelay" value="15" />
  <boolean name="fixLeak" value="true" />
  <string name="initPath">/data/adb/service.d/</string>
</map>
EOF_PREF_Z
_aba_pref_dirs() { printf '%s\n' "$PREF_DIR"; }
ABA_GEN_PREFS_READY=0
ABA_GEN_PREFS_LAST_CHECK_TS=0
assert_true 'startup preferences are readable' _aba_load_startup_prefs
assert_eq 'delay-enabled preference parsed' "$ABA_GEN_DELAY_ENABLED" '1'
assert_eq 'custom delay preference parsed' "$ABA_GEN_DELAY_SECS" '15'
assert_eq 'startup-delay file is preferred over fixLeak-only file' "$ABA_GEN_PREFS_FILE" "$PREF_DIR/z_startup.xml"

_aba_note_process_epoch() { [ "$ABA_GEN_PROCESS_FIRST_TS" != 0 ] || ABA_GEN_PROCESS_FIRST_TS="$NOW_FAKE"; return 0; }
_aba_load_startup_prefs() { ABA_GEN_PREFS_READY=1; return 0; }

ABA_GEN_PROCESS_FIRST_TS=100
ABA_GEN_PREFS_READY=1
ABA_GEN_DELAY_ENABLED=1
ABA_GEN_DELAY_SECS=5
AFWALL_DELAY_GRACE_SECS=4
ABA_GEN_GATE_OPEN_TS=0
NOW_FAKE=108
assert_false 'delayed generation remains gated before delay plus grace' afwall_graph_present_from_snapshot "$SNAP_ALLOW_FIRST"
NOW_FAKE=109
assert_true 'generation gate opens at delay plus grace deadline' afwall_graph_present_from_snapshot "$SNAP_ALLOW_FIRST"
assert_eq 'gate open timestamp recorded' "$ABA_GEN_GATE_OPEN_TS" '109'

ABA_GEN_DELAY_ENABLED=0
ABA_GEN_GATE_OPEN_TS=0
NOW_FAKE=110
assert_true 'non-delayed generation opens after process and preference proof' afwall_graph_present_from_snapshot "$SNAP_ALLOW_FIRST"

INTEGRATION_MODE=prefer_afwall
assert_true 'prefer_afwall still installs authoritative module blackout' should_install_block
assert_eq 'prefer_afwall records guarded integration mode' "$(cat "$STATE_DIR/integration_mode")" 'prefer_afwall_guarded'
INTEGRATION_MODE=off
assert_false 'off remains the only mode that skips module blackout' should_install_block

if [ "$FAIL" -ne 0 ]; then
  printf '%s test(s) failed\n' "$FAIL" >&2
  exit 1
fi
printf 'all generation guard tests passed\n'
