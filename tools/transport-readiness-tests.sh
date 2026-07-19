#!/usr/bin/env sh
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
