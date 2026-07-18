from pathlib import Path

common = Path("bin/common.sh")
text = common.read_text()
start = text.index("afwall_process_present() {")
end = text.index("\n# ── Integration mode", start)
replacement = r'''_afwall_proc_matches_pkg() {
  local pkg="$1" proc_root="${2:-/proc}" f
  for f in "$proc_root"/[0-9]*/cmdline; do
    [ -f "$f" ] || continue
    _afwall_cmdline_matches_pkg "$f" "$pkg" && return 0
  done
  return 1
}

afwall_process_present() {
  local pkg="$1" esc_pkg ps_output="" ps_usable=0
  [ -n "$pkg" ] || return 1

  # Method 1: pidof
  if has_cmd pidof && pidof "$pkg" >/dev/null 2>&1; then
    return 0
  fi

  # Method 2: ps. A successful listing with no match is authoritative. If both
  # supported forms fail, continue to the /proc fallback instead of confusing
  # command presence with usable output.
  esc_pkg="$(printf '%s' "$pkg" | sed 's/\./\\./g')"
  if has_cmd ps; then
    if ps_output="$(ps -A 2>/dev/null)"; then
      ps_usable=1
      printf '%s\n' "$ps_output" | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
    fi
    if ps_output="$(ps 2>/dev/null)"; then
      ps_usable=1
      printf '%s\n' "$ps_output" | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
    fi
    [ "$ps_usable" = 1 ] && return 1
  fi

  # Method 3: /proc/*/cmdline — last resort when no usable ps listing exists.
  _afwall_proc_matches_pkg "$pkg" /proc
}
'''
common.write_text(text[:start] + replacement + text[end:])

test = Path("tests/test-common-helpers.sh")
text = test.read_text()
anchor = """ps(){ echo 'u0 1 0 S com.example'; }
assert_false 'usable ps miss is authoritative' afwall_process_present dev.ukanth.ufirewall.donate
"""
addition = anchor + """ps(){ return 1; }
PROC_FALLBACK_CALLED=0
_afwall_proc_matches_pkg(){ PROC_FALLBACK_CALLED=1; return 0; }
assert_true 'failed ps forms fall back to proc' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 1 ] && pass 'proc fallback was invoked after unusable ps' || fail 'proc fallback was not invoked after unusable ps'
"""
if anchor not in text:
    raise SystemExit("common helper ps test block changed unexpectedly")
test.write_text(text.replace(anchor, addition, 1))
