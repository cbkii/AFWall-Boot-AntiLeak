#!/bin/sh
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

# Release metadata must be internally consistent for the active breaking-change release.
expected_version="$(grep '^version=' "$ROOT/module.prop" | cut -d= -f2 | tr -d '[:space:]')"
expected_code="$(grep '^versionCode=' "$ROOT/module.prop" | cut -d= -f2 | tr -d '[:space:]')"
[ -n "$expected_version" ] || fail "module.prop version is empty"
[ -n "$expected_code" ] || fail "module.prop versionCode is empty"
grep -q "^version=${expected_version}$" "$ROOT/module.prop" || fail "module.prop version mismatch"
grep -q "^versionCode=${expected_code}$" "$ROOT/module.prop" || fail "module.prop versionCode mismatch"
grep -q "\"version\": \"${expected_version}\"" "$ROOT/update.json" || fail "update.json version does not match module.prop"
grep -q "\"versionCode\": ${expected_code}" "$ROOT/update.json" || fail "update.json versionCode does not match module.prop"
grep -q "MODULE_VERSION=\"${expected_version}\"" "$ROOT/bin/common.sh" || fail "MODULE_VERSION does not match module.prop"
stale_version_re='v2[.]6\|v2[.]6[.]0\|2[.]6[.]0\|20''600\|v3[.]2[.]1\|30''201'
if find "$ROOT" -path "$ROOT/.git" -prune -o -type f ! -path "$ROOT/tools/mock-logic-tests.sh" -exec grep -n "$stale_version_re" {} + >/dev/null 2>&1; then
  fail "stale active version metadata remains"
fi
pass "active release metadata consistency"

# Release metadata synchroniser must bump exact active version text and not rewrite unrelated versions in docs.
SYNC_TMP="${TMPDIR:-/tmp}/aba-sync-test-$$"
rm -rf "$SYNC_TMP"
mkdir -p "$SYNC_TMP"
(
  cd "$ROOT"
  tar --exclude='.git' --exclude='dist' --exclude='tools/__pycache__' -cf - .
) | (cd "$SYNC_TMP" && tar -xf -)
printf '\nUnrelated external reference v9.9.9 must remain unchanged.\n' >> "$SYNC_TMP/README.md"
python3 "$SYNC_TMP/tools/sync-version-metadata.py" v4.0.2 40002
_tmp_version="$(grep '^version=' "$SYNC_TMP/module.prop" | cut -d= -f2 | tr -d '[:space:]')"
_tmp_code="$(grep '^versionCode=' "$SYNC_TMP/module.prop" | cut -d= -f2 | tr -d '[:space:]')"
[ "$_tmp_version" = v4.0.2 ] || fail "sync-version-metadata did not update module.prop version"
[ "$_tmp_code" = 40002 ] || fail "sync-version-metadata did not update module.prop versionCode"
grep -q '"version": "v4.0.2"' "$SYNC_TMP/update.json" || fail "sync-version-metadata did not update update.json version"
grep -q '"versionCode": 40002' "$SYNC_TMP/update.json" || fail "sync-version-metadata did not update update.json versionCode"
grep -q 'MODULE_VERSION="v4.0.2"' "$SYNC_TMP/bin/common.sh" || fail "sync-version-metadata did not update MODULE_VERSION"
grep -q 'Unrelated external reference v9.9.9 must remain unchanged' "$SYNC_TMP/README.md" || fail "sync-version-metadata rewrote unrelated doc version reference"
rm -rf "$SYNC_TMP"
pass "release metadata synchroniser"

# Repository text must not contain the early-boot parser that this project forbids.
forbidden="$(printf '\141\167\153')"
if find "$ROOT" -path "$ROOT/.git" -prune -o -type f ! -path "$ROOT/tools/mock-logic-tests.sh" -exec grep -n "$forbidden" {} + >/dev/null 2>&1; then
  fail "forbidden parser token remains"
fi
pass "forbidden parser absence"

# Release automation must also stay clear of the forbidden parser token.
if grep -n "$forbidden" "$ROOT/.github/workflows/release.yml" "$ROOT/.github/scripts/previous_release_tag.py" >/dev/null 2>&1; then
  fail "release automation contains forbidden parser token"
fi
pass "release automation forbidden parser absence"

# Previous-tag selection must choose the newest older tag, not the release tag or a newer tag.
prev_tag="$(printf '%s\n' v3.2.1 v4.0.1 v4.0.0 v2.6.0 | python3 "$ROOT/.github/scripts/previous_release_tag.py" v4.0.0)"
[ "$prev_tag" = "v3.2.1" ] || fail "previous-tag selector chose '$prev_tag' instead of newest older tag"
prev_tag="$(printf '%s\n' 39999 40000 40001 | python3 "$ROOT/.github/scripts/previous_release_tag.py" 40000)"
[ "$prev_tag" = "39999" ] || fail "numeric previous-tag selector chose newer/current tag"
pass "previous release tag selection"

# Temporary review-helper artifacts must never ship in the module branch.
for stale in \
  "$ROOT/tools/remove_${forbidden}_fixup.py" \
  "$ROOT/.github/workflows/${forbidden}-removal-runner.yml" \
  "$ROOT/.github/workflows/remove-${forbidden}-fixup.yml" \
  "$ROOT/.github/workflows/run-remove-${forbidden}-fixup.yml" \
  "$ROOT/.github/workflows/pr29-review-fixup.yml"; do
  [ ! -e "$stale" ] || fail "temporary review-helper artifact remains: $stale"
done
pass "temporary review-helper artifacts absent"

# Static invariants from the decoupled handoff/watchdog implementation.
grep -q 'Capture each family once per poll, independent of unlock/boot diagnostics' "$ROOT/service.sh" || fail "snapshot capture is still readiness gated"
grep -q 'WATCHDOG_SERVICE_SECS' "$ROOT/service.sh" || fail "absolute service watchdog missing"
grep -q 'policy=block' "$ROOT/service.sh" || fail "block watchdog diagnostics missing"
grep -q 'afwall_rooted_graph_fingerprint_from_snapshot' "$ROOT/service.sh" || fail "family handoff not using rooted fingerprint"
pass "decoupled family handoff and watchdog hooks"

# FORWARD must not be considered present from chain existence alone.
grep -q '^forward_block_present_v4() { forward_block_intact_v4; }' "$ROOT/bin/common.sh" || fail "v4 FORWARD present does not require intact state"
grep -q '^forward_block_present_v6() { forward_block_intact_v6; }' "$ROOT/bin/common.sh" || fail "v6 FORWARD present does not require intact state"
grep -q '_chain_block_intact.*FORWARD\|forward_block_intact_v4' "$ROOT/bin/common.sh" || fail "FORWARD intact helper missing"
grep -q '^input_block_present_v4() { input_block_intact_v4; }' "$ROOT/bin/common.sh" || fail "INPUT present does not require intact state"
grep -q 'repair_input_block_v4' "$ROOT/service.sh" || fail "INPUT repair path missing from service"
pass "FORWARD/INPUT active-state integrity"

# IPv6 raw loopback fallback/integrity must exist.
grep -q '::1/128' "$ROOT/bin/common.sh" || fail "IPv6 raw loopback fallback missing"
grep -q '_loopback_return_exists' "$ROOT/bin/common.sh" || fail "loopback integrity helper missing"
pass "IPv6 loopback integrity"

# VPN stale-state clear must exist and run before enforcement.
grep -q 'lowlevel_clear_stale_vpn_state' "$ROOT/bin/lowlevel.sh" || fail "stale VPN clear helper missing"
grep -q 'vpn_pre_active_pkg' "$ROOT/bin/lowlevel.sh" || fail "VPN pre-state cleanup missing"
grep -q '_ll_state_set "vpn_lockdown_enabled_pkgs" "$pkg"' "$ROOT/bin/lowlevel.sh" || fail "VPN module-set marker not recorded"
grep -q 'no pre-boot VPN baseline or module-set marker' "$ROOT/bin/lowlevel.sh" || fail "VPN ownership-proof guard missing from release path"
pass "per-boot VPN cleanup"

# Transition logging must keep visible recovery failures without unbounded
# dynamic group keys.
grep -q 'GROUP must be a small static key' "$ROOT/bin/common.sh" || fail "log_on_transition group contract missing"
grep -q 'iface_restore_error' "$ROOT/bin/lowlevel.sh" || fail "interface restore failures are not transition-logged"
if grep -q 'emergency_iface_${iface}' "$ROOT/bin/lowlevel.sh"; then fail "dynamic interface transition group remains"; fi
pass "transition logging invariants"


# Rooted graph logic: reachable orphan churn must not alter release fingerprint.
MODDIR="$ROOT"
. "$ROOT/bin/common.sh"
defined_glob_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-star*literal
-A OUTPUT -j afwall
-A afwall -j RETURN'
defined_glob="$(_snapshot_defined_chains "$defined_glob_snap")"
printf '%s\n' "$defined_glob" | grep -qx 'afwall-star[*]literal' || fail "defined-chain parser mishandled literal glob character"
base_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-wifi
-A OUTPUT -j afwall
-A afwall -j afwall-wifi
-A afwall-wifi -m owner --uid-owner 1000 -j RETURN'
churn_snap="$base_snap
-N afwall-orphan
-A afwall-orphan -j DROP"
root_fp_1="$(afwall_rooted_graph_fingerprint_from_snapshot "$base_snap")"
root_fp_2="$(afwall_rooted_graph_fingerprint_from_snapshot "$churn_snap")"
[ "$root_fp_1" = "$root_fp_2" ] || fail "orphan afwall* churn changed rooted fingerprint"
afwall_prefix_reachable_from_snapshot "$base_snap" afwall-wifi || fail "reachable Wi-Fi subtree not detected"
orphan_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-wifi
-A OUTPUT -j afwall
-A afwall -m owner --uid-owner 1000 -j RETURN
-A afwall-wifi -j DROP'
if afwall_prefix_reachable_from_snapshot "$orphan_snap" afwall-wifi; then fail "orphan Wi-Fi subtree treated as reachable"; fi
absent_snap='-P OUTPUT ACCEPT
-N afwall
-A OUTPUT -j afwall
-A afwall -m owner --uid-owner 1000 -j RETURN'
if afwall_prefix_present_from_snapshot "$absent_snap" afwall-wifi; then fail "absent Wi-Fi subtree treated as present"; fi
mobile_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-3g
-A OUTPUT -j afwall
-A afwall -j afwall-3g
-A afwall-3g -j RETURN'
afwall_prefix_reachable_from_snapshot "$mobile_snap" afwall-3g || fail "reachable mobile subtree not detected"
mobile_orphan_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-3g
-A OUTPUT -j afwall
-A afwall -m owner --uid-owner 1000 -j RETURN
-A afwall-3g -j DROP'
if afwall_prefix_reachable_from_snapshot "$mobile_orphan_snap" afwall-3g; then fail "orphan mobile subtree treated as reachable"; fi
multi_jump_snap='-P OUTPUT ACCEPT
-N afwall
-N afwall-wifi
-A OUTPUT -m comment --comment synthetic -j RETURN -j afwall
-A afwall -m comment --comment synthetic -j RETURN -j afwall-wifi
-A afwall-wifi -j RETURN'
afwall_prefix_reachable_from_snapshot "$multi_jump_snap" afwall-wifi || fail "later jump target was not included in reachability"
rooted_afwall_graph_from_snapshot "$multi_jump_snap" | grep -q 'synthetic' || fail "rooted graph omitted rule with later reachable jump target"
multi_orphan_snap="$multi_jump_snap
-A afwall -m comment --comment orphan -j RETURN -j afwall-missing"
if rooted_afwall_graph_from_snapshot "$multi_orphan_snap"; then fail "rooted graph accepted rule with undefined later jump target"; fi
pass "rooted graph and transport reachability"

# Config single-source and PID lifecycle invariants.
grep -q "legacy external config path ignored in ${expected_version}" "$ROOT/bin/common.sh" || fail "legacy external config ignore warning missing"
grep -q 'config.local.sh' "$ROOT/bin/common.sh" || fail "module-local config override missing"
# shellcheck disable=SC2016 # intentional literal pattern for source-code assertion
grep -q 'pid_file written pid=${_svc_pid}' "$ROOT/service.sh" || fail "parent does not record actual background pid"
grep -q 'action: service pid validated' "$ROOT/bin/common.sh" || fail "action pid validation log missing"

# Corrupt lock files must be parsed safely, not sourced/executed.
_orig_state_dir="$STATE_DIR"
_orig_service_lock_file="$SERVICE_LOCK_FILE"
STATE_DIR="${TMPDIR:-/tmp}/aba-lock-test-$$"
SERVICE_LOCK_FILE="$STATE_DIR/aba_service.lock"
mkdir -p "$STATE_DIR"
# shellcheck disable=SC2016 # intentional literal malicious lockfile payload for test fixture
printf 'pid=$$\nboot_id=$(echo unsafe)\nmodule_version=%s\n' "$MODULE_VERSION" > "$SERVICE_LOCK_FILE"
service_lock_active && fail "corrupt service lock treated as active"
printf 'pid=not-a-pid\nboot_id=%s\nmodule_version=%s\n' "$(kernel_boot_id)" "$MODULE_VERSION" > "$SERVICE_LOCK_FILE"
service_lock_active && fail "non-numeric lock pid treated as active"
rm -rf "$STATE_DIR"
STATE_DIR="$_orig_state_dir"
SERVICE_LOCK_FILE="$_orig_service_lock_file"
pass "config and PID invariants"

# Active release config surface checks.
allowed='LEAK_PROTECTION_MODE INTEGRATION_MODE POLL_INTERVAL_SECS FAST_STABLE_SECS SLOW_STABLE_SECS WATCHDOG_SERVICE_SECS WATCHDOG_BOOT_COMPLETED_SECS WATCHDOG_POLICY BLOCK_FORWARD BLOCK_INPUT RADIO_SUPPRESSION AFWALL_PACKAGE VPN_LOCKDOWN_MODE VPN_PROVIDER_PACKAGES DEBUG TRANSPORT_ABSENCE_STABLE_SECS TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT TRANSPORT_ORPHAN_STABLE_SECS TRANSPORT_INCONCLUSIVE_SECS TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT BLACKOUT_REASSERT_INTERVAL RADIO_REASSERT_INTERVAL UNLOCK_POLL_INTERVAL AFWALL_RULE_DENSITY_MIN'
vars=$(sed -n 's/^\([A-Z0-9_][A-Z0-9_]*\)=.*/\1/p' "$ROOT/config.sh")
for v in $vars; do
  case " $allowed " in *" $v "*) ;; *) fail "unexpected user-facing config variable: $v" ;; esac
  prev=""
  found=0
  while IFS= read -r line; do
    case "$line" in
      "$v"=*) found=1; break ;;
    esac
    prev="$line"
  done < "$ROOT/config.sh"
  [ "$found" = "1" ] || fail "config variable not found while checking comment: $v"
  printf '%s' "$prev" | grep -q '^# .*' || fail "config variable lacks immediate explanatory comment: $v"
done
for v in WATCHDOG_POLICY VPN_LOCKDOWN_MODE VPN_PROVIDER_PACKAGES; do
  printf '%s\n' "$vars" | grep -qx "$v" || fail "missing config variable $v"
done
grep -q '^WATCHDOG_POLICY=block$' "$ROOT/config.sh" || fail "default watchdog policy is not block"
grep -q '^VPN_LOCKDOWN_MODE=off$' "$ROOT/config.sh" || fail "default VPN mode is not off"
grep -q 'Common examples: ch.protonvpn.android com.wireguard.android' "$ROOT/config.sh" || fail "VPN examples missing Proton first"
if grep -E '^(TIMEOUT_|AFWALL_READY_|LOWLEVEL_|VPN_LOCKDOWN_(BOOT|RELEASE|PROVIDER)|WIFI_AFWALL_GATE|MOBILE_AFWALL_GATE|ENABLE_)' "$ROOT/config.sh"; then fail "legacy/internal variables exposed in config.sh"; fi
if grep -E 'diagnose_and_fail_closed|auto_unblock|fail_closed|release_on_restore' "$ROOT/config.sh" "$ROOT/README.md" "$ROOT/ADVANCED.md"; then fail "old policy values exposed in config/docs"; fi
pass "active release config surface"

# Config derivation and unsupported legacy variables.
TMP="${TMPDIR:-/tmp}/aba-test-$$"
trap 'rm -rf "$TMP"' EXIT INT TERM
mkdir -p "$TMP/mod" "$TMP/data/state" "$TMP/data/logs"
cp "$ROOT/config.sh" "$TMP/mod/config.sh"
cat > "$TMP/mod/config.local.sh" <<'SH'
WATCHDOG_POLICY=unblock
RADIO_SUPPRESSION=strict
VPN_LOCKDOWN_MODE=restore
TIMEOUT_POLICY=unblock
AFWALL_READY_REQUIRE_UNLOCK=1
SH
MODDIR="$TMP/mod"
MODULE_DATA="$TMP/data"
LOG_DIR="$TMP/data/logs"
LOG_FILE="$LOG_DIR/boot.log"
STATE_DIR="$TMP/data/state"
SERVICE_PID_FILE="$STATE_DIR/aba_service.pid"
_MODULE_CFG_LOADED=0
load_config
[ "$WATCHDOG_POLICY" = unblock ] || fail "WATCHDOG_POLICY=unblock not applied"
[ "$LOWLEVEL_MODE" = strict ] || fail "RADIO_SUPPRESSION=strict did not derive strict lowlevel"
[ "$VPN_LOCKDOWN_BOOT_ENFORCE" = 1 ] || fail "VPN restore mode did not enable boot enforcement"
[ -z "${TIMEOUT_POLICY+x}" ] || fail "legacy TIMEOUT_POLICY still set after load"
grep -q "unsupported legacy variable ignored in ${expected_version}: TIMEOUT_POLICY" "$LOG_FILE" || fail "legacy TIMEOUT_POLICY warning missing"
grep -q "unsupported legacy variable ignored in ${expected_version}: AFWALL_READY_REQUIRE_UNLOCK" "$LOG_FILE" || fail "legacy readiness warning missing"

# Strict firewall proof alone must not force disruptive radio suppression.
cat > "$TMP/mod/config.local.sh" <<'SH'
LEAK_PROTECTION_MODE=strict
RADIO_SUPPRESSION=off
SH
_MODULE_CFG_LOADED=0
load_config
[ "$LOWLEVEL_MODE" = off ] || fail "LEAK_PROTECTION_MODE=strict forced radio suppression"
pass "config derivation and legacy ignore"

# AFWall package detection must include donate, current free, and legacy IDs.
mkdir -p "$TMP/bin"
cat > "$TMP/bin/cmd" <<'SH'
#!/bin/sh
[ "$1" = package ] && [ "$2" = path ] || exit 1
[ "$3" = "$TEST_AF_PKG" ] || exit 1
echo "package:/data/app/$3/base.apk"
SH
chmod +x "$TMP/bin/cmd"
PATH="$TMP/bin:$PATH"
for pkg in dev.ukanth.ufirewall.donate dev.ukanth.ufirewall com.ukanth.ufirewall; do
  TEST_AF_PKG="$pkg"
  export TEST_AF_PKG
  found="$(resolve_afwall_pkg)" || fail "AFWall package resolver failed for $pkg"
  [ "$found" = "$pkg" ] || fail "AFWall package resolver returned $found for $pkg"
done
pass "AFWall package candidates"

# External legacy paths are mentioned as ignored, never sourced by installer/common.
grep -q "legacy external config path ignored in ${expected_version}" "$ROOT/bin/common.sh" || fail "runtime legacy path ignore missing"
if grep -q 'ic_parse_external_config\|ic_load_existing_config\|_IC_INSTALLER_CFG\|_IC_PERSISTENT_CFG' "$ROOT/bin/installer_config.sh"; then fail "installer still has external config preservation/parser"; fi
grep -q 'config.local.sh' "$ROOT/bin/installer_config.sh" || fail "installer does not write module-local config.local.sh"
pass "external config ignored"

# Installer always-on VPN auto-config with fake settings command.
. "$ROOT/bin/installer_config.sh"
mkdir -p "$TMP/bin"
cat > "$TMP/bin/settings" <<'SH'
#!/bin/sh
[ "$1" = get ] && [ "$2" = secure ] || exit 1
case "$3" in
  always_on_vpn_app) echo ch.protonvpn.android ;;
  always_on_vpn_lockdown) echo 1 ;;
  *) echo null ;;
esac
SH
chmod +x "$TMP/bin/settings"
PATH="$TMP/bin:$PATH"
IC_CONTEXT=runtime
ui_print() { echo "$1"; }
ic_apply_defaults
ic_apply_auto_vpn_defaults >/dev/null
[ "$IC_VPN_LOCKDOWN_MODE" = preserve ] || fail "always-on VPN did not set preserve mode"
[ "$IC_VPN_PROVIDER_PACKAGES" = ch.protonvpn.android ] || fail "always-on VPN provider hint not set"
pass "installer always-on VPN auto-enable"

echo "All mock logic tests passed."
