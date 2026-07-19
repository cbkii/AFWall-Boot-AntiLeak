#!/usr/bin/env sh
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
has_cmd(){ case "$1" in pidof|ps) return 0;; *) return 1;; esac; }
pidof(){ return 1; }
PROC_FALLBACK_CALLED=0
PROC_FALLBACK_RESULT=1
_afwall_proc_matches_pkg(){ PROC_FALLBACK_CALLED=1; [ "$PROC_FALLBACK_RESULT" = 0 ]; }

ps(){ printf '%s\n' 'u0 1 0 S dev.ukanth.ufirewall.donate:root'; }
assert_true 'ps finds standard subprocess suffix' afwall_process_present dev.ukanth.ufirewall.donate
ps(){ printf '%s\n' 'u0 1 0 S dev.ukanth.ufirewall.donate:isolated-process-1'; }
assert_true 'ps accepts non-alphanumeric subprocess suffix' afwall_process_present dev.ukanth.ufirewall.donate

ps(){ printf '%s\n' 'u0 1 0 S com.example'; }
PROC_FALLBACK_CALLED=0
assert_false 'usable ps miss is authoritative' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 0 ] && pass 'usable ps miss avoids proc scan' || fail 'usable ps miss scanned proc'

ps(){ return 1; }
PROC_FALLBACK_CALLED=0
PROC_FALLBACK_RESULT=0
assert_true 'failed ps forms fall back to proc' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 1 ] && pass 'proc fallback invoked after failed ps' || fail 'proc fallback not invoked after failed ps'

ps(){ return 0; }
PROC_FALLBACK_CALLED=0
PROC_FALLBACK_RESULT=0
assert_true 'empty ps output falls back to proc' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 1 ] && pass 'proc fallback invoked after empty ps' || fail 'empty ps did not invoke proc fallback'

ps(){ printf '%s\n' 'USER PID PPID VSZ RSS WCHAN ADDR S NAME'; }
PROC_FALLBACK_CALLED=0
PROC_FALLBACK_RESULT=0
assert_true 'header-only ps output falls back to proc' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 1 ] && pass 'proc fallback invoked after header-only ps' || fail 'header-only ps did not invoke proc fallback'
[ "$FAIL" = 0 ] || exit 1
echo 'All common helper tests passed.'
