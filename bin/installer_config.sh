#!/system/bin/sh
# AFWall Boot AntiLeak v4.3.0 — installer/reconfigure config helper.
# Breaking-change release: writes only module-local config.local.sh and never
# reads old external runtime/installer config paths.

_IC_MODULE_ID="AFWall-Boot-AntiLeak"
_IC_LEGACY_DATA="/data/adb/${_IC_MODULE_ID}"
_IC_KEY_TIMEOUT=10
_IC_KEY_RETRIES=2

_ic_print() {
    case "${IC_CONTEXT:-installer}" in
        runtime) echo "$1" ;;
        *) ui_print "$1" ;;
    esac
}

ic_cleanup_legacy_config_files() {
    local legacy
    for legacy in \
        "${_IC_LEGACY_DATA}/config.sh" \
        "${_IC_LEGACY_DATA}/installer.cfg"; do
        [ -e "$legacy" ] || continue
        if rm -f "$legacy" 2>/dev/null; then
            _ic_print "  Removed ignored legacy config: $legacy"
        else
            _ic_print "  WARNING: Could not remove ignored legacy config: $legacy"
        fi
    done
    return 0
}

ic_apply_defaults() {
    IC_LEAK_PROTECTION_MODE=balanced
    IC_INTEGRATION_MODE=auto
    IC_POLL_INTERVAL_SECS=2
    IC_FAST_STABLE_SECS=2
    IC_SLOW_STABLE_SECS=6
    IC_WATCHDOG_SERVICE_SECS=300
    IC_WATCHDOG_BOOT_COMPLETED_SECS=240
    IC_WATCHDOG_POLICY=block
    IC_BLOCK_FORWARD=1
    IC_BLOCK_INPUT=0
    IC_RADIO_SUPPRESSION=off
    IC_AFWALL_PACKAGE=auto
    IC_VPN_LOCKDOWN_MODE=off
    IC_VPN_PROVIDER_PACKAGES=auto
    IC_DEBUG=0
    IC_TRANSPORT_ABSENCE_STABLE_SECS=3
    IC_TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=2
    IC_TRANSPORT_ORPHAN_STABLE_SECS=3
    IC_TRANSPORT_INCONCLUSIVE_SECS=20
    IC_TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=8
    IC_BLACKOUT_REASSERT_INTERVAL=10
    IC_RADIO_REASSERT_INTERVAL=15
    IC_UNLOCK_POLL_INTERVAL=10
    IC_AFWALL_RULE_DENSITY_MIN=3
}

ic_apply_profile() {
    ic_apply_defaults
    case "$1" in
        minimal)
            IC_LEAK_PROTECTION_MODE=balanced
            IC_BLOCK_FORWARD=0
            IC_BLOCK_INPUT=0
            IC_RADIO_SUPPRESSION=off
            ;;
        strict)
            IC_LEAK_PROTECTION_MODE=strict
            IC_BLOCK_FORWARD=1
            IC_BLOCK_INPUT=1
            IC_RADIO_SUPPRESSION=strict
            IC_VPN_LOCKDOWN_MODE=restore
            ;;
        recovery)
            IC_LEAK_PROTECTION_MODE=recovery_friendly
            IC_WATCHDOG_POLICY=unblock
            IC_RADIO_SUPPRESSION=off
            ;;
        standard|*) ;;
    esac
}

_ic_settings_get_secure() {
    settings get secure "$1" 2>/dev/null | tr -d '\n' | sed 's/^[[:space:]]*//; s/[[:space:]]*$//'
}

_ic_value_is_set() {
    case "$1" in ""|null|NULL|none|None|0) return 1 ;; esac
    return 0
}

ic_detect_always_on_vpn() {
    IC_DETECTED_ALWAYS_ON_VPN_APP="$(_ic_settings_get_secure always_on_vpn_app)"
    IC_DETECTED_ALWAYS_ON_VPN_LOCKDOWN="$(_ic_settings_get_secure always_on_vpn_lockdown)"
    _ic_value_is_set "$IC_DETECTED_ALWAYS_ON_VPN_APP" && IC_HAS_ALWAYS_ON_VPN=1 || IC_HAS_ALWAYS_ON_VPN=0
}

ic_apply_auto_vpn_defaults() {
    ic_detect_always_on_vpn
    if [ "${IC_HAS_ALWAYS_ON_VPN:-0}" = "1" ]; then
        _ic_print "  [vpn] Android always-on VPN detected: ${IC_DETECTED_ALWAYS_ON_VPN_APP}"
        _ic_print "  [vpn] Android lockdown setting: ${IC_DETECTED_ALWAYS_ON_VPN_LOCKDOWN:-<unset>}"
        if [ "${IC_VPN_LOCKDOWN_MODE:-off}" = "off" ]; then
            IC_VPN_LOCKDOWN_MODE=preserve
        fi
        if [ "${IC_VPN_PROVIDER_PACKAGES:-auto}" = "auto" ]; then
            IC_VPN_PROVIDER_PACKAGES="$IC_DETECTED_ALWAYS_ON_VPN_APP"
        fi
        _ic_print "  [vpn] Using VPN_LOCKDOWN_MODE=${IC_VPN_LOCKDOWN_MODE}; provider hints=${IC_VPN_PROVIDER_PACKAGES}."
    else
        _ic_print "  [vpn] Android always-on VPN not detected; VPN lockdown handling remains ${IC_VPN_LOCKDOWN_MODE:-off}."
    fi
}

_ic_get_keycheck_path() {
    local arch names subdirs d name sub candidate
    arch="$(uname -m 2>/dev/null)"
    case "$arch" in
        aarch64|arm64) names="keycheck-arm64 keycheck-aarch64 keycheck-arm keycheck"; subdirs="arm64 arm x64 x86" ;;
        arm*) names="keycheck-arm keycheck-armeabi-v7a keycheck-arm64 keycheck"; subdirs="arm arm64 x64 x86" ;;
        x86_64) names="keycheck-x86_64 keycheck-x64 keycheck-x86 keycheck"; subdirs="x64 x86 arm64 arm" ;;
        x86|i686) names="keycheck-x86 keycheck-i686 keycheck-x86_64 keycheck"; subdirs="x86 x64 arm64 arm" ;;
        *) names="keycheck keycheck-arm64 keycheck-arm keycheck-x86_64 keycheck-x86"; subdirs="arm64 arm x64 x86" ;;
    esac

    for d in "${MODPATH:-}" "${MODDIR:-}" "/data/adb/modules/${_IC_MODULE_ID}"; do
        [ -n "$d" ] || continue
        for name in $names; do
            candidate="$d/bin/keycheck/$name"
            [ -x "$candidate" ] && { printf '%s' "$candidate"; return 0; }
        done
        for sub in $subdirs; do
            for name in $names; do
                candidate="$d/META-INF/com/google/android/$sub/$name"
                [ -x "$candidate" ] && { printf '%s' "$candidate"; return 0; }
            done
        done
        for name in $names; do
            candidate="$d/$name"
            [ -x "$candidate" ] && { printf '%s' "$candidate"; return 0; }
        done
    done
    return 1
}

ic_detect_keys() {
    local event_node kc
    _IC_KEYS_AVAIL=0; _IC_KEYCHECK_AVAIL=0; _IC_GETEVENT_PATH=""; _IC_KEYCHECK_PATH=""
    if [ -x /system/bin/getevent ]; then
        _IC_GETEVENT_PATH=/system/bin/getevent
    elif command -v getevent >/dev/null 2>&1; then
        _IC_GETEVENT_PATH="$(command -v getevent)"
    fi
    for event_node in /dev/input/event*; do
        if [ -e "$event_node" ] && [ -n "$_IC_GETEVENT_PATH" ]; then
            _IC_KEYS_AVAIL=1
            break
        fi
    done
    kc="$(_ic_get_keycheck_path 2>/dev/null || true)"
    if [ -n "$kc" ]; then
        _IC_KEYCHECK_AVAIL=1
        _IC_KEYCHECK_PATH="$kc"
    fi
}

_ic_any_input_avail() { [ "${_IC_KEYS_AVAIL:-0}" = "1" ] || [ "${_IC_KEYCHECK_AVAIL:-0}" = "1" ]; }
_ic_flush_events() {
    if [ "${_IC_KEYS_AVAIL:-0}" = "1" ]; then
        timeout 1 "$_IC_GETEVENT_PATH" -lq >/dev/null 2>&1 || true
    fi
}

ic_volkey() {
    local raw
    _ic_any_input_avail || return 2
    if [ "${_IC_KEYS_AVAIL:-0}" = "1" ]; then
        raw="$(timeout "$_IC_KEY_TIMEOUT" "$_IC_GETEVENT_PATH" -lq 2>/dev/null | grep -m1 -E 'EV_KEY.*(KEY_VOLUMEUP|KEY_VOLUMEDOWN|0073|0072).*(DOWN|00000001)' || true)"
        case "$raw" in *KEY_VOLUMEUP*|*0073*) return 0 ;; *KEY_VOLUMEDOWN*|*0072*) return 1 ;; esac
    fi
    if [ "${_IC_KEYCHECK_AVAIL:-0}" = "1" ]; then
        timeout "$_IC_KEY_TIMEOUT" "$_IC_KEYCHECK_PATH" >/dev/null 2>&1
        case "$?" in 41) return 0 ;; 42) return 1 ;; esac
    fi
    return 2
}

_ic_question_header() {
    _ic_print ""
    _ic_print "========================================"
    _ic_print "$1"
}

_ic_option_desc() {
    case "$1:$2" in
        profile:standard) printf '%s' 'recommended balanced defaults' ;;
        profile:minimal) printf '%s' 'core OUTPUT protection, fewer extras' ;;
        profile:strict) printf '%s' 'more temporary blocks, slower reconnects' ;;
        profile:recovery) printf '%s' 'watchdog unblocks on timeout' ;;
        profile:custom) printf '%s' 'choose each main setting' ;;
        LEAK_PROTECTION_MODE:balanced) printf '%s' 'safe default for most devices' ;;
        LEAK_PROTECTION_MODE:strict) printf '%s' 'stronger boot blocking, slower reconnects' ;;
        LEAK_PROTECTION_MODE:recovery_friendly) printf '%s' 'easier recovery, less aggressive' ;;
        WATCHDOG_POLICY:block) printf '%s' 'keep blocked; use Magisk Action to unblock' ;;
        WATCHDOG_POLICY:unblock) printf '%s' 'watchdog releases blocks on timeout' ;;
        RADIO_SUPPRESSION:off) printf '%s' 'netfilter only; do not toggle radios' ;;
        RADIO_SUPPRESSION:safe) printf '%s' 'temporary common radio/service holds' ;;
        RADIO_SUPPRESSION:strict) printf '%s' 'stronger holds; may delay reconnects' ;;
        BLOCK_FORWARD:1) printf '%s' 'also block tether/client forwarding' ;;
        BLOCK_FORWARD:0) printf '%s' 'only protect local device OUTPUT' ;;
        BLOCK_INPUT:1) printf '%s' 'also block inbound during boot' ;;
        BLOCK_INPUT:0) printf '%s' 'leave inbound handling to AFWall' ;;
        VPN_LOCKDOWN_MODE:off) printf '%s' 'leave VPN lockdown alone' ;;
        VPN_LOCKDOWN_MODE:preserve) printf '%s' 'only undo changes this module made' ;;
        VPN_LOCKDOWN_MODE:restore) printf '%s' 'turn saved lockdown back on after handoff' ;;
        DEBUG:1) printf '%s' 'verbose logs for troubleshooting' ;;
        DEBUG:0) printf '%s' 'normal concise logs' ;;
        *) printf '%s' '' ;;
    esac
}


_ic_scope_synopsis() {
    case "$1" in
        profile)
            _ic_print "Choose a ready-made setup, or custom to answer each setting yourself."
            ;;
        LEAK_PROTECTION_MODE)
            _ic_print "Controls how strongly boot traffic is blocked before AFWall is ready."
            ;;
        WATCHDOG_POLICY)
            _ic_print "Decides what happens if AFWall readiness is never proven during boot."
            ;;
        RADIO_SUPPRESSION)
            _ic_print "Optionally pauses radios/services while firewall protection starts."
            _ic_print "Most users can leave this off unless they need stricter boot blocking."
            ;;
        BLOCK_FORWARD)
            _ic_print "Adds temporary protection for devices using this phone as a hotspot."
            ;;
        BLOCK_INPUT)
            _ic_print "Adds temporary protection for incoming connections during boot."
            ;;
        VPN_LOCKDOWN_MODE)
            _ic_print "Controls Android's 'block connections without VPN' setting during boot."
            _ic_print "Only matters if you use always-on VPN or VPN lockdown."
            ;;
        DEBUG)
            _ic_print "Controls how much troubleshooting detail is written to logs."
            ;;
    esac
}

_ic_print_option() {
    local scope="$1" idx="$2" value="$3" desc
    desc="$(_ic_option_desc "$scope" "$value")"
    if [ -n "$desc" ]; then
        _ic_print "$idx) \`$value\`  ($desc)"
    else
        _ic_print "$idx) \`$value\`"
    fi
}

ic_select_bool() {
    local question="$1" default="${2:-1}" scope="${3:-}"
    IC_BOOL_RESULT="$default"
    _ic_any_input_avail || return 0
    _ic_flush_events
    _ic_question_header "$question"
    _ic_scope_synopsis "$scope"
    _ic_print_option "$scope" 1 1
    _ic_print_option "$scope" 2 0
    _ic_print "VOL+: choose `1`   VOL-: choose `0`   (${_IC_KEY_TIMEOUT}s keeps `${IC_BOOL_RESULT}`)"
    ic_volkey; case $? in 0) IC_BOOL_RESULT=1 ;; 1) IC_BOOL_RESULT=0 ;; esac
}

ic_select_enum() {
    local question="$1" options="$2" default="$3" scope="${4:-}" opt count idx total current i
    IC_ENUM_RESULT="$default"
    _ic_any_input_avail || return 0
    _ic_flush_events
    _ic_question_header "$question"
    _ic_scope_synopsis "$scope"
    total=0
    for opt in $options; do total=$((total+1)); done
    idx=1; count=0
    for opt in $options; do
        count=$((count+1))
        [ "$opt" = "$default" ] && idx=$count
        _ic_print_option "$scope" "$count" "$opt"
    done
    while :; do
        i=0; for opt in $options; do i=$((i+1)); [ "$i" = "$idx" ] && { current="$opt"; break; }; done
        _ic_print "Current: [$idx/$total] \`$current\`"
        ic_volkey; case $? in
          0) IC_ENUM_RESULT="$current"; return 0 ;;
          1) idx=$((idx+1)); [ "$idx" -gt "$total" ] && idx=1 ;;
          *) IC_ENUM_RESULT="$default"; return 0 ;;
        esac
    done
}

_ic_select_profile() {
    _ic_print ""
    _ic_print "  v4.3.0 profiles: standard, minimal, strict, recovery, custom"
    ic_select_enum "Protection profile:" "standard minimal strict recovery custom" standard profile
}

_ic_select_custom() {
    ic_select_enum "LEAK_PROTECTION_MODE: boot leak protection style:" "balanced strict recovery_friendly" "${IC_LEAK_PROTECTION_MODE}" LEAK_PROTECTION_MODE
    IC_LEAK_PROTECTION_MODE="$IC_ENUM_RESULT"
    ic_select_enum "WATCHDOG_POLICY: action if AFWall proof never arrives:" "block unblock" "${IC_WATCHDOG_POLICY}" WATCHDOG_POLICY
    IC_WATCHDOG_POLICY="$IC_ENUM_RESULT"
    ic_select_enum "RADIO_SUPPRESSION: lower-layer radio/service handling:" "off safe strict" "${IC_RADIO_SUPPRESSION}" RADIO_SUPPRESSION
    IC_RADIO_SUPPRESSION="$IC_ENUM_RESULT"
    ic_select_bool "BLOCK_FORWARD: temporary tether/client forwarding block:" "${IC_BLOCK_FORWARD}" BLOCK_FORWARD
    IC_BLOCK_FORWARD="$IC_BOOL_RESULT"
    ic_select_bool "BLOCK_INPUT: temporary inbound block:" "${IC_BLOCK_INPUT}" BLOCK_INPUT
    IC_BLOCK_INPUT="$IC_BOOL_RESULT"
    ic_select_enum "VPN_LOCKDOWN_MODE: Android always-on VPN lockdown handling:" "off preserve restore" "${IC_VPN_LOCKDOWN_MODE}" VPN_LOCKDOWN_MODE
    IC_VPN_LOCKDOWN_MODE="$IC_ENUM_RESULT"
    ic_select_bool "DEBUG: logging detail:" "${IC_DEBUG}" DEBUG
    IC_DEBUG="$IC_BOOL_RESULT"
}

_ic_quote() { printf '%s' "$1" | sed "s/'/'\\''/g"; }

ic_write_config() {
    local dest="$1" vp
    mkdir -p "$(dirname "$dest")" 2>/dev/null || true
    chmod 700 "$(dirname "$dest")" 2>/dev/null || true
    vp="$(_ic_quote "${IC_VPN_PROVIDER_PACKAGES:-auto}")"
    cat > "$dest" <<EOF_CFG || return 1
#!/system/bin/sh
# AFWall Boot AntiLeak v4.3.0 local overrides.  Generated by installer/reconfigure.
LEAK_PROTECTION_MODE=${IC_LEAK_PROTECTION_MODE}
INTEGRATION_MODE=${IC_INTEGRATION_MODE}
POLL_INTERVAL_SECS=${IC_POLL_INTERVAL_SECS}
FAST_STABLE_SECS=${IC_FAST_STABLE_SECS}
SLOW_STABLE_SECS=${IC_SLOW_STABLE_SECS}
WATCHDOG_SERVICE_SECS=${IC_WATCHDOG_SERVICE_SECS}
WATCHDOG_BOOT_COMPLETED_SECS=${IC_WATCHDOG_BOOT_COMPLETED_SECS}
WATCHDOG_POLICY=${IC_WATCHDOG_POLICY}
BLOCK_FORWARD=${IC_BLOCK_FORWARD}
BLOCK_INPUT=${IC_BLOCK_INPUT}
RADIO_SUPPRESSION=${IC_RADIO_SUPPRESSION}
AFWALL_PACKAGE=${IC_AFWALL_PACKAGE}
VPN_LOCKDOWN_MODE=${IC_VPN_LOCKDOWN_MODE}
VPN_PROVIDER_PACKAGES='$vp'
DEBUG=${IC_DEBUG}
TRANSPORT_ABSENCE_STABLE_SECS=${IC_TRANSPORT_ABSENCE_STABLE_SECS}
TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=${IC_TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT}
TRANSPORT_ORPHAN_STABLE_SECS=${IC_TRANSPORT_ORPHAN_STABLE_SECS}
TRANSPORT_INCONCLUSIVE_SECS=${IC_TRANSPORT_INCONCLUSIVE_SECS}
TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=${IC_TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT}
BLACKOUT_REASSERT_INTERVAL=${IC_BLACKOUT_REASSERT_INTERVAL}
RADIO_REASSERT_INTERVAL=${IC_RADIO_REASSERT_INTERVAL}
UNLOCK_POLL_INTERVAL=${IC_UNLOCK_POLL_INTERVAL}
AFWALL_RULE_DENSITY_MIN=${IC_AFWALL_RULE_DENSITY_MIN}
EOF_CFG
    chmod 644 "$dest" 2>/dev/null || true
}

ic_render_summary() {
    _ic_print ""
    _ic_print "  ── v4.3.0 Configuration Summary ─────────────────────"
    _ic_print "  Mode:              ${IC_LEAK_PROTECTION_MODE}"
    _ic_print "  Watchdog:          ${IC_WATCHDOG_POLICY} (${IC_WATCHDOG_SERVICE_SECS}s service / ${IC_WATCHDOG_BOOT_COMPLETED_SECS}s boot-complete)"
    _ic_print "  Blocks:            forward=${IC_BLOCK_FORWARD} input=${IC_BLOCK_INPUT}"
    _ic_print "  Radio suppression: ${IC_RADIO_SUPPRESSION}"
    _ic_print "  AFWall package:    ${IC_AFWALL_PACKAGE}"
    _ic_print "  VPN:               ${IC_VPN_LOCKDOWN_MODE} providers=${IC_VPN_PROVIDER_PACKAGES}"
    _ic_print "  Debug:             ${IC_DEBUG}"
}

ic_run_config_selection() {
    local mode="${1:-install}" dest
    dest="${MODDIR:-${MODPATH:-/data/adb/modules/${_IC_MODULE_ID}}}/config.local.sh"
    ic_apply_defaults
    _ic_print ""
    _ic_print "  v4.3.0 is a breaking config cleanup release."
    _ic_print "  Old external config paths are never sourced and are removed after a successful write."
    [ -f "${_IC_LEGACY_DATA}/config.sh" ] && _ic_print "  Legacy external config scheduled for cleanup: ${_IC_LEGACY_DATA}/config.sh"
    [ -f "${_IC_LEGACY_DATA}/installer.cfg" ] && _ic_print "  WARNING: legacy external installer config ignored: ${_IC_LEGACY_DATA}/installer.cfg"
    ic_detect_keys
    _ic_select_profile
    case "$IC_ENUM_RESULT" in custom) _ic_select_custom ;; *) ic_apply_profile "$IC_ENUM_RESULT" ;; esac
    ic_apply_auto_vpn_defaults
    ic_render_summary
    _ic_print "  Writing module-local config: $dest"
    if ic_write_config "$dest"; then
        ic_cleanup_legacy_config_files
        return 0
    fi
    return 1
}
