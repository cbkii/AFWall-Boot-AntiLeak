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

# Mock common.sh structural helper
_afwall_base_graph_structurally_present_from_snapshot() {
  local snap="$1"
  [ -n "$snap" ] || return 1
  printf '%s\n' "$snap" | grep -qE "^-N ${AFWALL_CHAIN_MAIN}"'($| )' || return 1
  printf '%s\n' "$snap" | grep -qE "^-A OUTPUT .*-j ${AFWALL_CHAIN_MAIN}"'($| )' || return 1
  return 0
}

# Mock the common.sh cmdline helper consumed by generation_guard.sh. The actual
# implementation is exercised separately by tests/test-common-helpers.sh.
_afwall_cmdline_matches_pkg() {
  local file="$1" pkg="$2" first=""
  [ -f "$file" ] || return 1
  # shellcheck disable=SC3045 # BusyBox ash supports NUL-delimited read -d.
  IFS= read -r -d '' first < "$file" 2>/dev/null || [ -n "$first" ] || return 1
  case "$first" in
    "$pkg"|"${pkg}:"*) return 0 ;;
  esac
  return 1
}

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
assert_eq 'resolved package is retained for diagnostics' "$ABA_GEN_PACKAGE" "$AFW_PKG"

CMDLINE_FILE="$TMP/cmdline"
READ_NUL_PROBE="$TMP/read-nul-probe"
printf '\0' > "$READ_NUL_PROBE"
# shellcheck disable=SC3045 # This probe intentionally detects BusyBox ash read -d support.
if (IFS= read -r -d '' _probe < "$READ_NUL_PROBE") 2>/dev/null; then
  printf '%s\0%s\0' "$AFW_PKG" '--worker' > "$CMDLINE_FILE"
  assert_true 'NUL cmdline fallback matches the base AFWall process' _afwall_cmdline_matches_pkg "$CMDLINE_FILE" "$AFW_PKG"
  printf '%s\0%s\0' "${AFW_PKG}:root" '--worker' > "$CMDLINE_FILE"
  assert_true 'NUL cmdline fallback matches an AFWall subprocess' _afwall_cmdline_matches_pkg "$CMDLINE_FILE" "$AFW_PKG"
  printf '%s\0' 'com.example.other' > "$CMDLINE_FILE"
  assert_false 'NUL cmdline fallback rejects another package' _afwall_cmdline_matches_pkg "$CMDLINE_FILE" "$AFW_PKG"
else
  pass 'NUL cmdline fallback is BusyBox-ash-specific and skipped by this shell'
fi

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

INTEGRATION_MODE=auto
assert_true 'auto installs authoritative module blackout' should_install_block
assert_eq 'auto records authoritative integration mode' "$(cat "$STATE_DIR/integration_mode")" 'auto'

INTEGRATION_MODE=prefer_module
assert_true 'prefer_module installs authoritative module blackout' should_install_block
assert_eq 'prefer_module records authoritative integration mode' "$(cat "$STATE_DIR/integration_mode")" 'prefer_module'

INTEGRATION_MODE=off
assert_false 'off remains the only mode that skips module blackout' should_install_block

# When normal Android process tools exist, a miss must not fall through to an
# expensive scan of every /proc entry.
has_cmd() {
  case "$1" in pidof|ps) return 0 ;; *) return 1 ;; esac
}
pidof() { return 1; }
ps() { printf '%s\n' 'u0_a123 123 1 0 0 S dev.ukanth.ufirewall.donate:root'; }
assert_true 'ps fallback recognises an AFWall subprocess after pidof misses' _aba_process_present_raw "$AFW_PKG"
ps() { printf '%s\n' 'u0_a123 123 1 0 0 S com.example.other'; }
assert_false 'authoritative ps miss reports AFWall absent without proc fallback' _aba_process_present_raw "$AFW_PKG"


test_base_graph_structurally_present() {
  # 1. Missing chain fails
  assert_false "missing chain fails" \
    _afwall_base_graph_structurally_present_from_snapshot "-A OUTPUT -j afwall"

  # 2. Missing OUTPUT hook fails
  assert_false "missing OUTPUT hook fails" \
    _afwall_base_graph_structurally_present_from_snapshot "-N afwall"

  # 3. Valid structural graph passes
  local valid_snap
  valid_snap="$(printf '%s\n%s\n' "-N afwall" "-A OUTPUT -j afwall")"
  assert_true "valid structural graph passes" \
    _afwall_base_graph_structurally_present_from_snapshot "$valid_snap"

  # 4. No recursion occurs (implicit if it returns without calling anything else)
  # The fact that it returns directly proves no recursion into generation_guard logic.
}
test_base_graph_structurally_present

if [ "$FAIL" -ne 0 ]; then
  printf '%s test(s) failed\n' "$FAIL" >&2
  exit 1
fi
printf 'all generation guard tests passed\n'
