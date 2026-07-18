from pathlib import Path
import re, sys, base64
root=Path(sys.argv[1] if len(sys.argv)>1 else '.')

p=root/'bin/lowlevel.sh'; t=p.read_text()
t,n=re.subn(r'(IFS= read -r ([A-Za-z_][A-Za-z0-9_]*) < "[^"]+/operstate" 2>/dev/null) \|\| \2=""',r'\1 || :',t)
if n!=8: raise SystemExit(f'expected 8 operstate fixes, got {n}')
s=t.index('lowlevel_restore_interfaces() {'); e=t.index('\n# ── Wi-Fi control',s)
block=r'''# Restore one module-owned interface marker atomically. Successful entries are
# removed; failed entries remain so later recovery can retry them.
_ll_restore_interface_marker() {
  local ip_cmd="$1" marker="$2" group="$3" prefix="$4"
  local file="${LL_STATE_DIR}/${marker}" retry="${LL_STATE_DIR}/.${marker}.retry.$$"
  local iface failed=0
  [ -f "$file" ] || return 0
  : > "$retry" 2>/dev/null || {
    log_on_transition "${group}_error" "retry_file:$marker" "$prefix: WARN: cannot create retry state for $marker; original marker preserved"
    return 1
  }
  while IFS= read -r iface || [ -n "$iface" ]; do
    [ -n "$iface" ] || continue
    if "$ip_cmd" link set "$iface" up 2>/dev/null; then
      log_on_transition "$group" "up:${marker}:${iface}" "$prefix: interface $iface brought UP (source=$marker)"
    else
      log_on_transition "$group" "fail:${marker}:${iface}" "$prefix: WARN: could not restore interface $iface (source=$marker); retained for retry"
      printf '%s\n' "$iface" >> "$retry" 2>/dev/null || {
        rm -f "$retry" 2>/dev/null || true
        log_on_transition "${group}_error" "retry_write:$marker" "$prefix: WARN: cannot record failed interface $iface; original marker preserved"
        return 1
      }
      failed=1
    fi
  done < "$file"
  if [ "$failed" = 1 ]; then
    mv -f "$retry" "$file" 2>/dev/null || {
      rm -f "$retry" 2>/dev/null || true
      log_on_transition "${group}_error" "retry_replace:$marker" "$prefix: WARN: cannot replace retry state for $marker; original marker preserved"
      return 1
    }
    return 1
  fi
  rm -f "$retry" "$file" 2>/dev/null || true
  return 0
}

_ll_restore_recorded_interfaces() {
  local context="${1:-normal}" marker found=0 pending=0
  local ip_cmd group error_group prefix
  for marker in ifaces_down ifaces_down_early tether_ifaces_down; do
    _ll_state_exists "$marker" && found=1
  done
  [ "$found" = 1 ] || { debug_log "lowlevel_restore_interfaces: no interfaces to restore"; return 0; }
  case "$context" in
    emergency) group=emergency_iface; error_group=emergency_iface_error; prefix='lowlevel: emergency' ;;
    *) group=iface_restore; error_group=iface_restore_error; prefix=lowlevel ;;
  esac
  ip_cmd="$(_find_cmd ip 2>/dev/null)" || ip_cmd=""
  [ -n "$ip_cmd" ] || {
    log_on_transition "$error_group" no_ip "$prefix: WARN: ip command not found; interface markers retained for retry"
    return 1
  }
  for marker in ifaces_down ifaces_down_early tether_ifaces_down; do
    _ll_restore_interface_marker "$ip_cmd" "$marker" "$group" "$prefix" || pending=1
  done
  [ "$pending" = 0 ]
}

lowlevel_restore_interfaces() { _ll_restore_recorded_interfaces normal || true; }
'''
t=t[:s]+block+t[e:]
s=t.index('_ll_emergency_restore_interfaces() {'); e=t.index('\n_ll_emergency_restore_wifi() {',s)
t=t[:s]+'''_ll_emergency_restore_interfaces() {
  _ll_restore_recorded_interfaces emergency || true
}
'''+t[e:]
for needle in ['    _ll_state_rm "tether_ifaces_down"\n','  _ll_state_rm "tether_ifaces_down"\n']:
    t=t.replace(needle,'')
p.write_text(t)

p=root/'common/functions.sh'; t=p.read_text()
old='''if [ -f $INFO ]; then
  while IFS= read -r LINE; do
    case "$LINE" in
      *~) continue ;;
    esac
    if [ -f "$LINE~" ]; then
      mv -f $LINE~ $LINE
    else
      rm -f $LINE
      while true; do
        LINE=$(dirname $LINE)
        [ "$(ls -A $LINE 2>/dev/null)" ] && break 1 || rm -rf $LINE
      done
    fi
  done < $INFO
  rm -f $INFO
fi
'''
new='''if [ -f "$INFO" ]; then
  while IFS= read -r LINE || [ -n "$LINE" ]; do
    case "$LINE" in
      *~) continue ;;
    esac
    if [ -f "$LINE~" ]; then
      mv -f -- "$LINE~" "$LINE"
    else
      rm -f -- "$LINE"
      while true; do
        LINE="$(dirname -- "$LINE")"
        [ "$(ls -A "$LINE" 2>/dev/null)" ] && break 1 || rm -rf -- "$LINE"
      done
    fi
  done < "$INFO"
  rm -f -- "$INFO"
fi
'''
if old not in t: raise SystemExit('functions loop missing')
p.write_text(t.replace(old,new,1))

p=root/'service.sh'; t=p.read_text().replace('— wifi ready; attempting restore','— Wi-Fi ready; attempting restore'); p.write_text(t)

(root/'tests/test-common-helpers.sh').write_text(r'''#!/usr/bin/env sh
set -u
FAIL=0
TMP="${TMPDIR:-/tmp}/aba-common-helper-test.$$"; mkdir -p "$TMP"; trap 'rm -rf "$TMP"' EXIT INT TERM
ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"; MODDIR="$ROOT"; DEBUG=0
. "$ROOT/bin/common.sh"
pass(){ echo "ok - $1"; }; fail(){ echo "not ok - $1"; FAIL=$((FAIL+1)); }
assert_true(){ n="$1"; shift; if "$@"; then pass "$n"; else fail "$n"; fi; }
assert_false(){ n="$1"; shift; if "$@"; then fail "$n"; else pass "$n"; fi; }
assert_false 'empty structural graph fails' _afwall_base_graph_structurally_present_from_snapshot ''
assert_false 'missing chain fails' _afwall_base_graph_structurally_present_from_snapshot '-A OUTPUT -j afwall'
assert_false 'missing hook fails' _afwall_base_graph_structurally_present_from_snapshot '-N afwall'
VALID='-N afwall
-A OUTPUT -j afwall
-A afwall -j RETURN'
assert_true 'valid graph passes structural helper' _afwall_base_graph_structurally_present_from_snapshot "$VALID"
assert_true 'public graph helper delegates without recursion' afwall_graph_present_from_snapshot "$VALID"
printf '\0' > "$TMP/probe"
# shellcheck disable=SC3045
if (IFS= read -r -d '' x < "$TMP/probe") 2>/dev/null; then
  printf 'dev.ukanth.ufirewall.donate:root\0--worker\0' > "$TMP/cmdline"
  assert_true 'cmdline helper matches subprocess' _afwall_cmdline_matches_pkg "$TMP/cmdline" dev.ukanth.ufirewall.donate
else
  pass 'NUL helper skipped outside BusyBox ash'
fi
has_cmd(){ case "$1" in pidof|ps) return 0;; *) return 1;; esac; }; pidof(){ return 1; }
ps(){ echo 'u0 1 0 S dev.ukanth.ufirewall.donate:root'; }
assert_true 'ps finds subprocess' afwall_process_present dev.ukanth.ufirewall.donate
ps(){ echo 'u0 1 0 S com.example'; }
assert_false 'usable ps miss is authoritative' afwall_process_present dev.ukanth.ufirewall.donate
[ "$FAIL" = 0 ] || exit 1
echo 'All common helper tests passed.'
''')

(root/'tools/recovery-tests.sh').write_text(r'''#!/usr/bin/env sh
set -eu
ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"; MODDIR="$ROOT"; DEBUG=0
. "$ROOT/bin/common.sh"
TMP="${TMPDIR:-/tmp}/aba-recovery-test.$$"; trap 'rm -rf "$TMP"' EXIT INT TERM
LL_STATE_DIR="$TMP/ll"; mkdir -p "$LL_STATE_DIR"; log_on_transition(){ :; }; debug_log(){ :; }
fail(){ echo "FAIL: $*" >&2; exit 1; }; pass(){ echo "ok - $*"; }
mock_ip(){ [ "$1" = link ] && [ "$2" = set ] && [ "$4" = up ] || return 1; [ "$3" != fail0 ]; }
_find_cmd(){ [ "$1" = ip ] && { printf mock_ip; return 0; }; return 1; }
printf 'wlan0\nfail0' > "$LL_STATE_DIR/ifaces_down"; printf early0 > "$LL_STATE_DIR/ifaces_down_early"; printf rndis0 > "$LL_STATE_DIR/tether_ifaces_down"
_ll_restore_recorded_interfaces emergency || :
[ "$(cat "$LL_STATE_DIR/ifaces_down")" = fail0 ] || fail 'failed interface not retained alone'
[ ! -e "$LL_STATE_DIR/ifaces_down_early" ] || fail 'early success not cleared'
[ ! -e "$LL_STATE_DIR/tether_ifaces_down" ] || fail 'tether success not cleared'; pass 'all marker classes and retry retention'
mock_ip(){ return 0; }; _ll_restore_recorded_interfaces emergency || fail retry; [ ! -e "$LL_STATE_DIR/ifaces_down" ] || fail 'retry marker not cleared'; pass 'retry succeeds'
printf wlan0 > "$LL_STATE_DIR/ifaces_down"; _find_cmd(){ return 1; }; _ll_restore_recorded_interfaces emergency || :; [ -e "$LL_STATE_DIR/ifaces_down" ] || fail 'missing ip discarded marker'; pass 'missing ip preserves marker'
printf rndis0 > "$LL_STATE_DIR/tether_ifaces_down"; touch "$LL_STATE_DIR/tether_was_active"; _ll_emergency_tether_note; [ -e "$LL_STATE_DIR/tether_ifaces_down" ] || fail 'tether note erased retry'; pass 'tether note preserves interface retry'
ORDER=''; _ll_emergency_restore_interfaces(){ ORDER="$ORDER interfaces"; }; lowlevel_vpn_lockdown_release_if_needed(){ ORDER="$ORDER vpn"; }; _ll_emergency_restore_wifi(){ ORDER="$ORDER wifi"; }; _ll_emergency_restore_mobile(){ ORDER="$ORDER mobile"; }; _ll_emergency_restore_bt(){ ORDER="$ORDER bt"; }; _ll_emergency_tether_note(){ ORDER="$ORDER tether"; }; _ll_state_rm(){ :; }; lowlevel_emergency_restore
[ "$ORDER" = ' interfaces vpn wifi mobile bt tether' ] || fail "order=$ORDER"; pass 'emergency recovery order'
echo 'All recovery tests passed.'
''')

p=root/'tools/timeline-sim-tests.sh'; text=p.read_text()
start=text.find('\ntest_transport_readiness() {')
end=text.find('\necho "All timeline simulation tests passed."', start)
if start < 0 or end < 0: raise SystemExit('timeline dead-test block not found')
p.write_text(text[:start] + text[end:])

transport='''#!/usr/bin/env sh
set -eu
ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"
MODDIR="$ROOT"
. "$ROOT/bin/common.sh"
TMP="${TMPDIR:-/tmp}/aba-transport-test.$$"
mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT INT TERM
fail(){ echo "FAIL: $*" >&2; exit 1; }
pass(){ echo "ok - $*"; }
extract(){
  name="$1"; next="$2"; out="$TMP/$name.sh"
  sed -n "/^  ${name}() {$/,/^  ${next}() {$/p" "$ROOT/service.sh" | sed '$d;s/^  //' > "$out"
  grep -q "^${name}() {$" "$out" || fail "extract $name"
  . "$out"
}
extract _check_wifi_transport_readiness _check_mobile_transport_readiness
extract _check_mobile_transport_readiness _check_transport_readiness
out="$TMP/_check_transport_readiness.sh"
sed -n '/^  _check_transport_readiness() {$/,/^  # ── Main polling loop/p' "$ROOT/service.sh" | sed '$d;s/^  //' > "$out"
grep -q '^_check_transport_readiness() {$' "$out" || fail 'extract _check_transport_readiness'
. "$out"
log_on_transition(){ :; }
debug_log(){ :; }
MWP=0; MWR=0; MWF=A; MWC=0; WRC=0
MMP=0; MMR=0; MMF=A; MMC=0; MRC=0
afwall_prefix_present_from_snapshot(){ case "$2" in "$AFWALL_CHAIN_WIFI") [ "$MWP" = 1 ];; "$AFWALL_CHAIN_MOBILE") [ "$MMP" = 1 ];; *) return 1;; esac; }
afwall_prefix_reachable_from_snapshot(){ case "$2" in "$AFWALL_CHAIN_WIFI") [ "$MWR" = 1 ];; "$AFWALL_CHAIN_MOBILE") [ "$MMR" = 1 ];; *) return 1;; esac; }
afwall_transport_fingerprint_rooted_from_snapshot(){ case "$2" in "$AFWALL_CHAIN_WIFI") printf '%s' "$MWF";; "$AFWALL_CHAIN_MOBILE") printf '%s' "$MMF";; *) return 1;; esac; }
lowlevel_restore_wifi_if_allowed(){ WRC=$((WRC+1)); [ "$MWC" = 0 ]; }
lowlevel_restore_mobile_data_if_allowed(){ MRC=$((MRC+1)); [ "$MMC" = 0 ]; }
reset(){
  wifi_done=0; mobile_done=0; wifi_pending_since=0; mobile_pending_since=0
  NOW=100; v4_snap=v4; v6_snap=v6; _boot_complete_now=0; v4_released=0; v6_released=0
  AFWALL_CHAIN_WIFI=afwall-wifi; AFWALL_CHAIN_MOBILE=afwall-3g
  TRANSPORT_SETTLE_SECS_EFFECTIVE=2; TRANSPORT_SETTLE_SECS_POST_BOOT_EFFECTIVE=1
  TRANSPORT_ABSENCE_STABLE_SECS=5; TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=2
  TRANSPORT_ORPHAN_STABLE_SECS=5; TRANSPORT_INCONCLUSIVE_SECS=10; TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=4
  wifi_absent_since=0; mobile_absent_since=0; wifi_last_fp=''; mobile_last_fp=''
  wifi_fp_stable_since=0; mobile_fp_stable_since=0
  MWP=0; MWR=0; MWF=A; MWC=0; WRC=0; MMP=0; MMR=0; MMF=A; MMC=0; MRC=0
}
reset; _check_wifi_transport_readiness; NOW=105; _check_wifi_transport_readiness; [ "$wifi_done:$WRC" = 1:1 ] || fail 'absent fallback'; pass 'absent subtree fallback'
reset; MWP=1; _check_wifi_transport_readiness; NOW=105; _check_wifi_transport_readiness; [ "$wifi_done" = 1 ] || fail 'unreachable fallback'; pass 'unreachable subtree fallback'
reset; MWP=1; MWR=1; _check_wifi_transport_readiness; NOW=101; MWF=B; _check_wifi_transport_readiness; [ "$wifi_fp_stable_since" = 101 ] || fail drift; NOW=103; _check_wifi_transport_readiness; [ "$wifi_done" = 1 ] || fail stable; pass 'fingerprint drift and stable restore'
reset; MWP=1; MWR=1; MWC=1; _check_wifi_transport_readiness; NOW=102; _check_wifi_transport_readiness; [ "$wifi_done:$WRC" = 0:1 ] || fail 'failed restore'; MWC=0; NOW=103; _check_wifi_transport_readiness; [ "$wifi_done:$WRC" = 1:2 ] || fail retry; pass 'failed restore retries'
reset; _boot_complete_now=1; _check_wifi_transport_readiness; NOW=102; _check_wifi_transport_readiness; [ "$wifi_done" = 1 ] || fail postboot; pass 'post-boot threshold'
reset; TRANSPORT_ABSENCE_STABLE_SECS=99; TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=99; wifi_pending_since=100; NOW=110; _check_wifi_transport_readiness; [ "$wifi_done" = 1 ] || fail inconclusive; pass 'inconclusive fallback'
reset; wifi_done=1; MMP=1; MMR=1; _check_transport_readiness; NOW=102; _check_transport_readiness; [ "$wifi_done:$mobile_done" = 1:1 ] || fail independent; pass 'independent mobile completion'
echo 'All transport readiness tests passed.'
'''
(root/'tools/transport-readiness-tests.sh').write_text(transport)
for f in root/'tests/test-common-helpers.sh', root/'tools/recovery-tests.sh', root/'tools/transport-readiness-tests.sh': f.chmod(0o755)
print('hardening applied')
