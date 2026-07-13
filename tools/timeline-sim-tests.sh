#!/bin/sh
set -eu
fail(){ echo "FAIL: $*" >&2; exit 1; }
ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"
MODDIR="$ROOT"
. "$ROOT/bin/common.sh"
FAST_STABLE_SECS=6; SLOW_STABLE_SECS=6
stable_release_time(){ # args: threshold sequence of fp or -
  threshold="$1"; shift; now=0; last=; since=0
  for fp in "$@"; do
    [ "$fp" = - ] && { last=; since=0; now=$((now+2)); continue; }
    if [ -z "$last" ] || [ "$fp" != "$last" ]; then last="$fp"; since="$now"; fi
    if [ $((now-since)) -ge "$threshold" ]; then echo "$now"; return 0; fi
    now=$((now+2))
  done
  return 1
}
[ "$(stable_release_time 6 A A A A)" = 6 ] || fail "stable AFWall apply did not release at correct window"
[ "$(stable_release_time 6 A B C C C C)" = 10 ] || fail "changing fingerprints did not reset stability"
[ "$(stable_release_time 6 - - A A A A)" = 10 ] || fail "pre-final application state mishandled"
# Independent families: v4 stable immediately, v6 later; v4 must not wait for v6.
v4="$(stable_release_time 6 V4 V4 V4 V4)"; v6="$(stable_release_time 6 - - V6 V6 V6 V6)"
[ "$v4" = 6 ] && [ "$v6" = 10 ] || fail "families are not independently releasable"
# Snapshot graph helpers cover absent/stale transport without gating family fingerprint.
base='-P OUTPUT ACCEPT
-N afwall
-A OUTPUT -j afwall
-A afwall -m owner --uid-owner 1000 -j RETURN'
stale="$base
-N afwall-wifi
-A afwall-wifi -j DROP"
afwall_graph_present_from_snapshot "$base" || fail "base graph absent"
if afwall_prefix_reachable_from_snapshot "$stale" afwall-wifi; then fail "stale transport subtree reached"; fi
[ "$(afwall_rooted_graph_fingerprint_from_snapshot "$base")" = "$(afwall_rooted_graph_fingerprint_from_snapshot "$stale")" ] || fail "stale transport changed family fingerprint"
# Static invariants for VPN/boot/unlock/watchdog behavior.
grep -q 'post-fs-data observes only; no VPN setting writes' "$ROOT/bin/lowlevel.sh" || fail "post-fs-data VPN write guard missing"
grep -q 'DEBUG.*dumpsys' "$ROOT/bin/lowlevel.sh" || fail "dumpsys unlock probes are not debug-gated"
grep -q 'watchdog degraded monitor active' "$ROOT/service.sh" || fail "watchdog degraded low-frequency mode missing"
grep -q 'release verified absent' "$ROOT/service.sh" || fail "release absence verification missing"
echo "All timeline simulation tests passed."
