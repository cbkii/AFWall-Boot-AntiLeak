#!/usr/bin/env sh
# Focused host-side invariants that are not covered by the dedicated test files.
set -eu

ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"
fail() { printf 'FAIL: %s\n' "$*" >&2; exit 1; }
pass() { printf 'ok - %s\n' "$*"; }

python3 "$ROOT/tools/sync-version-metadata.py" --check >/dev/null
pass "active release metadata consistency"

# Verify the metadata updater changes only the active version-bearing surfaces.
SYNC_TMP="${TMPDIR:-/tmp}/aba-sync-test-$$"
rm -rf "$SYNC_TMP"
mkdir -p "$SYNC_TMP"
trap 'rm -rf "$SYNC_TMP"' EXIT INT TERM
(
  cd "$ROOT"
  tar --exclude='.git' --exclude='dist' --exclude='tools/__pycache__' -cf - .
) | (cd "$SYNC_TMP" && tar -xf -)
printf '\nUnrelated external reference v9.9.9 must remain unchanged.\n' >> "$SYNC_TMP/README.md"
python3 "$SYNC_TMP/tools/sync-version-metadata.py" v5.1.1 50101
python3 "$SYNC_TMP/tools/sync-version-metadata.py" --check >/dev/null
grep -q '^version=v5.1.1$' "$SYNC_TMP/module.prop" || fail "metadata updater did not change module.prop version"
grep -q '^versionCode=50101$' "$SYNC_TMP/module.prop" || fail "metadata updater did not change module.prop versionCode"
grep -q 'Unrelated external reference v9.9.9 must remain unchanged' "$SYNC_TMP/README.md" || fail "metadata updater rewrote unrelated documentation"
pass "release metadata updater"

# Early-boot runtime code must not reintroduce the forbidden text parser.
forbidden="$(printf '\141\167\153')"
if find "$ROOT" -path "$ROOT/.git" -prune -o -type f ! -path "$ROOT/tools/mock-logic-tests.sh" -exec grep -n "$forbidden" {} + >/dev/null 2>&1; then
  fail "forbidden parser token remains"
fi
pass "forbidden parser absence"

# Static fail-closed and recovery invariants.
grep -q 'Capture each family once per poll, independent of unlock/boot diagnostics' "$ROOT/service.sh" || fail "snapshot capture is readiness gated"
grep -q 'WATCHDOG_SERVICE_SECS' "$ROOT/service.sh" || fail "absolute service timeout is missing"
grep -q 'policy=block' "$ROOT/service.sh" || fail "fail-closed timeout diagnostics are missing"
grep -q 'afwall_rooted_graph_fingerprint_from_snapshot' "$ROOT/service.sh" || fail "family handoff does not use the rooted graph"
grep -q 'release verified absent' "$ROOT/service.sh" || fail "block release is not verified"
grep -q 'DEBUG.*dumpsys' "$ROOT/bin/lowlevel.sh" || fail "expensive unlock diagnostics are not debug-gated"
pass "handoff and timeout invariants"

grep -q '^forward_block_present_v4() { forward_block_intact_v4; }' "$ROOT/bin/common.sh" || fail "IPv4 FORWARD presence does not require intact state"
grep -q '^forward_block_present_v6() { forward_block_intact_v6; }' "$ROOT/bin/common.sh" || fail "IPv6 FORWARD presence does not require intact state"
grep -q '^input_block_present_v4() { input_block_intact_v4; }' "$ROOT/bin/common.sh" || fail "IPv4 INPUT presence does not require intact state"
grep -q 'repair_input_block_v4' "$ROOT/service.sh" || fail "INPUT repair path is missing"
grep -q '::1/128' "$ROOT/bin/common.sh" || fail "IPv6 loopback fallback is missing"
grep -q '_loopback_return_exists' "$ROOT/bin/common.sh" || fail "loopback integrity helper is missing"
pass "firewall-layer integrity"

grep -q 'lowlevel_clear_stale_vpn_state' "$ROOT/bin/lowlevel.sh" || fail "stale VPN state cleanup is missing"
grep -q '_ll_state_set "vpn_lockdown_enabled_pkgs" "$pkg"' "$ROOT/bin/lowlevel.sh" || fail "VPN ownership marker is not recorded"
grep -q 'no pre-boot VPN baseline or module-set marker' "$ROOT/bin/lowlevel.sh" || fail "VPN ownership guard is missing"
grep -q 'GROUP must be a small static key' "$ROOT/bin/common.sh" || fail "transition-log key contract is missing"
grep -q 'iface_restore_error' "$ROOT/bin/lowlevel.sh" || fail "interface restore failures are not transition-logged"
if grep -q 'emergency_iface_${iface}' "$ROOT/bin/lowlevel.sh"; then
  fail "unbounded interface-specific transition keys remain"
fi
pass "VPN and transition logging invariants"

# Rooted graph parsing must ignore unreachable chains and preserve real reachability.
MODDIR="$ROOT"
# shellcheck source=../bin/common.sh
. "$ROOT/bin/common.sh"

defined_glob_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-star*literal
-A OUTPUT -j afwall
-A afwall -j RETURN'
defined_glob="$(_snapshot_defined_chains "$defined_glob_snap")"
printf '%s\n' "$defined_glob" | grep -qx 'afwall-star[*]literal' || fail "defined-chain parser mishandled a literal glob"

base_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-wifi
-A OUTPUT -j afwall
-A afwall -j afwall-wifi
-A afwall-wifi -m owner --uid-owner 1000 -j RETURN'
churn_snap="$base_snap
-N afwall-orphan
-A afwall-orphan -j DROP"
[ "$(afwall_rooted_graph_fingerprint_from_snapshot "$base_snap")" = "$(afwall_rooted_graph_fingerprint_from_snapshot "$churn_snap")" ] || fail "unreachable chain churn changed the rooted fingerprint"
afwall_prefix_reachable_from_snapshot "$base_snap" afwall-wifi || fail "reachable Wi-Fi subtree was not found"

orphan_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-wifi
-A OUTPUT -j afwall
-A afwall -m owner --uid-owner 1000 -j RETURN
-A afwall-wifi -j DROP'
if afwall_prefix_reachable_from_snapshot "$orphan_snap" afwall-wifi; then
  fail "unreachable Wi-Fi subtree was treated as reachable"
fi

multi_jump_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-wifi
-A OUTPUT -m comment --comment synthetic -j RETURN -j afwall
-A afwall -m comment --comment synthetic -j RETURN -j afwall-wifi
-A afwall-wifi -j RETURN'
afwall_prefix_reachable_from_snapshot "$multi_jump_snap" afwall-wifi || fail "later jump target was omitted"
rooted_afwall_graph_from_snapshot "$multi_jump_snap" | grep -q synthetic || fail "rooted graph omitted a reachable multi-jump rule"
if rooted_afwall_graph_from_snapshot "$multi_jump_snap
-A afwall -m comment --comment invalid -j RETURN -j afwall-missing"; then
  fail "rooted graph accepted an undefined later jump target"
fi
pass "rooted graph and transport reachability"

# Configuration and worker ownership remain module-local and safely parsed.
grep -q 'config.local.sh' "$ROOT/bin/common.sh" || fail "module-local config override is missing"
# shellcheck disable=SC2016
if ! grep -q 'pid_file written pid=${_svc_pid}' "$ROOT/service.sh"; then
  fail "parent worker PID is not recorded"
fi
grep -q 'action: service pid validated' "$ROOT/bin/common.sh" || fail "Action worker PID validation is missing"

original_state_dir="$STATE_DIR"
original_lock_file="$SERVICE_LOCK_FILE"
STATE_DIR="${TMPDIR:-/tmp}/aba-lock-test-$$"
SERVICE_LOCK_FILE="$STATE_DIR/aba_service.lock"
mkdir -p "$STATE_DIR"
# shellcheck disable=SC2016
printf 'pid=$$\nboot_id=$(echo unsafe)\nmodule_version=%s\n' "$MODULE_VERSION" > "$SERVICE_LOCK_FILE"
service_lock_active && fail "corrupt service lock was treated as active"
printf 'pid=not-a-pid\nboot_id=%s\nmodule_version=%s\n' "$(kernel_boot_id)" "$MODULE_VERSION" > "$SERVICE_LOCK_FILE"
service_lock_active && fail "non-numeric service PID was treated as active"
rm -rf "$STATE_DIR"
STATE_DIR="$original_state_dir"
SERVICE_LOCK_FILE="$original_lock_file"
pass "configuration and worker ownership"

# The supported public config surface must stay explicit and free of removed aliases.
allowed='LEAK_PROTECTION_MODE INTEGRATION_MODE POLL_INTERVAL_SECS FAST_STABLE_SECS SLOW_STABLE_SECS AFWALL_DELAY_GRACE_SECS AFWALL_PREFS_RETRY_SECS WATCHDOG_SERVICE_SECS WATCHDOG_BOOT_COMPLETED_SECS WATCHDOG_POLICY BLOCK_FORWARD BLOCK_INPUT RADIO_SUPPRESSION AFWALL_PACKAGE VPN_LOCKDOWN_MODE VPN_PROVIDER_PACKAGES DEBUG TRANSPORT_ABSENCE_STABLE_SECS TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT TRANSPORT_ORPHAN_STABLE_SECS TRANSPORT_INCONCLUSIVE_SECS TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT BLACKOUT_REASSERT_INTERVAL RADIO_REASSERT_INTERVAL UNLOCK_POLL_INTERVAL AFWALL_RULE_DENSITY_MIN'
vars="$(sed -n 's/^\([A-Z0-9_][A-Z0-9_]*\)=.*/\1/p' "$ROOT/config.sh")"
for variable in $vars; do
  case " $allowed " in
    *" $variable "*) ;;
    *) fail "unexpected public config variable: $variable" ;;
  esac
done
for variable in WATCHDOG_POLICY VPN_LOCKDOWN_MODE VPN_PROVIDER_PACKAGES; do
  printf '%s\n' "$vars" | grep -qx "$variable" || fail "missing public config variable: $variable"
done
grep -q '^WATCHDOG_POLICY=block$' "$ROOT/config.sh" || fail "default timeout policy is not fail-closed"
grep -q '^VPN_LOCKDOWN_MODE=off$' "$ROOT/config.sh" || fail "default VPN mode is not off"
if grep -E 'diagnose_and_fail_closed|auto_unblock|fail_closed|release_on_restore' "$ROOT/config.sh" "$ROOT/README.md" "$ROOT/ADVANCED.md"; then
  fail "removed policy values remain in the public surface"
fi
pass "public configuration surface"

# Config derivation and AFWall package selection.
DERIVE_TMP="${TMPDIR:-/tmp}/aba-config-test-$$"
mkdir -p "$DERIVE_TMP/mod" "$DERIVE_TMP/data/state" "$DERIVE_TMP/data/logs" "$DERIVE_TMP/bin"
cp "$ROOT/config.sh" "$DERIVE_TMP/mod/config.sh"
cat > "$DERIVE_TMP/mod/config.local.sh" <<'EOF_CONFIG'
WATCHDOG_POLICY=unblock
RADIO_SUPPRESSION=strict
VPN_LOCKDOWN_MODE=restore
EOF_CONFIG
MODDIR="$DERIVE_TMP/mod"
MODULE_DATA="$DERIVE_TMP/data"
LOG_DIR="$MODULE_DATA/logs"
LOG_FILE="$LOG_DIR/boot.log"
STATE_DIR="$MODULE_DATA/state"
SERVICE_PID_FILE="$STATE_DIR/aba_service.pid"
_MODULE_CFG_LOADED=0
load_config
[ "$WATCHDOG_POLICY" = unblock ] || fail "WATCHDOG_POLICY override was not applied"
[ "$LOWLEVEL_MODE" = strict ] || fail "strict radio mode was not derived"
[ "$VPN_LOCKDOWN_BOOT_ENFORCE" = 1 ] || fail "VPN restore mode did not enable boot enforcement"

cat > "$DERIVE_TMP/mod/config.local.sh" <<'EOF_CONFIG'
LEAK_PROTECTION_MODE=strict
RADIO_SUPPRESSION=off
EOF_CONFIG
_MODULE_CFG_LOADED=0
load_config
[ "$LOWLEVEL_MODE" = off ] || fail "profile label forced radio suppression"

cat > "$DERIVE_TMP/bin/cmd" <<'EOF_CMD'
#!/usr/bin/env sh
[ "$1" = package ] && [ "$2" = path ] || exit 1
[ "$3" = "$TEST_AF_PKG" ] || exit 1
printf 'package:/data/app/%s/base.apk\n' "$3"
EOF_CMD
chmod +x "$DERIVE_TMP/bin/cmd"
PATH="$DERIVE_TMP/bin:$PATH"
for package_name in dev.ukanth.ufirewall.donate dev.ukanth.ufirewall com.ukanth.ufirewall; do
  TEST_AF_PKG="$package_name"
  export TEST_AF_PKG
  [ "$(resolve_afwall_pkg)" = "$package_name" ] || fail "AFWall package resolver failed for $package_name"
done
pass "config derivation and AFWall package selection"

if grep -q 'ic_parse_external_config\|ic_load_existing_config\|_IC_INSTALLER_CFG\|_IC_PERSISTENT_CFG' "$ROOT/bin/installer_config.sh"; then
  fail "installer still contains removed external-config migration code"
fi
grep -q 'config.local.sh' "$ROOT/bin/installer_config.sh" || fail "installer does not write module-local overrides"

# Installer always-on VPN suggestion with a fake settings command.
# shellcheck source=../bin/installer_config.sh
. "$ROOT/bin/installer_config.sh"
cat > "$DERIVE_TMP/bin/settings" <<'EOF_SETTINGS'
#!/usr/bin/env sh
[ "$1" = get ] && [ "$2" = secure ] || exit 1
case "$3" in
  always_on_vpn_app) printf '%s\n' ch.protonvpn.android ;;
  always_on_vpn_lockdown) printf '%s\n' 1 ;;
  *) printf '%s\n' null ;;
esac
EOF_SETTINGS
chmod +x "$DERIVE_TMP/bin/settings"
PATH="$DERIVE_TMP/bin:$PATH"
IC_CONTEXT=runtime
ui_print() { printf '%s\n' "$1"; }
ic_apply_defaults
ic_apply_auto_vpn_defaults >/dev/null
[ "$IC_VPN_LOCKDOWN_MODE" = preserve ] || fail "always-on VPN did not suggest preserve mode"
[ "$IC_VPN_PROVIDER_PACKAGES" = ch.protonvpn.android ] || fail "always-on VPN provider was not detected"
pass "installer VPN suggestion"

printf 'All repository invariant tests passed.\n'
