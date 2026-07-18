#!/usr/bin/env sh
# shellcheck disable=SC2218 # sourced recovery helpers are redefined only inside the final order fixture
set -eu
ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"; MODDIR="$ROOT"; DEBUG=0
. "$ROOT/bin/common.sh"
# shellcheck source=../bin/lowlevel.sh
. "$ROOT/bin/lowlevel.sh"
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
