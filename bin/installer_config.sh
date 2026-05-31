#!/system/bin/sh
# AFWall Boot AntiLeak — Installer configuration helpers.
#
# Sourced by common/install.sh (installer context) and reconfigure.sh (runtime).
# Never executed directly.
#
# REQUIRED: Caller must set IC_CONTEXT before sourcing this file:
#   IC_CONTEXT=installer   → use ui_print for output (Magisk installer)
#   IC_CONTEXT=runtime     → use echo for output (terminal reconfigure)
#
# OUTPUT variable naming convention:
#   IC_*        — config values selected/loaded (e.g. IC_INTEGRATION_MODE)
#   IC_BOOL_RESULT  — result of last ic_select_bool call
#   IC_ENUM_RESULT  — result of last ic_select_enum call
#
# NON-INTERACTIVE fallback priority (documented here for reference):
#   1. External installer.cfg at _IC_INSTALLER_CFG, if present
#   2. Existing persistent config at _IC_PERSISTENT_CFG (upgrade preservation)
#   3. Interactive volume-key selection (primary: raw getevent; fallback: keycheck)
#   4. Safe defaults (standard profile)

# ── Module paths ──────────────────────────────────────────────────────────────

_IC_MODULE_ID="AFWall-Boot-AntiLeak"
_IC_MODULE_DATA="/data/adb/${_IC_MODULE_ID}"
_IC_PERSISTENT_CFG="${_IC_MODULE_DATA}/config.sh"
_IC_INSTALLER_CFG="${_IC_MODULE_DATA}/installer.cfg"
_IC_KEY_TIMEOUT=10
_IC_KEY_RETRIES=2

# ── Input detection state (set by ic_detect_keys) ─────────────────────────────
_IC_KEYS_AVAIL=0        # 1 = raw getevent path is usable
_IC_GETEVENT_PATH=""    # resolved path to getevent binary
_IC_GETEVENT_PROBE_RC=-1 # exit code from the availability probe
_IC_EVENT_NODES=0       # 1 = /dev/input/event* nodes are present
_IC_KEYCHECK_AVAIL=0    # 1 = arch-appropriate keycheck binary found
_IC_KEYCHECK_PATH=""    # resolved path to keycheck binary

# ── Output abstraction ─────────────────────────────────────────────────────────
# Routes to ui_print (installer) or echo (runtime) based on IC_CONTEXT.

_ic_print() {
    case "${IC_CONTEXT:-installer}" in
        runtime) echo "$1" ;;
        *)       ui_print "$1" ;;
    esac
}

# ── Default config values ─────────────────────────────────────────────────────
# Mirrors the defaults in config.sh shipped with the module.

ic_apply_defaults() {
    IC_INTEGRATION_MODE="auto"
    IC_ENABLE_FORWARD_BLOCK="1"
    IC_ENABLE_INPUT_BLOCK="0"
    IC_LOWLEVEL_MODE="off"
    IC_LOWLEVEL_WIFI_DATA_OFF="0"
    IC_LOWLEVEL_INTERFACE_QUIESCE="0"
    IC_LOWLEVEL_USE_WIFI_SERVICE="0"
    IC_LOWLEVEL_USE_PHONE_DATA_CMD="0"
    IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="0"
    IC_LOWLEVEL_USE_TETHER_STOP="0"
    IC_VPN_LOCKDOWN_BOOT_ENFORCE="0"
    IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE="0"
    IC_VPN_LOCKDOWN_PROVIDER_PACKAGES=""
    IC_AFWALL_READY_REQUIRE_BOOT_COMPLETED="1"
    IC_AFWALL_READY_REQUIRE_UNLOCK="1"
    IC_AFWALL_READY_MIN_POST_UNLOCK_SECS="8"
    IC_TIMEOUT_START_AFTER_READY_GATE="1"
    IC_TIMEOUT_SECS="90"
    IC_TIMEOUT_POLICY="fail_closed"
    IC_AUTO_TIMEOUT_UNBLOCK="0"
    IC_TIMEOUT_UNLOCK_GATED="1"
    IC_WIFI_AFWALL_GATE="0"
    IC_MOBILE_AFWALL_GATE="0"
    IC_RADIO_REASSERT_INTERVAL="10"
    IC_UNLOCK_POLL_INTERVAL="5"
    IC_POLL_INTERVAL_SECS="1"
    IC_FAST_STABLE_SECS="2"
    IC_SLOW_STABLE_SECS="6"
    IC_BOOT_COMPLETE_ACCELERATE="1"
    IC_AFWALL_RULE_DENSITY_MIN="3"
    IC_SETTLE_SECS="5"
    IC_DEBUG="0"

    # Tracks whether install/update inputs explicitly set sensitive options.
    IC_EXPLICIT_VPN_LOCKDOWN_BOOT_ENFORCE="0"
    IC_EXPLICIT_VPN_LOCKDOWN_RELEASE_ON_RESTORE="0"
    IC_EXPLICIT_LOWLEVEL_WIFI_DATA_OFF="0"
}

# ── Profile application ───────────────────────────────────────────────────────
# Apply a named profile preset to IC_* variables.
# Profiles: standard (default), minimal, strict.
# 'custom' is handled by the caller via _ic_select_custom.

ic_apply_profile() {
    local profile="$1"
    ic_apply_defaults
    case "$profile" in
        minimal)
            IC_LOWLEVEL_MODE="off"
            IC_LOWLEVEL_WIFI_DATA_OFF="0"
            IC_LOWLEVEL_INTERFACE_QUIESCE="0"
            IC_LOWLEVEL_USE_WIFI_SERVICE="0"
            IC_LOWLEVEL_USE_PHONE_DATA_CMD="0"
            IC_LOWLEVEL_USE_TETHER_STOP="0"
            ;;
        strict)
            IC_LOWLEVEL_MODE="strict"
            IC_LOWLEVEL_WIFI_DATA_OFF="1"
            IC_ENABLE_INPUT_BLOCK="1"
            IC_LOWLEVEL_INTERFACE_QUIESCE="1"
            IC_LOWLEVEL_USE_WIFI_SERVICE="1"
            IC_LOWLEVEL_USE_PHONE_DATA_CMD="1"
            IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="1"
            IC_LOWLEVEL_USE_TETHER_STOP="1"
            IC_TIMEOUT_POLICY="fail_closed"
            IC_AUTO_TIMEOUT_UNBLOCK="0"
            ;;
        standard)
            # Fast reconnect profile: early netfilter hard block does the leak
            # protection; Android Wi-Fi/mobile-data state is left alone.
            IC_LOWLEVEL_MODE="off"
            IC_LOWLEVEL_WIFI_DATA_OFF="0"
            ;;
    esac
}

# ── Config key reader ─────────────────────────────────────────────────────────
# Read a single KEY=value entry from a config file.
# Strips inline # comments (e.g. "180 # note" → "180"), then quotes/whitespace.
# Returns empty string if the key is absent.

_ic_read_key() {
    local key="$1" file="$2"
    grep "^${key}=" "$file" 2>/dev/null | tail -1 | cut -d= -f2 \
        | sed 's/[[:space:]]*#.*//' | tr -d '"'"'"'[:space:]'
}

# Read a KEY=value entry while preserving internal whitespace.
# Trims inline comments, surrounding quotes, and surrounding whitespace only.
_ic_read_key_preserve_ws() {
    local key="$1" file="$2" raw
    raw="$(grep "^${key}=" "$file" 2>/dev/null | tail -1 | cut -d= -f2-)"
    [ -n "$raw" ] || { printf ''; return 0; }
    raw="$(printf '%s' "$raw" | sed 's/[[:space:]]*#.*//')"
    raw="$(printf '%s' "$raw" | sed 's/^[[:space:]]*//; s/[[:space:]]*$//')"
    raw="$(printf '%s' "$raw" | sed 's/^"//; s/"$//; s/^'\''//; s/'\''$//')"
    printf '%s' "$raw"
}

_ic_key_exists() {
    local key="$1" file="$2"
    grep "^${key}=" "$file" >/dev/null 2>&1
}

_ic_settings_get_secure() {
    local key="$1"
    settings get secure "$key" 2>/dev/null | tr -d '
' | sed 's/^[[:space:]]*//; s/[[:space:]]*$//'
}

_ic_value_is_set() {
    case "$1" in
        ""|null|NULL|none|None|0) return 1 ;;
    esac
    return 0
}

ic_detect_always_on_vpn() {
    IC_DETECTED_ALWAYS_ON_VPN_APP="$(_ic_settings_get_secure always_on_vpn_app)"
    IC_DETECTED_ALWAYS_ON_VPN_LOCKDOWN="$(_ic_settings_get_secure always_on_vpn_lockdown)"
    if _ic_value_is_set "$IC_DETECTED_ALWAYS_ON_VPN_APP"; then
        IC_HAS_ALWAYS_ON_VPN="1"
    else
        IC_HAS_ALWAYS_ON_VPN="0"
    fi
}

ic_apply_auto_vpn_defaults() {
    ic_detect_always_on_vpn
    if [ "${IC_HAS_ALWAYS_ON_VPN:-0}" != "1" ]; then
        _ic_print "  [vpn] Android always-on VPN not detected; module VPN lockdown remains ${IC_VPN_LOCKDOWN_BOOT_ENFORCE:-0}."
        return 0
    fi

    _ic_print "  [vpn] Android always-on VPN detected: ${IC_DETECTED_ALWAYS_ON_VPN_APP}"
    _ic_print "  [vpn] Android lockdown setting: ${IC_DETECTED_ALWAYS_ON_VPN_LOCKDOWN:-<unset>}"

    if [ "${IC_EXPLICIT_VPN_LOCKDOWN_BOOT_ENFORCE:-0}" != "1" ]; then
        IC_VPN_LOCKDOWN_BOOT_ENFORCE="1"
        _ic_print "  [vpn] Enabling module VPN lockdown integration because no explicit module config was present."
    else
        _ic_print "  [vpn] Preserving explicit VPN_LOCKDOWN_BOOT_ENFORCE=${IC_VPN_LOCKDOWN_BOOT_ENFORCE}."
    fi

    if [ "${IC_EXPLICIT_VPN_LOCKDOWN_RELEASE_ON_RESTORE:-0}" != "1" ]; then
        IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE="1"
        _ic_print "  [vpn] Enabling VPN lockdown restore handling because no explicit module config was present."
    else
        _ic_print "  [vpn] Preserving explicit VPN_LOCKDOWN_RELEASE_ON_RESTORE=${IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE}."
    fi
}

ic_apply_wifi_data_off_consistency() {
    if [ "${IC_LOWLEVEL_WIFI_DATA_OFF:-0}" = "1" ]; then
        [ "${IC_LOWLEVEL_MODE:-off}" = "off" ] && IC_LOWLEVEL_MODE="safe"
        IC_LOWLEVEL_USE_WIFI_SERVICE="1"
        IC_LOWLEVEL_USE_PHONE_DATA_CMD="1"
        _ic_print "  [radio] Aggressive Wi-Fi/mobile-data OFF mode is ENABLED."
        _ic_print "  [radio] WARNING: this can slow reconnect/release after boot/unlock while Android re-associates and revalidates networks."
    else
        _ic_print "  [radio] Fast reconnect mode: Wi-Fi/mobile-data are left alone; early netfilter hard block remains the leak protection."
    fi
}

# ── Load existing config ───────────────────────────────────────────────────────
# Read recognized config keys from a config.sh file into IC_* variables.
# Only overwrites an IC_* variable if the key is present in the file.
# Returns 0 if file was read, 1 if file does not exist.

ic_load_existing_config() {
    local cfg_file="$1"
    [ -f "$cfg_file" ] || return 1

    local val
    val=$(_ic_read_key INTEGRATION_MODE "$cfg_file")
    [ -n "$val" ] && IC_INTEGRATION_MODE="$val"

    val=$(_ic_read_key ENABLE_FORWARD_BLOCK "$cfg_file")
    [ -n "$val" ] && IC_ENABLE_FORWARD_BLOCK="$val"

    val=$(_ic_read_key ENABLE_INPUT_BLOCK "$cfg_file")
    [ -n "$val" ] && IC_ENABLE_INPUT_BLOCK="$val"

    val=$(_ic_read_key LOWLEVEL_MODE "$cfg_file")
    [ -n "$val" ] && IC_LOWLEVEL_MODE="$val"

    if _ic_key_exists LOWLEVEL_WIFI_DATA_OFF "$cfg_file"; then
        val=$(_ic_read_key LOWLEVEL_WIFI_DATA_OFF "$cfg_file")
        [ -n "$val" ] && IC_LOWLEVEL_WIFI_DATA_OFF="$val"
        IC_EXPLICIT_LOWLEVEL_WIFI_DATA_OFF="1"
    fi

    val=$(_ic_read_key LOWLEVEL_INTERFACE_QUIESCE "$cfg_file")
    [ -n "$val" ] && IC_LOWLEVEL_INTERFACE_QUIESCE="$val"

    val=$(_ic_read_key LOWLEVEL_USE_WIFI_SERVICE "$cfg_file")
    [ -n "$val" ] && IC_LOWLEVEL_USE_WIFI_SERVICE="$val"

    val=$(_ic_read_key LOWLEVEL_USE_PHONE_DATA_CMD "$cfg_file")
    [ -n "$val" ] && IC_LOWLEVEL_USE_PHONE_DATA_CMD="$val"

    val=$(_ic_read_key LOWLEVEL_USE_BLUETOOTH_MANAGER "$cfg_file")
    [ -n "$val" ] && IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="$val"

    val=$(_ic_read_key LOWLEVEL_USE_TETHER_STOP "$cfg_file")
    [ -n "$val" ] && IC_LOWLEVEL_USE_TETHER_STOP="$val"

    if _ic_key_exists VPN_LOCKDOWN_BOOT_ENFORCE "$cfg_file"; then
        val=$(_ic_read_key VPN_LOCKDOWN_BOOT_ENFORCE "$cfg_file")
        [ -n "$val" ] && IC_VPN_LOCKDOWN_BOOT_ENFORCE="$val"
        IC_EXPLICIT_VPN_LOCKDOWN_BOOT_ENFORCE="1"
    fi

    if _ic_key_exists VPN_LOCKDOWN_RELEASE_ON_RESTORE "$cfg_file"; then
        val=$(_ic_read_key VPN_LOCKDOWN_RELEASE_ON_RESTORE "$cfg_file")
        [ -n "$val" ] && IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE="$val"
        IC_EXPLICIT_VPN_LOCKDOWN_RELEASE_ON_RESTORE="1"
    fi

    val=$(_ic_read_key_preserve_ws VPN_LOCKDOWN_PROVIDER_PACKAGES "$cfg_file")
    [ -n "$val" ] && IC_VPN_LOCKDOWN_PROVIDER_PACKAGES="$val"

    val=$(_ic_read_key AFWALL_READY_REQUIRE_BOOT_COMPLETED "$cfg_file")
    [ -n "$val" ] && IC_AFWALL_READY_REQUIRE_BOOT_COMPLETED="$val"

    val=$(_ic_read_key AFWALL_READY_REQUIRE_UNLOCK "$cfg_file")
    [ -n "$val" ] && IC_AFWALL_READY_REQUIRE_UNLOCK="$val"

    val=$(_ic_read_key AFWALL_READY_MIN_POST_UNLOCK_SECS "$cfg_file")
    [ -n "$val" ] && IC_AFWALL_READY_MIN_POST_UNLOCK_SECS="$val"

    val=$(_ic_read_key TIMEOUT_START_AFTER_READY_GATE "$cfg_file")
    [ -n "$val" ] && IC_TIMEOUT_START_AFTER_READY_GATE="$val"

    val=$(_ic_read_key TIMEOUT_SECS "$cfg_file")
    [ -n "$val" ] && IC_TIMEOUT_SECS="$val"

    val=$(_ic_read_key TIMEOUT_POLICY "$cfg_file")
    [ -n "$val" ] && IC_TIMEOUT_POLICY="$val"

    val=$(_ic_read_key AUTO_TIMEOUT_UNBLOCK "$cfg_file")
    [ -n "$val" ] && IC_AUTO_TIMEOUT_UNBLOCK="$val"

    val=$(_ic_read_key TIMEOUT_UNLOCK_GATED "$cfg_file")
    [ -n "$val" ] && IC_TIMEOUT_UNLOCK_GATED="$val"

    val=$(_ic_read_key WIFI_AFWALL_GATE "$cfg_file")
    [ -n "$val" ] && IC_WIFI_AFWALL_GATE="$val"

    val=$(_ic_read_key MOBILE_AFWALL_GATE "$cfg_file")
    [ -n "$val" ] && IC_MOBILE_AFWALL_GATE="$val"

    val=$(_ic_read_key RADIO_REASSERT_INTERVAL "$cfg_file")
    [ -n "$val" ] && IC_RADIO_REASSERT_INTERVAL="$val"

    val=$(_ic_read_key UNLOCK_POLL_INTERVAL "$cfg_file")
    [ -n "$val" ] && IC_UNLOCK_POLL_INTERVAL="$val"

    val=$(_ic_read_key POLL_INTERVAL_SECS "$cfg_file")
    [ -n "$val" ] && IC_POLL_INTERVAL_SECS="$val"

    val=$(_ic_read_key FAST_STABLE_SECS "$cfg_file")
    [ -n "$val" ] && IC_FAST_STABLE_SECS="$val"

    val=$(_ic_read_key SLOW_STABLE_SECS "$cfg_file")
    [ -n "$val" ] && IC_SLOW_STABLE_SECS="$val"

    val=$(_ic_read_key BOOT_COMPLETE_ACCELERATE "$cfg_file")
    [ -n "$val" ] && IC_BOOT_COMPLETE_ACCELERATE="$val"

    val=$(_ic_read_key AFWALL_RULE_DENSITY_MIN "$cfg_file")
    [ -n "$val" ] && IC_AFWALL_RULE_DENSITY_MIN="$val"

    val=$(_ic_read_key SETTLE_SECS "$cfg_file")
    [ -n "$val" ] && IC_SETTLE_SECS="$val"

    val=$(_ic_read_key DEBUG "$cfg_file")
    [ -n "$val" ] && IC_DEBUG="$val"

    return 0
}

# ── External installer.cfg parser ─────────────────────────────────────────────
# Loads a pre-seeded installer config from the device.
# Supports IC_PROFILE=<name> for profile selection plus individual key overrides.
# Only honoured during install (mode=install), not reconfigure.
# Returns 0 if file was found and read, 1 otherwise.

ic_parse_external_config() {
    local cfg_file="${1:-${_IC_INSTALLER_CFG}}"
    [ -f "$cfg_file" ] || return 1

    local profile
    profile=$(_ic_read_key IC_PROFILE "$cfg_file")
    if [ -n "$profile" ]; then
        ic_apply_profile "$profile"
    fi

    ic_load_existing_config "$cfg_file"
    return 0
}

# ── Input diagnostics renderer ────────────────────────────────────────────────
# Prints a summary of the input detection state set by ic_detect_keys.
# Call after ic_detect_keys to show what was found and why.

ic_render_input_diagnostics() {
    _ic_print "  [getevent] path=${_IC_GETEVENT_PATH:-<not found>}"
    if [ "${_IC_EVENT_NODES}" = "1" ]; then
        _ic_print "  [getevent] event nodes present=yes"
    else
        _ic_print "  [getevent] event nodes present=no"
    fi
    if [ "${_IC_GETEVENT_PROBE_RC}" != "-1" ]; then
        _ic_print "  [getevent] probe rc=${_IC_GETEVENT_PROBE_RC}"
    fi
    if [ "${_IC_KEYS_AVAIL}" = "1" ]; then
        _ic_print "  [getevent] raw key detection available=yes"
    else
        _ic_print "  [getevent] raw key detection available=no"
    fi
    if [ "${_IC_KEYCHECK_AVAIL}" = "1" ]; then
        _ic_print "  [keycheck] path=${_IC_KEYCHECK_PATH}"
        _ic_print "  [keycheck] available=yes"
    else
        _ic_print "  [keycheck] available=no"
    fi
}

# ── Keycheck binary path resolver ─────────────────────────────────────────────
# Resolves the arch-appropriate keycheck binary path.
# Checks MODPATH (installer), MODDIR (runtime), then the persistent module dir.
# Prints the path if found and executable, or nothing if not.

_ic_get_keycheck_path() {
    local _arch _kcdir _kc_bin _dir _sub _name
    _arch="$(uname -m 2>/dev/null)"

    # Candidate names grouped by runtime arch alias. This supports our bundled
    # keycheck binaries and common MMT/module-installer layouts used by many
    # modules (e.g. META-INF/com/google/android/<arch>/keycheck).
    local _names=""
    case "$_arch" in
        aarch64|arm64)
            _names="keycheck-arm64 keycheck-aarch64 keycheck-arm keycheck"
            ;;
        arm*)
            _names="keycheck-arm keycheck-armeabi-v7a keycheck"
            ;;
        x86_64)
            _names="keycheck-x86_64 keycheck-x64 keycheck-x86 keycheck"
            ;;
        x86|i686)
            _names="keycheck-x86 keycheck-i686 keycheck"
            ;;
        *)
            _names="keycheck"
            ;;
    esac

    for _dir in "${MODPATH:-}" "${MODDIR:-}" "/data/adb/modules/${_IC_MODULE_ID}"; do
        [ -z "$_dir" ] && continue

        # 1) Native module layout used by this project.
        _kcdir="${_dir}/bin/keycheck"
        if [ -d "$_kcdir" ]; then
            for _name in $_names; do
                _kc_bin="${_kcdir}/${_name}"
                [ -x "$_kc_bin" ] && printf '%s' "$_kc_bin" && return 0
            done
        fi

        # 2) MMT-style extracted installer paths (arch-preferred ordering).
        local _subdirs=""
        case "$_arch" in
            aarch64|arm64) _subdirs="arm64 arm x64 x86" ;;
            arm*)          _subdirs="arm arm64 x64 x86" ;;
            x86_64)        _subdirs="x64 x86 arm64 arm" ;;
            x86|i686)      _subdirs="x86 x64 arm64 arm" ;;
            *)             _subdirs="arm64 arm x64 x86" ;;
        esac
        for _sub_name in $_subdirs; do
            _sub="${_dir}/META-INF/com/google/android/${_sub_name}"
            [ -d "$_sub" ] || continue
            for _name in $_names; do
                _kc_bin="${_sub}/${_name}"
                [ -x "$_kc_bin" ] && printf '%s' "$_kc_bin" && return 0
            done
        done

        # 3) Flat fallback path (some installers drop helper into root/)
        for _name in $_names; do
            _kc_bin="${_dir}/${_name}"
            [ -x "$_kc_bin" ] && printf '%s' "$_kc_bin" && return 0
        done

    done
}

# ── Volume key detection ───────────────────────────────────────────────────────
# Probes for usable input methods and sets detection state variables:
#   _IC_KEYS_AVAIL     — 1 if raw getevent path is usable
#   _IC_GETEVENT_PATH  — resolved getevent binary
#   _IC_GETEVENT_PROBE_RC — exit code from 1-second probe
#   _IC_EVENT_NODES    — 1 if /dev/input/event* nodes exist
#   _IC_KEYCHECK_AVAIL — 1 if arch-appropriate keycheck binary found
#   _IC_KEYCHECK_PATH  — resolved keycheck binary
#
# Fix: timeout exit code 124 (timed out) indicates getevent launched successfully
# and streamed events — that is the EXPECTED outcome for a streaming command.
# Only a non-zero non-124 exit code (e.g. permission denied, binary error)
# should be treated as "getevent unavailable".

ic_detect_keys() {
    _IC_KEYS_AVAIL=0
    _IC_GETEVENT_PATH=""
    _IC_GETEVENT_PROBE_RC=-1
    _IC_EVENT_NODES=0
    _IC_KEYCHECK_AVAIL=0
    _IC_KEYCHECK_PATH=""

    # 1. Resolve getevent binary: prefer explicit /system/bin path for reliability
    if [ -x /system/bin/getevent ]; then
        _IC_GETEVENT_PATH="/system/bin/getevent"
    elif command -v getevent >/dev/null 2>&1; then
        _IC_GETEVENT_PATH="$(command -v getevent)"
    else
        # No getevent binary found; check keycheck only
        local _kc
        _kc="$(_ic_get_keycheck_path)"
        if [ -n "$_kc" ]; then
            _IC_KEYCHECK_AVAIL=1
            _IC_KEYCHECK_PATH="$_kc"
        fi
        return 0
    fi

    # 2. Confirm /dev/input/event* nodes exist
    local _f
    for _f in /dev/input/event*; do
        [ -e "$_f" ] && { _IC_EVENT_NODES=1; break; }
    done

    if [ "${_IC_EVENT_NODES}" != "1" ]; then
        # Check keycheck fallback even without event nodes
        local _kc
        _kc="$(_ic_get_keycheck_path)"
        if [ -n "$_kc" ]; then
            _IC_KEYCHECK_AVAIL=1
            _IC_KEYCHECK_PATH="$_kc"
        fi
        return 0
    fi

    # 3. Short probe to verify getevent launches without error.
    #    Exit 0: getevent exited cleanly (unlikely for a streaming command).
    #    Exit 124: timeout killed getevent — this means it launched successfully
    #              and was producing output. Both are acceptable.
    #    Any other non-zero exit: binary error, permission denied, or missing dep.
    timeout 1 "$_IC_GETEVENT_PATH" -l >/dev/null 2>&1
    _IC_GETEVENT_PROBE_RC=$?

    case "${_IC_GETEVENT_PROBE_RC}" in
        0|124) _IC_KEYS_AVAIL=1 ;;
    esac

    # 4. Resolve keycheck fallback regardless of getevent result
    local _kc
    _kc="$(_ic_get_keycheck_path)"
    if [ -n "$_kc" ]; then
        _IC_KEYCHECK_AVAIL=1
        _IC_KEYCHECK_PATH="$_kc"
    fi
}

# ── Input method availability check ──────────────────────────────────────────
# Returns 0 (true) if any interactive input method is available.

_ic_any_input_avail() {
    [ "${_IC_KEYS_AVAIL}" = "1" ] || [ "${_IC_KEYCHECK_AVAIL}" = "1" ]
}

# ── Stale event flusher ───────────────────────────────────────────────────────
# Discards key events buffered BEFORE the upcoming interactive prompt.
# Must be called BEFORE printing the prompt so that fast keypresses made
# in response to the prompt text are NOT consumed by the flush.
# A 1-second read window is used; its exit code is ignored.

_ic_flush_events() {
    [ "${_IC_KEYS_AVAIL}" = "1" ] || return 0
    timeout 1 "$_IC_GETEVENT_PATH" -lq >/dev/null 2>&1 || true
}

# ── Raw getevent key reader ───────────────────────────────────────────────────
# Single-attempt raw getevent read matching KEY_VOLUME DOWN events.
# Returns: 0=VOL+, 1=VOL-, 2=timeout/no-match.
#
# Matches only DOWN events (not UP) to avoid double-firing.
# getevent -lq output format: "[ts] /dev/input/eventN: EV_KEY KEY_VOLUMEDOWN DOWN"

ic_volkey_raw() {
    local secs="${1:-${_IC_KEY_TIMEOUT}}"
    [ "${_IC_KEYS_AVAIL}" = "1" ] || return 2

    local _kraw
    _kraw=$(timeout "$secs" "$_IC_GETEVENT_PATH" -lq 2>/dev/null \
        | grep -m1 -E 'EV_KEY.*(KEY_VOLUMEUP|KEY_VOLUMEDOWN|0073|0072).*(DOWN|00000001)') || true

    case "${_kraw}" in
        *KEY_VOLUMEUP*|*0073*)   return 0 ;;
        *KEY_VOLUMEDOWN*|*0072*) return 1 ;;
        *)                return 2 ;;
    esac
}

# ── Keycheck binary key reader ────────────────────────────────────────────────
# Single-attempt read using the arch-appropriate keycheck binary.
# Returns: 0=VOL+, 1=VOL-, 2=unavailable/timeout.
# keycheck exit codes: 41=VOL+, 42=VOL-.

ic_volkey_keycheck() {
    local secs="${1:-${_IC_KEY_TIMEOUT}}"
    [ "${_IC_KEYCHECK_AVAIL}" = "1" ] || return 2

    local _kc_rc
    timeout "$secs" "$_IC_KEYCHECK_PATH" >/dev/null 2>&1
    _kc_rc=$?

    case "${_kc_rc}" in
        41) return 0 ;;
        42) return 1 ;;
        *)  return 2 ;;
    esac
}

# ── Retry loop: raw getevent → keycheck → give up ────────────────────────────
# Implements the battle-tested chooseport-style retry pattern.
# Tries raw getevent first; on timeout, falls back to keycheck; retries up to
# max_tries rounds before declaring no input.
# Returns: 0=VOL+, 1=VOL-, 2=no input after all retries.
#
# Budget: `secs` is the TOTAL per-attempt window. When both methods are
# available the budget is split (raw gets secs/2, keycheck gets the rest)
# so the combined per-attempt wait never exceeds `secs`. When only one
# method is available it receives the full budget.

ic_chooseport() {
    local secs="${1:-${_IC_KEY_TIMEOUT}}"
    local max_tries="${2:-${_IC_KEY_RETRIES}}"
    local i=0 rc

    # Quick bail: no methods available
    _ic_any_input_avail || return 2

    # Split per-attempt budget so total wait stays within secs.
    local raw_secs kc_secs
    if [ "${_IC_KEYS_AVAIL}" = "1" ] && [ "${_IC_KEYCHECK_AVAIL}" = "1" ]; then
        raw_secs=$((secs / 2))
        kc_secs=$((secs - raw_secs))
    else
        raw_secs="$secs"
        kc_secs="$secs"
    fi

    while [ "$i" -lt "$max_tries" ]; do
        i=$((i + 1))

        # Primary: raw getevent
        if [ "${_IC_KEYS_AVAIL}" = "1" ]; then
            ic_volkey_raw "$raw_secs"
            rc=$?
            if [ "$rc" != "2" ]; then
                [ "$rc" = "0" ] && _ic_print "  [getevent] detected VOL+"
                [ "$rc" = "1" ] && _ic_print "  [getevent] detected VOL-"
                return "$rc"
            fi
            _ic_print "  [getevent] no key press in window $i/$max_tries"
        fi

        # Fallback: keycheck binary
        if [ "${_IC_KEYCHECK_AVAIL}" = "1" ]; then
            ic_volkey_keycheck "$kc_secs"
            rc=$?
            if [ "$rc" != "2" ]; then
                [ "$rc" = "0" ] && _ic_print "  [keycheck] detected VOL+"
                [ "$rc" = "1" ] && _ic_print "  [keycheck] detected VOL-"
                return "$rc"
            fi
        fi

        [ "$i" -lt "$max_tries" ] && _ic_print "  Waiting for key press again..."
    done

    _ic_print "  [input] no key detected after $max_tries attempt(s) — using default"
    return 2
}

# ── Volume key reader (public API) ────────────────────────────────────────────
# Wait for one volume key press with a configurable timeout.
# Returns: 0=VOL+ (yes/select), 1=VOL- (no/next), 2=timeout or unavailable.
# Internally uses ic_chooseport for raw → keycheck retry logic.

ic_volkey() {
    local secs="${1:-${_IC_KEY_TIMEOUT}}"
    _ic_any_input_avail || return 2
    ic_chooseport "$secs" "${_IC_KEY_RETRIES}"
}

# ── Boolean question ───────────────────────────────────────────────────────────
# ic_select_bool <question> <default:1|0>
# Prompts with VOL+=YES / VOL-=NO. Stores result in IC_BOOL_RESULT.
# Falls back to <default> on timeout or when keys are unavailable.

ic_select_bool() {
    local question="$1"
    local default="${2:-1}"
    local def_label
    IC_BOOL_RESULT="$default"

    [ "$default" = "1" ] && def_label="YES" || def_label="NO"

    if ! _ic_any_input_avail; then
        return 0
    fi

    _ic_flush_events
    _ic_print "  $question"
    _ic_print "  VOL+: YES   VOL-: NO   (${_IC_KEY_TIMEOUT}s → ${def_label})"

    ic_volkey "${_IC_KEY_TIMEOUT}"
    case $? in
        0) IC_BOOL_RESULT="1" ;;
        1) IC_BOOL_RESULT="0" ;;
        2) IC_BOOL_RESULT="$default" ;;
    esac
}

# ── Enum question (indexed list + cycle) ─────────────────────────────────────
# ic_select_enum <question> <space-separated-options> <default>
# Prints the full ordered list FIRST so users can see all choices up front.
# Then allows cycling current selection: VOL+=select current, VOL-=next.
# Timeout chooses <default>. Stores result in IC_ENUM_RESULT.

ic_select_enum() {
    local question="$1"
    local options="$2"
    local default="$3"
    IC_ENUM_RESULT="$default"

    if ! _ic_any_input_avail; then
        return 0
    fi

    local opt count total idx current_opt
    count=0
    # shellcheck disable=SC2086 # options is an internal space-separated enum list.
    set -- $options
    total=$#

    _ic_flush_events
    _ic_print "  $question"
    _ic_print "  Options (in order):"
    for opt in $options; do
        count=$((count + 1))
        if [ "$opt" = "$default" ]; then
            _ic_print "   $count) $opt (default)"
        else
            _ic_print "   $count) $opt"
        fi
    done
    _ic_print "  VOL+: SELECT current   VOL-: next   (${_IC_KEY_TIMEOUT}s timeout → $default)"

    count=0
    idx=1
    for opt in $options; do
        count=$((count + 1))
        [ "$opt" = "$default" ] && idx=$count
    done

    count=0
    for opt in $options; do
        count=$((count + 1))
        if [ "$count" = "$idx" ]; then
            current_opt="$opt"
            break
        fi
    done

    while true; do
        _ic_print "  Current: [$idx/$total] $current_opt"

        ic_volkey "${_IC_KEY_TIMEOUT}"
        case $? in
            0)
                IC_ENUM_RESULT="$current_opt"
                return 0
                ;;
            1)
                idx=$((idx + 1))
                if [ "$idx" -gt "$total" ]; then
                    idx=1
                fi
                local i=0
                for opt in $options; do
                    i=$((i + 1))
                    if [ "$i" = "$idx" ]; then
                        current_opt="$opt"
                        break
                    fi
                done
                ;;
            2)
                IC_ENUM_RESULT="$default"
                return 0
                ;;
        esac
    done

    IC_ENUM_RESULT="$default"
}

# ── Profile picker ─────────────────────────────────────────────────────────────
# Presents the four protection profiles via ic_select_enum.
# Stores the chosen profile in IC_ENUM_RESULT.

_ic_select_profile() {
    _ic_print ""
    _ic_print "  ── Protection Profile ──────────────────────────────"
    _ic_print "  standard — fast reconnect: netfilter block, no Wi-Fi/data toggle (default)"
    _ic_print "  minimal  — same firewall-only fast path, fewer optional blocks"
    _ic_print "  strict   — maximum protection, includes Wi-Fi/data OFF warning"
    _ic_print "  custom   — configure each option individually"
    _ic_print "  ───────────────────────────────────────────────────"
    ic_select_enum \
        "Select a protection profile:" \
        "standard minimal strict custom" \
        "standard"
}

# ── Custom option selection ────────────────────────────────────────────────────
# Walks through each individually tunable config option.
# Reads current IC_* values as defaults so upgrade-preserved values are shown.

_ic_select_custom() {
    _ic_print ""
    _ic_print "  ── Custom Configuration ────────────────────────────"
    _ic_print ""

    _ic_print "  Integration mode: how to coordinate with AFWall fixLeak."
    _ic_print "  auto=inspect; prefer_module=always-on; prefer_afwall=defer; off=disable."
    ic_select_enum \
        "Integration mode:" \
        "auto prefer_module prefer_afwall off" \
        "${IC_INTEGRATION_MODE:-auto}"
    IC_INTEGRATION_MODE="$IC_ENUM_RESULT"
    _ic_print "  → integration_mode: $IC_INTEGRATION_MODE"
    _ic_print ""

    ic_select_bool \
        "Enable FORWARD chain block? (protects tethering/hotspot clients)" \
        "${IC_ENABLE_FORWARD_BLOCK:-1}"
    IC_ENABLE_FORWARD_BLOCK="$IC_BOOL_RESULT"
    _ic_print "  → forward_block: $IC_ENABLE_FORWARD_BLOCK"
    _ic_print ""

    ic_select_bool \
        "Enable INPUT chain block? (blocks inbound connections; loopback exempt)" \
        "${IC_ENABLE_INPUT_BLOCK:-0}"
    IC_ENABLE_INPUT_BLOCK="$IC_BOOL_RESULT"
    _ic_print "  → input_block: $IC_ENABLE_INPUT_BLOCK"
    _ic_print ""

    _ic_print "  Lower-layer mode: service/interface suppression beneath iptables."
    _ic_print "  safe=default; strict=all-services; off=firewall-only."
    ic_select_enum \
        "Lower-layer suppression mode:" \
        "safe strict off" \
        "${IC_LOWLEVEL_MODE:-safe}"
    IC_LOWLEVEL_MODE="$IC_ENUM_RESULT"
    _ic_print "  → lowlevel_mode: $IC_LOWLEVEL_MODE"
    _ic_print ""

    if [ "$IC_LOWLEVEL_MODE" != "off" ]; then
        ic_select_bool \
            "Enable interface quiesce? (brings interfaces DOWN during boot)" \
            "${IC_LOWLEVEL_INTERFACE_QUIESCE:-1}"
        IC_LOWLEVEL_INTERFACE_QUIESCE="$IC_BOOL_RESULT"
        _ic_print "  → interface_quiesce: $IC_LOWLEVEL_INTERFACE_QUIESCE"
        _ic_print ""

        ic_select_bool \
            "Manage Wi-Fi service? (disable/restore around boot)" \
            "${IC_LOWLEVEL_USE_WIFI_SERVICE:-1}"
        IC_LOWLEVEL_USE_WIFI_SERVICE="$IC_BOOL_RESULT"
        _ic_print "  → wifi_service: $IC_LOWLEVEL_USE_WIFI_SERVICE"
        _ic_print ""

        ic_select_bool \
            "Manage mobile data? (disable/restore around boot)" \
            "${IC_LOWLEVEL_USE_PHONE_DATA_CMD:-1}"
        IC_LOWLEVEL_USE_PHONE_DATA_CMD="$IC_BOOL_RESULT"
        _ic_print "  → mobile_data: $IC_LOWLEVEL_USE_PHONE_DATA_CMD"
        _ic_print ""

        ic_select_bool \
            "Manage Bluetooth? (disable/restore around boot; disrupts BT devices)" \
            "${IC_LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}"
        IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="$IC_BOOL_RESULT"
        _ic_print "  → bluetooth: $IC_LOWLEVEL_USE_BLUETOOTH_MANAGER"
        _ic_print ""

        ic_select_bool \
            "Manage tethering? (stop tethering during boot)" \
            "${IC_LOWLEVEL_USE_TETHER_STOP:-1}"
        IC_LOWLEVEL_USE_TETHER_STOP="$IC_BOOL_RESULT"
        _ic_print "  → tether_stop: $IC_LOWLEVEL_USE_TETHER_STOP"
        _ic_print ""

        ic_select_bool \
            "Enable VPN lockdown during boot? (block connections without VPN)" \
            "${IC_VPN_LOCKDOWN_BOOT_ENFORCE:-1}"
        IC_VPN_LOCKDOWN_BOOT_ENFORCE="$IC_BOOL_RESULT"
        _ic_print "  → vpn_lockdown_boot_enforce: $IC_VPN_LOCKDOWN_BOOT_ENFORCE"
        _ic_print ""

        ic_select_bool \
            "Release VPN lockdown during restore? (after AFWall handoff)" \
            "${IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE:-1}"
        IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE="$IC_BOOL_RESULT"
        _ic_print "  → vpn_lockdown_release_on_restore: $IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE"
        _ic_print ""
    else
        IC_LOWLEVEL_WIFI_DATA_OFF="0"
        IC_LOWLEVEL_INTERFACE_QUIESCE="0"
        IC_LOWLEVEL_USE_WIFI_SERVICE="0"
        IC_LOWLEVEL_USE_PHONE_DATA_CMD="0"
        IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="0"
        IC_LOWLEVEL_USE_TETHER_STOP="0"
        # Keep VPN choices independent of lower-layer mode; install/update may
        # auto-enable them when Android always-on VPN is already configured.
    fi

    ic_select_bool \
        "Enable debug logging? (verbose [DEBUG] entries in boot.log)" \
        "${IC_DEBUG:-0}"
    IC_DEBUG="$IC_BOOL_RESULT"
    _ic_print "  → debug: $IC_DEBUG"
}

# ── Write config to file ──────────────────────────────────────────────────────
# Writes IC_* variables as a valid shell config file to <dest>.
# Creates parent directories. Returns 0 on success, 1 on failure.

ic_write_config() {
    local dest="$1"
    mkdir -p "$(dirname "$dest")" 2>/dev/null || true
    chmod 700 "$(dirname "$dest")" 2>/dev/null || true

    printf '#!/system/bin/sh\n' > "$dest" || {
        _ic_print "  ERROR: Cannot write config to $dest"
        return 1
    }
    printf 'INTEGRATION_MODE=%s\n'            "${IC_INTEGRATION_MODE:-auto}"            >> "$dest"
    printf 'ENABLE_FORWARD_BLOCK=%s\n'        "${IC_ENABLE_FORWARD_BLOCK:-1}"           >> "$dest"
    printf 'ENABLE_INPUT_BLOCK=%s\n'          "${IC_ENABLE_INPUT_BLOCK:-0}"             >> "$dest"
    printf 'LOWLEVEL_MODE=%s\n'               "${IC_LOWLEVEL_MODE:-off}"                >> "$dest"
    printf 'LOWLEVEL_WIFI_DATA_OFF=%s\n'      "${IC_LOWLEVEL_WIFI_DATA_OFF:-0}"         >> "$dest"
    printf 'LOWLEVEL_INTERFACE_QUIESCE=%s\n'  "${IC_LOWLEVEL_INTERFACE_QUIESCE:-0}"     >> "$dest"
    printf 'LOWLEVEL_USE_WIFI_SERVICE=%s\n'   "${IC_LOWLEVEL_USE_WIFI_SERVICE:-0}"      >> "$dest"
    printf 'LOWLEVEL_USE_PHONE_DATA_CMD=%s\n' "${IC_LOWLEVEL_USE_PHONE_DATA_CMD:-0}"    >> "$dest"
    printf 'LOWLEVEL_USE_BLUETOOTH_MANAGER=%s\n' "${IC_LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" >> "$dest"
    printf 'LOWLEVEL_USE_TETHER_STOP=%s\n'    "${IC_LOWLEVEL_USE_TETHER_STOP:-0}"       >> "$dest"
    printf 'VPN_LOCKDOWN_BOOT_ENFORCE=%s\n'   "${IC_VPN_LOCKDOWN_BOOT_ENFORCE:-0}"      >> "$dest"
    printf 'VPN_LOCKDOWN_RELEASE_ON_RESTORE=%s\n' "${IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE:-0}" >> "$dest"
    # Single-quote the VPN package list to prevent shell injection if the value
    # contains special characters; embedded single quotes are escaped as '\''.
    _vpn_pkgs="$(printf '%s' "${IC_VPN_LOCKDOWN_PROVIDER_PACKAGES:-}" | sed "s/'/'\\\\''/g")"
    printf "VPN_LOCKDOWN_PROVIDER_PACKAGES='%s'\n" "$_vpn_pkgs" >> "$dest"
    printf 'AFWALL_READY_REQUIRE_BOOT_COMPLETED=%s\n' "${IC_AFWALL_READY_REQUIRE_BOOT_COMPLETED:-1}" >> "$dest"
    printf 'AFWALL_READY_REQUIRE_UNLOCK=%s\n' "${IC_AFWALL_READY_REQUIRE_UNLOCK:-1}"   >> "$dest"
    printf 'AFWALL_READY_MIN_POST_UNLOCK_SECS=%s\n' "${IC_AFWALL_READY_MIN_POST_UNLOCK_SECS:-8}" >> "$dest"
    printf 'TIMEOUT_START_AFTER_READY_GATE=%s\n' "${IC_TIMEOUT_START_AFTER_READY_GATE:-1}" >> "$dest"
    printf 'TIMEOUT_SECS=%s\n'                "${IC_TIMEOUT_SECS:-90}"                 >> "$dest"
    printf 'TIMEOUT_POLICY=%s\n'             "${IC_TIMEOUT_POLICY:-fail_closed}"       >> "$dest"
    printf 'AUTO_TIMEOUT_UNBLOCK=%s\n'       "${IC_AUTO_TIMEOUT_UNBLOCK:-0}"           >> "$dest"
    printf 'TIMEOUT_UNLOCK_GATED=%s\n'       "${IC_TIMEOUT_UNLOCK_GATED:-1}"           >> "$dest"
    printf 'WIFI_AFWALL_GATE=%s\n'           "${IC_WIFI_AFWALL_GATE:-0}"               >> "$dest"
    printf 'MOBILE_AFWALL_GATE=%s\n'         "${IC_MOBILE_AFWALL_GATE:-0}"             >> "$dest"
    printf 'RADIO_REASSERT_INTERVAL=%s\n'    "${IC_RADIO_REASSERT_INTERVAL:-10}"       >> "$dest"
    printf 'UNLOCK_POLL_INTERVAL=%s\n'       "${IC_UNLOCK_POLL_INTERVAL:-5}"           >> "$dest"
    printf 'POLL_INTERVAL_SECS=%s\n'          "${IC_POLL_INTERVAL_SECS:-1}"             >> "$dest"
    printf 'FAST_STABLE_SECS=%s\n'            "${IC_FAST_STABLE_SECS:-2}"               >> "$dest"
    printf 'SLOW_STABLE_SECS=%s\n'            "${IC_SLOW_STABLE_SECS:-6}"               >> "$dest"
    printf 'BOOT_COMPLETE_ACCELERATE=%s\n'    "${IC_BOOT_COMPLETE_ACCELERATE:-1}"       >> "$dest"
    printf 'AFWALL_RULE_DENSITY_MIN=%s\n'     "${IC_AFWALL_RULE_DENSITY_MIN:-3}"        >> "$dest"
    printf 'SETTLE_SECS=%s\n'                 "${IC_SETTLE_SECS:-5}"                   >> "$dest"
    printf 'DEBUG=%s\n'                       "${IC_DEBUG:-0}"                         >> "$dest"

    chmod 644 "$dest" 2>/dev/null || true
    return 0
}

# ── Configuration summary renderer ────────────────────────────────────────────
# Prints a human-readable summary of all current IC_* values.

ic_render_summary() {
    local fwd_str in_str quiesce_str wifi_str data_str bt_str teth_str dbg_str radio_str
    local auto_unblock_str unlock_gate_str vpn_boot_str vpn_release_str gate_timeout_str

    [ "${IC_ENABLE_FORWARD_BLOCK:-1}" = "1" ]       && fwd_str="enabled"    || fwd_str="disabled"
    [ "${IC_ENABLE_INPUT_BLOCK:-0}" = "1" ]          && in_str="enabled"     || in_str="disabled"
    [ "${IC_LOWLEVEL_WIFI_DATA_OFF:-0}" = "1" ]      && radio_str="aggressive OFF" || radio_str="fast reconnect"
    [ "${IC_LOWLEVEL_INTERFACE_QUIESCE:-0}" = "1" ]  && quiesce_str="yes"    || quiesce_str="no"
    [ "${IC_LOWLEVEL_USE_WIFI_SERVICE:-0}" = "1" ]   && wifi_str="managed"   || wifi_str="unmanaged"
    [ "${IC_LOWLEVEL_USE_PHONE_DATA_CMD:-0}" = "1" ] && data_str="managed"   || data_str="unmanaged"
    [ "${IC_LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ] && bt_str="managed"  || bt_str="unmanaged"
    [ "${IC_LOWLEVEL_USE_TETHER_STOP:-1}" = "1" ]   && teth_str="managed"   || teth_str="unmanaged"
    [ "${IC_DEBUG:-0}" = "1" ]                       && dbg_str="enabled"    || dbg_str="disabled"
    [ "${IC_AUTO_TIMEOUT_UNBLOCK:-0}" = "1" ]        && auto_unblock_str="enabled"  || auto_unblock_str="DISABLED (safe default)"
    [ "${IC_TIMEOUT_UNLOCK_GATED:-1}" = "1" ]        && unlock_gate_str="yes"       || unlock_gate_str="no"
    [ "${IC_TIMEOUT_START_AFTER_READY_GATE:-1}" = "1" ] && gate_timeout_str="yes"    || gate_timeout_str="no"
    [ "${IC_VPN_LOCKDOWN_BOOT_ENFORCE:-1}" = "1" ]   && vpn_boot_str="enabled" || vpn_boot_str="disabled"
    [ "${IC_VPN_LOCKDOWN_RELEASE_ON_RESTORE:-1}" = "1" ] && vpn_release_str="enabled" || vpn_release_str="disabled"

    _ic_print ""
    _ic_print "  ── Configuration Summary ───────────────────────────"
    _ic_print "  Integration mode:      ${IC_INTEGRATION_MODE:-auto}"
    _ic_print "  FORWARD block:         $fwd_str"
    _ic_print "  INPUT block:           $in_str"
    _ic_print "  Lower-layer mode:      ${IC_LOWLEVEL_MODE:-off}"
    _ic_print "  Wi-Fi/data OFF mode:   $radio_str"
    _ic_print "  Interface quiesce:     $quiesce_str"
    _ic_print "  Wi-Fi management:      $wifi_str"
    _ic_print "  Mobile data:           $data_str"
    _ic_print "  Bluetooth:             $bt_str"
    _ic_print "  Tethering:             $teth_str"
    _ic_print "  VPN lockdown on boot:  $vpn_boot_str"
    _ic_print "  VPN release restore:   $vpn_release_str"
    _ic_print "  Readiness gate:        boot=${IC_AFWALL_READY_REQUIRE_BOOT_COMPLETED:-1} unlock=${IC_AFWALL_READY_REQUIRE_UNLOCK:-1} +${IC_AFWALL_READY_MIN_POST_UNLOCK_SECS:-8}s"
    _ic_print "  AFWall timeout:        ${IC_TIMEOUT_SECS:-90}s"
    _ic_print "  Timeout policy:        ${IC_TIMEOUT_POLICY:-fail_closed}"
    _ic_print "  Auto timeout unblock:  $auto_unblock_str"
    _ic_print "  Unlock-gated timeout:  $unlock_gate_str"
    _ic_print "  Timeout after gate:    $gate_timeout_str"
    _ic_print "  Wi-Fi AFWall gate:     ${IC_WIFI_AFWALL_GATE:-0}"
    _ic_print "  Mobile AFWall gate:    ${IC_MOBILE_AFWALL_GATE:-0}"
    _ic_print "  Settle delay:          ${IC_SETTLE_SECS:-5}s"
    _ic_print "  Debug logging:         $dbg_str"
    _ic_print "  ───────────────────────────────────────────────────"
}

# ── Main config selection flow ─────────────────────────────────────────────────
# Entry point called by install.sh and reconfigure.sh.
#
# Parameters:
#   $1  mode — "install" (default) or "reconfigure"
#   $2  dest — config file destination (default: _IC_PERSISTENT_CFG)
#
# Config is always written to $dest (persistent user config path).
# Callers must handle any post-write actions (e.g. display help text).

ic_run_config_selection() {
    local mode="${1:-install}"
    local dest="${2:-${_IC_PERSISTENT_CFG}}"
    local source="defaults"

    ic_apply_defaults

    _ic_print ""
    _ic_print "  ── Config Selection ────────────────────────────────"
    if [ "$mode" = "install" ]; then
        _ic_print "  Fallback priority:"
        _ic_print "    1. installer.cfg (${_IC_INSTALLER_CFG})"
        _ic_print "    2. existing config (upgrade preserve)"
        _ic_print "    3. interactive volume-key selection"
        _ic_print "    4. standard defaults"
    else
        _ic_print "  Fallback priority (reconfigure mode):"
        _ic_print "    1. existing config (shown as defaults)"
        _ic_print "    2. interactive volume-key selection"
        _ic_print "    3. standard defaults"
        _ic_print "  Note: installer.cfg is ignored during reconfigure."
    fi
    _ic_print "  ───────────────────────────────────────────────────"

    if [ "$mode" = "install" ] && ic_parse_external_config "${_IC_INSTALLER_CFG}"; then
        _ic_print ""
        _ic_print "  [config] Pre-seeded installer.cfg found — using it."
        source="installer_cfg"
    fi

    local is_upgrade=0
    if [ -f "${_IC_PERSISTENT_CFG}" ]; then
        is_upgrade=1
    fi

    if [ "$source" = "defaults" ] && [ "$is_upgrade" = "1" ]; then
        _ic_print ""
        _ic_print "  Existing config detected at:"
        _ic_print "    ${_IC_PERSISTENT_CFG}"
        ic_load_existing_config "${_IC_PERSISTENT_CFG}"
        source="existing"
    fi

    if [ "$source" = "defaults" ] || [ "$source" = "existing" ]; then
        ic_detect_keys
        ic_render_input_diagnostics

        if _ic_any_input_avail; then
            _ic_print ""
            _ic_print "  Volume key input available."
            _ic_print "  Use VOL+ to select, VOL- to advance to next option."
            _ic_print "  No key press within ${_IC_KEY_TIMEOUT}s = use default shown."

            if [ "$is_upgrade" = "1" ]; then
                _ic_print ""
                _ic_flush_events
                _ic_print "  Reconfigure options? (VOL+=YES, VOL-=keep existing, ${_IC_KEY_TIMEOUT}s → keep)"
                ic_volkey "${_IC_KEY_TIMEOUT}"
                case $? in
                    0)
                        _ic_print "  → Reconfiguring..."
                        ic_apply_defaults
                        source="interactive"
                        ;;
                    *)
                        _ic_print "  → Keeping existing configuration."
                        ;;
                esac
            else
                source="interactive"
            fi
        else
            _ic_print ""
            _ic_print "  Volume key input unavailable."
            if [ "$is_upgrade" = "1" ]; then
                _ic_print "  [config] Upgrade: preserving existing config."
            else
                _ic_print "  [config] Fresh install: using standard defaults."
            fi
        fi
    fi

    if [ "$source" = "interactive" ]; then
        _ic_select_profile
        local profile="$IC_ENUM_RESULT"
        _ic_print ""
        _ic_print "  → Profile selected: $profile"

        if [ "$profile" = "custom" ]; then
            ic_apply_defaults
            _ic_select_custom
        else
            ic_apply_profile "$profile"
        fi
    fi

    _ic_print ""
    ic_apply_auto_vpn_defaults
    ic_apply_wifi_data_off_consistency

    ic_render_summary

    _ic_print ""
    _ic_print "  Writing config to: $dest"
    if ic_write_config "$dest"; then
        _ic_print "  Config written."
    else
        _ic_print "  ERROR: Config write failed — install may be incomplete."
        return 1
    fi

    return 0
}
