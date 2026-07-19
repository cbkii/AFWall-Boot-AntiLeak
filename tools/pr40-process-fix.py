#!/usr/bin/env python3
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def replace_once(path: Path, old: str, new: str) -> None:
    text = path.read_text(encoding="utf-8")
    if old not in text:
        if new in text:
            return
        raise SystemExit(f"expected block not found in {path}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")


common_old = '''afwall_process_present() {
  local pkg="$1" esc_pkg ps_output="" ps_usable=0
  [ -n "$pkg" ] || return 1

  # Method 1: pidof
  if has_cmd pidof && pidof "$pkg" >/dev/null 2>&1; then
    return 0
  fi

  # Method 2: ps. A successful listing with no match is authoritative. If both
  # supported forms fail, continue to the /proc fallback instead of confusing
  # command presence with usable output.
  esc_pkg="$(printf '%s' "$pkg" | sed 's/\\./\\\\./g')"
  if has_cmd ps; then
    if ps_output="$(ps -A 2>/dev/null)"; then
      ps_usable=1
      printf '%s\\n' "$ps_output" | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
    fi
    if ps_output="$(ps 2>/dev/null)"; then
      ps_usable=1
      printf '%s\\n' "$ps_output" | grep -qE "[[:space:]]${esc_pkg}(:[[:alnum:]_]+)?$" && return 0
    fi
    [ "$ps_usable" = 1 ] && return 1
  fi

  # Method 3: /proc/*/cmdline — last resort when no usable ps listing exists.
  _afwall_proc_matches_pkg "$pkg" /proc
}
'''
common_new = '''_afwall_ps_listing_usable() {
  local output="$1"
  [ -n "$output" ] || return 1
  # A real process row contains a numeric PID field. Empty or header-only output
  # is not authoritative because restricted/variant ps implementations may exit
  # successfully without exposing process data.
  printf '%s\\n' "$output" | grep -qE '(^|[[:space:]])[0-9]+[[:space:]]'
}

afwall_process_present() {
  local pkg="$1" esc_pkg ps_output=""
  [ -n "$pkg" ] || return 1

  # Method 1: pidof
  if has_cmd pidof && pidof "$pkg" >/dev/null 2>&1; then
    return 0
  fi

  # Method 2: ps. A structurally usable listing with no match is authoritative
  # and avoids a full /proc scan on every normal poll. Empty, header-only,
  # failed, or otherwise unusable output falls through to the next method.
  esc_pkg="$(printf '%s' "$pkg" | sed 's/\\./\\\\./g')"
  if has_cmd ps; then
    if ps_output="$(ps -A 2>/dev/null)"; then
      printf '%s\\n' "$ps_output" | grep -qE "(^|[[:space:]])${esc_pkg}(:[^[:space:]]+)?$" && return 0
      _afwall_ps_listing_usable "$ps_output" && return 1
    fi
    if ps_output="$(ps 2>/dev/null)"; then
      printf '%s\\n' "$ps_output" | grep -qE "(^|[[:space:]])${esc_pkg}(:[^[:space:]]+)?$" && return 0
      _afwall_ps_listing_usable "$ps_output" && return 1
    fi
  fi

  # Method 3: /proc/*/cmdline — last resort when no usable ps listing exists.
  _afwall_proc_matches_pkg "$pkg" /proc
}
'''
replace_once(ROOT / "bin/common.sh", common_old, common_new)

guard_old = '''_aba_process_present_raw() {
  local pkg="$1" esc f
  [ -n "$pkg" ] || return 1

  if has_cmd pidof; then
    pidof "$pkg" >/dev/null 2>&1 && return 0
  fi

  if has_cmd ps; then
    esc="$(printf '%s' "$pkg" | sed 's/\\./\\\\./g')"
    ps -A 2>/dev/null | grep -qE "[[:space:]]${esc}(:[[:alnum:]_]+)?$" && return 0
    ps 2>/dev/null | grep -qE "[[:space:]]${esc}(:[[:alnum:]_]+)?$" && return 0
    # A usable ps result is authoritative. Do not scan every /proc entry on each
    # poll merely because the target process is absent.
    return 1
  fi

  # Last-resort fallback for restricted/minimal environments with neither pidof
  # nor ps. No external process is spawned per PID.
  for f in /proc/[0-9]*/cmdline; do
    _afwall_cmdline_matches_pkg "$f" "$pkg" && return 0
  done
  return 1
}
'''
guard_new = '''_aba_ps_listing_usable() {
  local output="$1"
  [ -n "$output" ] || return 1
  printf '%s\\n' "$output" | grep -qE '(^|[[:space:]])[0-9]+[[:space:]]'
}

_aba_process_present_raw() {
  local pkg="$1" esc ps_output="" f
  [ -n "$pkg" ] || return 1

  if has_cmd pidof; then
    pidof "$pkg" >/dev/null 2>&1 && return 0
  fi

  # Keep normal polls cheap: a structurally usable ps listing with no match is
  # authoritative. Empty, header-only, failed, or variant output falls back to
  # the built-in NUL cmdline reader instead of producing a false negative.
  esc="$(printf '%s' "$pkg" | sed 's/\\./\\\\./g')"
  if has_cmd ps; then
    if ps_output="$(ps -A 2>/dev/null)"; then
      printf '%s\\n' "$ps_output" | grep -qE "(^|[[:space:]])${esc}(:[^[:space:]]+)?$" && return 0
      _aba_ps_listing_usable "$ps_output" && return 1
    fi
    if ps_output="$(ps 2>/dev/null)"; then
      printf '%s\\n' "$ps_output" | grep -qE "(^|[[:space:]])${esc}(:[^[:space:]]+)?$" && return 0
      _aba_ps_listing_usable "$ps_output" && return 1
    fi
  fi

  for f in /proc/[0-9]*/cmdline; do
    _afwall_cmdline_matches_pkg "$f" "$pkg" && return 0
  done
  return 1
}
'''
replace_once(ROOT / "bin/generation_guard.sh", guard_old, guard_new)

common_test = ROOT / "tests/test-common-helpers.sh"
test_text = common_test.read_text(encoding="utf-8")
marker = '''has_cmd(){ case "$1" in pidof|ps) return 0;; *) return 1;; esac; }; pidof(){ return 1; }
ps(){ echo 'u0 1 0 S dev.ukanth.ufirewall.donate:root'; }
assert_true 'ps finds subprocess' afwall_process_present dev.ukanth.ufirewall.donate
ps(){ echo 'u0 1 0 S com.example'; }
assert_false 'usable ps miss is authoritative' afwall_process_present dev.ukanth.ufirewall.donate
ps(){ return 1; }
PROC_FALLBACK_CALLED=0
_afwall_proc_matches_pkg(){ PROC_FALLBACK_CALLED=1; return 0; }
assert_true 'failed ps forms fall back to proc' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 1 ] && pass 'proc fallback was invoked after unusable ps' || fail 'proc fallback was not invoked after unusable ps'
'''
replacement = '''has_cmd(){ case "$1" in pidof|ps) return 0;; *) return 1;; esac; }
pidof(){ return 1; }
PROC_FALLBACK_CALLED=0
PROC_FALLBACK_RESULT=1
_afwall_proc_matches_pkg(){ PROC_FALLBACK_CALLED=1; [ "$PROC_FALLBACK_RESULT" = 0 ]; }

ps(){ printf '%s\\n' 'u0 1 0 S dev.ukanth.ufirewall.donate:root'; }
assert_true 'ps finds standard subprocess suffix' afwall_process_present dev.ukanth.ufirewall.donate
ps(){ printf '%s\\n' 'u0 1 0 S dev.ukanth.ufirewall.donate:isolated-process-1'; }
assert_true 'ps accepts non-alphanumeric subprocess suffix' afwall_process_present dev.ukanth.ufirewall.donate

ps(){ printf '%s\\n' 'u0 1 0 S com.example'; }
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

ps(){ printf '%s\\n' 'USER PID PPID VSZ RSS WCHAN ADDR S NAME'; }
PROC_FALLBACK_CALLED=0
PROC_FALLBACK_RESULT=0
assert_true 'header-only ps output falls back to proc' afwall_process_present dev.ukanth.ufirewall.donate
[ "$PROC_FALLBACK_CALLED" = 1 ] && pass 'proc fallback invoked after header-only ps' || fail 'header-only ps did not invoke proc fallback'
'''
if marker not in test_text:
    if replacement not in test_text:
        raise SystemExit("expected common-helper test block not found")
else:
    common_test.write_text(test_text.replace(marker, replacement, 1), encoding="utf-8")
