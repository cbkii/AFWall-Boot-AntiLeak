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
#   3. Interactive volume-key selection, if getevent is usable
#   4. Safe defaults (standard profile)

# ── Module paths ──────────────────────────────────────────────────────────────

_IC_MODULE_DATA="/data/adb/AFWall-Boot-AntiLeak"
_IC_PERSISTENT_CFG="${_IC_MODULE_DATA}/config.sh"
_IC_INSTALLER_CFG="${_IC_MODULE_DATA}/installer.cfg"
_IC_KEY_TIMEOUT=10
_IC_KEYS_AVAIL=0

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
    IC_LOWLEVEL_MODE="safe"
    IC_LOWLEVEL_INTERFACE_QUIESCE="1"
    IC_LOWLEVEL_USE_WIFI_SERVICE="1"
    IC_LOWLEVEL_USE_PHONE_DATA_CMD="1"
    IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="0"
    IC_LOWLEVEL_USE_TETHER_STOP="1"
    IC_TIMEOUT_SECS="120"
    IC_SETTLE_SECS="5"
    IC_DEBUG="0"
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
            IC_LOWLEVEL_INTERFACE_QUIESCE="0"
            IC_LOWLEVEL_USE_WIFI_SERVICE="0"
            IC_LOWLEVEL_USE_PHONE_DATA_CMD="0"
            IC_LOWLEVEL_USE_TETHER_STOP="0"
            ;;
        strict)
            IC_LOWLEVEL_MODE="strict"
            IC_ENABLE_INPUT_BLOCK="1"
            IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="1"
            ;;
        standard) ;;
    esac
}

# ── Load existing config ───────────────────────────────────────────────────────
# Read recognized config keys from a config.sh file into IC_* variables.
# Only overwrites an IC_* variable if the key is present in the file.
# Returns 0 if file was read, 1 if file does not exist.

ic_load_existing_config() {
    local cfg_file="$1"
    [ -f "$cfg_file" ] || return 1

    local val
    val=$(grep '^INTEGRATION_MODE=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_INTEGRATION_MODE="$val"

    val=$(grep '^ENABLE_FORWARD_BLOCK=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_ENABLE_FORWARD_BLOCK="$val"

    val=$(grep '^ENABLE_INPUT_BLOCK=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_ENABLE_INPUT_BLOCK="$val"

    val=$(grep '^LOWLEVEL_MODE=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_LOWLEVEL_MODE="$val"

    val=$(grep '^LOWLEVEL_INTERFACE_QUIESCE=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_LOWLEVEL_INTERFACE_QUIESCE="$val"

    val=$(grep '^LOWLEVEL_USE_WIFI_SERVICE=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_LOWLEVEL_USE_WIFI_SERVICE="$val"

    val=$(grep '^LOWLEVEL_USE_PHONE_DATA_CMD=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_LOWLEVEL_USE_PHONE_DATA_CMD="$val"

    val=$(grep '^LOWLEVEL_USE_BLUETOOTH_MANAGER=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="$val"

    val=$(grep '^LOWLEVEL_USE_TETHER_STOP=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_LOWLEVEL_USE_TETHER_STOP="$val"

    val=$(grep '^TIMEOUT_SECS=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_TIMEOUT_SECS="$val"

    val=$(grep '^SETTLE_SECS=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_SETTLE_SECS="$val"

    val=$(grep '^DEBUG=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    [ -n "$val" ] && IC_DEBUG="$val"

    return 0
}

# ── External installer.cfg parser ─────────────────────────────────────────────
# Loads a pre-seeded installer config from the device.
# Supports IC_PROFILE=<name> for profile selection plus individual key overrides.
# Returns 0 if file was found and read, 1 otherwise.

ic_parse_external_config() {
    local cfg_file="${1:-${_IC_INSTALLER_CFG}}"
    [ -f "$cfg_file" ] || return 1

    local profile
    profile=$(grep '^IC_PROFILE=' "$cfg_file" 2>/dev/null | tail -1 | cut -d= -f2 | tr -d '"'"'"'[:space:]')
    if [ -n "$profile" ]; then
        ic_apply_profile "$profile"
    fi

    ic_load_existing_config "$cfg_file"
    return 0
}

# ── Volume key detection ───────────────────────────────────────────────────────
# Sets _IC_KEYS_AVAIL=1 if getevent is present and usable, 0 otherwise.
# A 1-second probe is used to verify the tool actually starts without error.

ic_detect_keys() {
    _IC_KEYS_AVAIL=0
    command -v getevent >/dev/null 2>&1 || return 0
    timeout 1 getevent -l >/dev/null 2>&1 && _IC_KEYS_AVAIL=1 || true
}

# ── Volume key reader ─────────────────────────────────────────────────────────
# Wait for one volume key press with a configurable timeout.
# Returns: 0=VOL+ (yes/select), 1=VOL- (no/next), 2=timeout or unavailable.
#
# Uses `getevent -lq` which streams raw key events; `grep -m1` stops after the
# first KEY_VOLUME line. `timeout` kills getevent when the deadline is reached.

ic_volkey() {
    local secs="${1:-${_IC_KEY_TIMEOUT}}"
    [ "${_IC_KEYS_AVAIL}" = "1" ] || return 2

    local _kraw
    _kraw=$(timeout "$secs" getevent -lq 2>/dev/null | grep -m1 'KEY_VOLUME') || true

    case "${_kraw}" in
        *KEY_VOLUMEUP*)   return 0 ;;
        *KEY_VOLUMEDOWN*) return 1 ;;
        *)                return 2 ;;
    esac
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

    if [ "${_IC_KEYS_AVAIL}" != "1" ]; then
        return 0
    fi

    _ic_print "  $question"
    _ic_print "  VOL+: YES   VOL-: NO   (${_IC_KEY_TIMEOUT}s → ${def_label})"

    ic_volkey "${_IC_KEY_TIMEOUT}"
    case $? in
        0) IC_BOOL_RESULT="1" ;;
        1) IC_BOOL_RESULT="0" ;;
        2) IC_BOOL_RESULT="$default" ;;
    esac
}

# ── Enum question (cycle-through) ─────────────────────────────────────────────
# ic_select_enum <question> <space-separated-options> <default>
# Shows each option in turn: VOL+=select, VOL-=advance to next, timeout=default.
# Wraps around to default if all options are cycled without a VOL+ selection.
# Stores result in IC_ENUM_RESULT.

ic_select_enum() {
    local question="$1"
    local options="$2"
    local default="$3"
    IC_ENUM_RESULT="$default"

    if [ "${_IC_KEYS_AVAIL}" != "1" ]; then
        return 0
    fi

    _ic_print "  $question"
    _ic_print "  VOL+: SELECT   VOL-: next   (${_IC_KEY_TIMEOUT}s timeout → $default)"

    local opt count total
    count=0
    total=$(printf '%s\n' $options | wc -l | tr -d '[:space:]')

    for opt in $options; do
        count=$((count + 1))
        local mark=""
        [ "$opt" = "$default" ] && mark=" (default)"
        _ic_print "  [$count/$total] $opt$mark"
        _ic_print "  VOL+: SELECT this   VOL-: next option"

        ic_volkey "${_IC_KEY_TIMEOUT}"
        case $? in
            0)
                IC_ENUM_RESULT="$opt"
                return 0
                ;;
            1)
                continue
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
    _ic_print "  standard — full protection, recommended (default)"
    _ic_print "  minimal  — iptables firewall only, no lower-layer"
    _ic_print "  strict   — maximum protection, all features on"
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
    else
        IC_LOWLEVEL_INTERFACE_QUIESCE="0"
        IC_LOWLEVEL_USE_WIFI_SERVICE="0"
        IC_LOWLEVEL_USE_PHONE_DATA_CMD="0"
        IC_LOWLEVEL_USE_BLUETOOTH_MANAGER="0"
        IC_LOWLEVEL_USE_TETHER_STOP="0"
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
    printf 'LOWLEVEL_MODE=%s\n'               "${IC_LOWLEVEL_MODE:-safe}"               >> "$dest"
    printf 'LOWLEVEL_INTERFACE_QUIESCE=%s\n'  "${IC_LOWLEVEL_INTERFACE_QUIESCE:-1}"     >> "$dest"
    printf 'LOWLEVEL_USE_WIFI_SERVICE=%s\n'   "${IC_LOWLEVEL_USE_WIFI_SERVICE:-1}"      >> "$dest"
    printf 'LOWLEVEL_USE_PHONE_DATA_CMD=%s\n' "${IC_LOWLEVEL_USE_PHONE_DATA_CMD:-1}"    >> "$dest"
    printf 'LOWLEVEL_USE_BLUETOOTH_MANAGER=%s\n' "${IC_LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" >> "$dest"
    printf 'LOWLEVEL_USE_TETHER_STOP=%s\n'    "${IC_LOWLEVEL_USE_TETHER_STOP:-1}"       >> "$dest"
    printf 'TIMEOUT_SECS=%s\n'                "${IC_TIMEOUT_SECS:-120}"                >> "$dest"
    printf 'SETTLE_SECS=%s\n'                 "${IC_SETTLE_SECS:-5}"                   >> "$dest"
    printf 'DEBUG=%s\n'                       "${IC_DEBUG:-0}"                         >> "$dest"

    if [ ! -f "$dest" ]; then
        _ic_print "  ERROR: Config file not created at $dest"
        return 1
    fi
    chmod 644 "$dest" 2>/dev/null || true
    return 0
}

# ── Configuration summary renderer ────────────────────────────────────────────
# Prints a human-readable summary of all current IC_* values.

ic_render_summary() {
    local fwd_str in_str quiesce_str wifi_str data_str bt_str teth_str dbg_str

    [ "${IC_ENABLE_FORWARD_BLOCK:-1}" = "1" ]       && fwd_str="enabled"    || fwd_str="disabled"
    [ "${IC_ENABLE_INPUT_BLOCK:-0}" = "1" ]          && in_str="enabled"     || in_str="disabled"
    [ "${IC_LOWLEVEL_INTERFACE_QUIESCE:-1}" = "1" ]  && quiesce_str="yes"    || quiesce_str="no"
    [ "${IC_LOWLEVEL_USE_WIFI_SERVICE:-1}" = "1" ]   && wifi_str="managed"   || wifi_str="unmanaged"
    [ "${IC_LOWLEVEL_USE_PHONE_DATA_CMD:-1}" = "1" ] && data_str="managed"   || data_str="unmanaged"
    [ "${IC_LOWLEVEL_USE_BLUETOOTH_MANAGER:-0}" = "1" ] && bt_str="managed"  || bt_str="unmanaged"
    [ "${IC_LOWLEVEL_USE_TETHER_STOP:-1}" = "1" ]   && teth_str="managed"   || teth_str="unmanaged"
    [ "${IC_DEBUG:-0}" = "1" ]                       && dbg_str="enabled"    || dbg_str="disabled"

    _ic_print ""
    _ic_print "  ── Configuration Summary ───────────────────────────"
    _ic_print "  Integration mode:   ${IC_INTEGRATION_MODE:-auto}"
    _ic_print "  FORWARD block:      $fwd_str"
    _ic_print "  INPUT block:        $in_str"
    _ic_print "  Lower-layer mode:   ${IC_LOWLEVEL_MODE:-safe}"
    _ic_print "  Interface quiesce:  $quiesce_str"
    _ic_print "  Wi-Fi management:   $wifi_str"
    _ic_print "  Mobile data:        $data_str"
    _ic_print "  Bluetooth:          $bt_str"
    _ic_print "  Tethering:          $teth_str"
    _ic_print "  AFWall timeout:     ${IC_TIMEOUT_SECS:-120}s"
    _ic_print "  Settle delay:       ${IC_SETTLE_SECS:-5}s"
    _ic_print "  Debug logging:      $dbg_str"
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
    _ic_print "  Fallback priority:"
    _ic_print "    1. installer.cfg (${_IC_INSTALLER_CFG})"
    _ic_print "    2. existing config (upgrade preserve)"
    _ic_print "    3. interactive volume-key selection"
    _ic_print "    4. standard defaults"
    _ic_print "  ───────────────────────────────────────────────────"

    if ic_parse_external_config "${_IC_INSTALLER_CFG}"; then
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

        if [ "${_IC_KEYS_AVAIL}" = "1" ]; then
            _ic_print ""
            _ic_print "  Volume key input available."
            _ic_print "  Use VOL+ to select, VOL- to advance to next option."
            _ic_print "  No key press within ${_IC_KEY_TIMEOUT}s = use default shown."

            if [ "$is_upgrade" = "1" ]; then
                _ic_print ""
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
