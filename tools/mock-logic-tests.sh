#!/system/bin/sh
# Lightweight host-side logic tests. These do not require Android; they use
# source/grep-level checks and fake settings shims for installer decisions.
set -eu

SCRIPT_DIR="$(dirname -- "$0")"
ROOT="$(CDPATH='' cd -- "$SCRIPT_DIR/.." && pwd)"
fail() { echo "FAIL: $*" >&2; exit 1; }
pass() { echo "ok - $*"; }

# Syntax sanity for every shell file in the repo.
find "$ROOT" -type f \( -name '*.sh' -o -path '*/common/install.sh' \) | while IFS= read -r f; do
  sh -n "$f" || exit 1
done
pass "shell syntax"

# Static invariants from the readiness-gate implementation.
grep -q 'AFWALL_READY_MIN_POST_UNLOCK_SECS="${AFWALL_READY_MIN_POST_UNLOCK_SECS:-8}"' "$ROOT/service.sh" || fail "service default gate missing"
grep -q 'readiness_gate_open' "$ROOT/service.sh" || fail "readiness gate state missing"
grep -q 'timeout countdown started at readiness gate' "$ROOT/service.sh" || fail "gate-relative timeout log missing"
pass "readiness gate and timeout hooks"

# FORWARD must not be considered present from chain existence alone.
grep -q '^forward_block_present_v4() { forward_block_intact_v4; }' "$ROOT/bin/common.sh" || fail "v4 FORWARD present does not require intact state"
grep -q '^forward_block_present_v6() { forward_block_intact_v6; }' "$ROOT/bin/common.sh" || fail "v6 FORWARD present does not require intact state"
grep -q '_chain_block_intact.*FORWARD\|forward_block_intact_v4' "$ROOT/bin/common.sh" || fail "FORWARD intact helper missing"
pass "FORWARD active-state integrity"

# IPv6 raw loopback fallback/integrity must exist.
grep -q '::1/128' "$ROOT/bin/common.sh" || fail "IPv6 raw loopback fallback missing"
grep -q '_loopback_return_exists' "$ROOT/bin/common.sh" || fail "loopback integrity helper missing"
pass "IPv6 loopback integrity"

# VPN stale-state clear must exist and run before enforcement.
grep -q 'lowlevel_clear_stale_vpn_state' "$ROOT/bin/lowlevel.sh" || fail "stale VPN clear helper missing"
grep -q 'vpn_pre_active_pkg' "$ROOT/bin/lowlevel.sh" || fail "VPN pre-state cleanup missing"
pass "per-boot VPN cleanup"

# Installer always-on VPN auto-config with fake settings command.
TMP="${TMPDIR:-/tmp}/aba-test-$$"
mkdir -p "$TMP/bin"
cat > "$TMP/bin/settings" <<'SH'
#!/bin/sh
[ "$1" = get ] && [ "$2" = secure ] || exit 1
case "$3" in
  always_on_vpn_app) echo com.example.vpn ;;
  always_on_vpn_lockdown) echo 1 ;;
  *) echo null ;;
esac
SH
chmod +x "$TMP/bin/settings"
PATH="$TMP/bin:$PATH"
IC_CONTEXT=runtime
ui_print() { echo "$1"; }
. "$ROOT/bin/installer_config.sh"
ic_apply_defaults
ic_apply_auto_vpn_defaults >/dev/null
[ "$IC_VPN_LOCKDOWN_BOOT_ENFORCE" = 1 ] || fail "always-on VPN did not enable boot lockdown"
[ "$IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE" = 1 ] || fail "always-on VPN did not enable restore handling"
pass "installer always-on VPN auto-enable"

# Explicit config must be preserved.
IC_VPN_LOCKDOWN_BOOT_ENFORCE=0
IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE=0
IC_EXPLICIT_VPN_LOCKDOWN_BOOT_ENFORCE=1
IC_EXPLICIT_VPN_LOCKDOWN_RELEASE_ON_RESTORE=1
ic_apply_auto_vpn_defaults >/dev/null
[ "$IC_VPN_LOCKDOWN_BOOT_ENFORCE" = 0 ] || fail "explicit VPN boot config overwritten"
[ "$IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE" = 0 ] || fail "explicit VPN restore config overwritten"
pass "installer preserves explicit VPN config"

# Wi-Fi/data OFF consistency must enable service toggles and warn via config path.
ic_apply_defaults
IC_LOWLEVEL_WIFI_DATA_OFF=1
IC_LOWLEVEL_MODE=off
ic_apply_wifi_data_off_consistency >/dev/null
[ "$IC_LOWLEVEL_MODE" = safe ] || fail "wifi/data off did not enable lowlevel safe mode"
[ "$IC_LOWLEVEL_USE_WIFI_SERVICE" = 1 ] || fail "wifi/data off did not enable wifi service"
[ "$IC_LOWLEVEL_USE_PHONE_DATA_CMD" = 1 ] || fail "wifi/data off did not enable data service"
pass "Wi-Fi/data OFF consistency"

rm -rf "$TMP"
echo "All mock logic tests passed."
