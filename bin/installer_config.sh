#!/system/bin/sh
# AFWall Boot AntiLeak v5.1.0 — installer/reconfigure config helper.
# Breaking-change release: writes only module-local config.local.sh and never
# reads old external runtime/installer config paths.

_IC_MODULE_ID="AFWall-Boot-AntiLeak"
_IC_KEY_TIMEOUT=10
_IC_KEY_RETRIES=2

_ic_print() {
    case "${IC_CONTEXT:-installer}" in
        runtime) echo "$1" ;;
        *) ui_print "$1" ;;
    esac
}

ic_apply_defaults() {
    IC_LEAK_PROTECTION_MODE=balanced
    IC_INTEGRATION_MODE=auto
    IC_POLL_INTERVAL_SECS=2
    IC_FAST_STABLE_SECS=6
    IC_SLOW_STABLE_SECS=6
    IC_AFWALL_DELAY_GRACE_SECS=4
    IC_AFWALL_PREFS_RETRY_SECS=2
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
        profile:standard) printf '%s' 'recommended firewall-first defaults' ;;
        profile:minimal) printf '%s' 'local OUTPUT protection with fewer optional blocks' ;;
        profile:strict) printf '%s' 'adds inbound, tether, radio and VPN handling' ;;
        profile:recovery) printf '%s' 'restores connectivity on timeout without AFWall proof' ;;
        profile:custom) printf '%s' 'choose each main setting' ;;
        LEAK_PROTECTION_MODE:balanced) printf '%s' 'Standard/Minimal profile label; other keys define behavior' ;;
        LEAK_PROTECTION_MODE:strict) printf '%s' 'Strict profile label; extra protection comes from other keys' ;;
        LEAK_PROTECTION_MODE:recovery_friendly) printf '%s' 'Recovery profile label; timeout policy controls release' ;;
        WATCHDOG_POLICY:block) printf '%s' 'keep unresolved traffic blocked; Action restores access' ;;
        WATCHDOG_POLICY:unblock) printf '%s' 'remove module blocks on timeout without AFWall proof' ;;
        RADIO_SUPPRESSION:off) printf '%s' 'firewall-only; do not change radios or services' ;;
        RADIO_SUPPRESSION:safe) printf '%s' 'same non-disruptive radio handling as off in v5' ;;
        RADIO_SUPPRESSION:strict) printf '%s' 'disable Wi-Fi/data, quiesce interfaces and stop tethering' ;;
        BLOCK_FORWARD:1) printf '%s' 'also protect hotspot and tethered-client traffic' ;;
        BLOCK_FORWARD:0) printf '%s' 'protect only traffic created by this device' ;;
        BLOCK_INPUT:1) printf '%s' 'also block new inbound connections during handoff' ;;
        BLOCK_INPUT:0) printf '%s' 'do not add the temporary inbound block' ;;
        VPN_LOCKDOWN_MODE:off) printf '%s' 'do not manage Android VPN lockdown state' ;;
        VPN_LOCKDOWN_MODE:preserve) printf '%s' 'record current state and avoid settings writes' ;;
        VPN_LOCKDOWN_MODE:restore) printf '%s' 'enforce selected provider, then restore pre-boot state' ;;
        DEBUG:1) printf '%s' 'write detailed state and reason logs' ;;
        DEBUG:0) printf '%s' 'write normal concise logs' ;;
        *) printf '%s' '' ;;
    esac
}

_ic_scope_synopsis() {
    case "$1" in
        profile)
            _ic_print "Choose a ready-made set of related settings, or custom to choose them yourself."
            ;;
        LEAK_PROTECTION_MODE)
            _ic_print "This records profile intent in configuration and logs."
            _ic_print "The block, radio, VPN and timeout keys below control actual behavior."
            ;;
        WATCHDOG_POLICY)
            _ic_print "Choose the safety result if AFWall is still unproven when a timeout is reached."
            ;;
        RADIO_SUPPRESSION)
            _ic_print "Choose firewall-only protection or additional Wi-Fi, mobile and tether service changes."
            _ic_print "Most users should use off; safe is also non-disruptive in v5."
            ;;
        BLOCK_FORWARD)
            _ic_print "Choose whether hotspot and other tethered clients are blocked during handoff."
            ;;
        BLOCK_INPUT)
            _ic_print "Choose whether new incoming connections to this device are blocked during handoff."
            ;;
        VPN_LOCKDOWN_MODE)
            _ic_print "Choose whether Android always-on VPN lockdown is ignored, observed, or actively restored."
            _ic_print "This matters only when always-on VPN or lockdown is configured."
            ;;
        DEBUG)
            _ic_print "Choose whether boot.log includes detailed state transitions and decision reasons."
            ;;
    esac
}

_ic_print_option() {
    local scope="$1" idx="$2" value="$3" desc
    desc="$(_ic_option_desc "$scope" "$value")"
    if [ -n "$desc" ]; then
        _ic_print "$idx) $value  ($desc)"
    else
        _ic_print "$idx) $value"
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
    _ic_print "VOL+: choose 1   VOL-: choose 0   (${_IC_KEY_TIMEOUT}s keeps ${IC_BOOL_RESULT})"
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
        _ic_print "Current: [$idx/$total] $current"
        ic_volkey; case $? in
          0) IC_ENUM_RESULT="$current"; return 0 ;;
          1) idx=$((idx+1)); [ "$idx" -gt "$total" ] && idx=1 ;;
          *) IC_ENUM_RESULT="$default"; return 0 ;;
        esac
    done
}

_ic_select_profile() {
    _ic_print ""
    _ic_print "  v5.1.0 profiles: standard, minimal, strict, recovery, custom"
    ic_select_enum "Protection profile:" "standard minimal strict recovery custom" standard profile
}

_ic_select_custom() {
    ic_select_enum "Profile label for logs and support reports:" "balanced strict recovery_friendly" "${IC_LEAK_PROTECTION_MODE}" LEAK_PROTECTION_MODE
    IC_LEAK_PROTECTION_MODE="$IC_ENUM_RESULT"
    ic_select_enum "Safety action if AFWall proof never arrives:" "block unblock" "${IC_WATCHDOG_POLICY}" WATCHDOG_POLICY
    IC_WATCHDOG_POLICY="$IC_ENUM_RESULT"
    ic_select_enum "Additional Wi-Fi/mobile/tether service handling:" "off safe strict" "${IC_RADIO_SUPPRESSION}" RADIO_SUPPRESSION
    IC_RADIO_SUPPRESSION="$IC_ENUM_RESULT"
    ic_select_bool "Protect hotspot and tethered-client traffic:" "${IC_BLOCK_FORWARD}" BLOCK_FORWARD
    IC_BLOCK_FORWARD="$IC_BOOL_RESULT"
    ic_select_bool "Block new inbound connections during handoff:" "${IC_BLOCK_INPUT}" BLOCK_INPUT
    IC_BLOCK_INPUT="$IC_BOOL_RESULT"
    ic_select_enum "Android always-on VPN lockdown handling:" "off preserve restore" "${IC_VPN_LOCKDOWN_MODE}" VPN_LOCKDOWN_MODE
    IC_VPN_LOCKDOWN_MODE="$IC_ENUM_RESULT"
    ic_select_bool "Write detailed troubleshooting logs:" "${IC_DEBUG}" DEBUG
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
# AFWall Boot AntiLeak v5.1.0 local overrides. Generated by installer/reconfigure.
# This file is loaded after config.sh, so matching keys in this file take priority.

# What it does: Records the installer profile family in logs and support reports. The actual blocks, radio handling, and timeout action are controlled by separate keys below.
# Accepted values: balanced = Standard or Minimal profile label; strict = Strict profile label; recovery_friendly = Recovery-friendly profile label. Changing this key alone does not change the other settings.
LEAK_PROTECTION_MODE=${IC_LEAK_PROTECTION_MODE}

# What it does: Decides whether this module still installs its early firewall block when an AFWall-owned startup script is present.
# Accepted values: auto = install the module block and supplement any AFWall script; prefer_module = always install the module block; prefer_afwall = skip the module block only when an AFWall-owned afwallstart script is detected, otherwise install it; off = never install this module's boot block.
INTEGRATION_MODE=${IC_INTEGRATION_MODE}

# What it does: Balances handoff speed against boot-time CPU and iptables I/O; shorter intervals detect AFWall+ changes sooner but run more checks.
# Accepted values: whole seconds from 1 upward. Examples: 1, 2, 5.
POLL_INTERVAL_SECS=${IC_POLL_INTERVAL_SECS}

# What it does: Retains the old fast timing field for compatibility and post-boot calculations; the v5 generation guard does not use it to bypass the full stability proof.
# Accepted values: whole seconds from 0 upward. Examples: 0, 2, 6.
FAST_STABLE_SECS=${IC_FAST_STABLE_SECS}

# What it does: Requires the final ordered AFWall+ rule graph to remain unchanged for this period before temporary OUTPUT protection is removed.
# Accepted values: whole seconds from 0 upward. Examples: 3, 6, 10.
SLOW_STABLE_SECS=${IC_SLOW_STABLE_SECS}

# What it does: Prevents release during AFWall+'s delayed second rule pass by adding scheduling margin after AFWall+'s own startup delay.
# Accepted values: whole seconds from 0 upward. Examples: 0, 4, 10.
AFWALL_DELAY_GRACE_SECS=${IC_AFWALL_DELAY_GRACE_SECS}

# What it does: Limits how often encrypted AFWall+ preference files are re-read while they are unavailable, reducing repeated boot I/O.
# Accepted values: whole seconds from 0 upward. Examples: 1, 2, 5.
AFWALL_PREFS_RETRY_SECS=${IC_AFWALL_PREFS_RETRY_SECS}

# What it does: Starts the first timeout decision this long after the module worker begins, even if Android has not finished booting.
# Accepted values: whole seconds from 0 upward. Examples: 120, 300, 600.
WATCHDOG_SERVICE_SECS=${IC_WATCHDOG_SERVICE_SECS}

# What it does: Starts a second timeout decision this long after Android reports boot complete, preventing an endless offline state after the framework is ready.
# Accepted values: whole seconds from 0 upward. Examples: 120, 240, 600.
WATCHDOG_BOOT_COMPLETED_SECS=${IC_WATCHDOG_BOOT_COMPLETED_SECS}

# What it does: Defines the safety outcome when a configured timeout is reached without complete AFWall+ readiness proof.
# Accepted values: block = keep unresolved traffic blocked and continue low-rate diagnostics; unblock = remove module-owned blocks and restore connectivity even though AFWall+ readiness was not proven.
WATCHDOG_POLICY=${IC_WATCHDOG_POLICY}

# What it does: Extends the early block to traffic routed through the phone, protecting hotspot, USB-tethered, and Bluetooth-tethered clients.
# Accepted values: 1 to enable, 0 to disable.
BLOCK_FORWARD=${IC_BLOCK_FORWARD}

# What it does: Rejects new inbound network connections during handoff while keeping local loopback traffic available.
# Accepted values: 1 to enable, 0 to disable.
BLOCK_INPUT=${IC_BLOCK_INPUT}

# What it does: Chooses whether the kernel firewall alone is used or whether Wi-Fi, mobile data, interfaces, and tethering are also paused.
# Accepted values: off = firewall-only with no radio or service changes; safe = currently the same non-disruptive radio behavior as off, retained as a separate profile value; strict = disable Wi-Fi and mobile data, quiesce interfaces, and stop tethering until restore.
RADIO_SUPPRESSION=${IC_RADIO_SUPPRESSION}

# What it does: Determines which app process and preference directory are used to read AFWall+ startup delay and IPv6 ownership.
# Accepted values: auto = detect Donate, then Free, then the legacy package; dev.ukanth.ufirewall = AFWall+ Free; dev.ukanth.ufirewall.donate = AFWall+ Donate; com.ukanth.ufirewall = legacy AFWall package.
AFWALL_PACKAGE=${IC_AFWALL_PACKAGE}

# What it does: Chooses whether Android's always-on VPN and lockdown state is only observed or actively enforced and later restored.
# Accepted values: off = do not manage lockdown state; preserve = record the existing state and avoid writes; restore = enforce the selected provider during protection and restore the recorded pre-boot state after handoff.
VPN_LOCKDOWN_MODE=${IC_VPN_LOCKDOWN_MODE}

# What it does: Identifies which VPN app may be targeted when restore mode needs to enforce or restore Android lockdown.
# Accepted values: auto = use the currently configured always-on VPN provider when available; explicit package names = use only those apps, separated by spaces or commas; ch.protonvpn.android = Proton VPN example; com.wireguard.android = WireGuard example.
VPN_PROVIDER_PACKAGES='$vp'

# What it does: Adds detailed state transitions and diagnostic reasons to boot.log; it does not change firewall decisions.
# Accepted values: 1 to enable, 0 to disable.
DEBUG=${IC_DEBUG}

# What it does: Allows network service restoration after the expected AFWall+ Wi-Fi or mobile subtree has remained missing for this long, avoiding a permanent wait on devices that do not create it.
# Accepted values: whole seconds from 0 upward. Examples: 1, 3, 5.
TRANSPORT_ABSENCE_STABLE_SECS=${IC_TRANSPORT_ABSENCE_STABLE_SECS}

# What it does: Shortens the missing-subtree wait after Android is fully booted so connectivity is not delayed unnecessarily.
# Accepted values: whole seconds from 0 upward. Examples: 1, 2, 5.
TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT=${IC_TRANSPORT_ABSENCE_STABLE_SECS_POST_BOOT}

# What it does: Allows restoration when a transport subtree exists but is not reachable from the live AFWall+ graph, avoiding deadlock on stale chains.
# Accepted values: whole seconds from 0 upward. Examples: 1, 3, 5.
TRANSPORT_ORPHAN_STABLE_SECS=${IC_TRANSPORT_ORPHAN_STABLE_SECS}

# What it does: Forces a verified transport restore attempt after the network transport state cannot be classified for this long.
# Accepted values: whole seconds from 0 upward. Examples: 10, 20, 30.
TRANSPORT_INCONCLUSIVE_SECS=${IC_TRANSPORT_INCONCLUSIVE_SECS}

# What it does: Uses a shorter unclassified-state limit after Android reports boot complete.
# Accepted values: whole seconds from 0 upward. Examples: 5, 8, 15.
TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT=${IC_TRANSPORT_INCONCLUSIVE_SECS_POST_BOOT}

# What it does: Limits how often module-owned firewall chains are rechecked and repaired while handoff is pending; lower values increase iptables I/O.
# Accepted values: whole seconds from 0 upward. Examples: 5, 10, 20.
BLACKOUT_REASSERT_INTERVAL=${IC_BLACKOUT_REASSERT_INTERVAL}

# What it does: Limits how often strict lower-level network suppression is reapplied before restore; it has no practical effect when radio suppression is off.
# Accepted values: whole seconds from 0 upward. Examples: 5, 15, 30.
RADIO_REASSERT_INTERVAL=${IC_RADIO_REASSERT_INTERVAL}

# What it does: Controls diagnostic checks for user-unlock and credential-storage availability; unlock never proves AFWall+ readiness or releases traffic.
# Accepted values: whole seconds from 0 upward. Examples: 5, 10, 30.
UNLOCK_POLL_INTERVAL=${IC_UNLOCK_POLL_INTERVAL}

# What it does: Preserves an old diagnostic threshold for log compatibility; v5 release decisions ignore it.
# Accepted values: whole numbers from 0 upward. Examples: 0, 3, 5.
AFWALL_RULE_DENSITY_MIN=${IC_AFWALL_RULE_DENSITY_MIN}
EOF_CFG
    chmod 644 "$dest" 2>/dev/null || true
}

ic_render_summary() {
    _ic_print ""
    _ic_print "  ── v5.1.0 Configuration Summary ─────────────────────"
    _ic_print "  Profile label:     ${IC_LEAK_PROTECTION_MODE}"
    _ic_print "  Rule proof:        stable=${IC_SLOW_STABLE_SECS}s delay_grace=${IC_AFWALL_DELAY_GRACE_SECS}s prefs_retry=${IC_AFWALL_PREFS_RETRY_SECS}s"
    _ic_print "  Timeout action:    ${IC_WATCHDOG_POLICY} (${IC_WATCHDOG_SERVICE_SECS}s service / ${IC_WATCHDOG_BOOT_COMPLETED_SECS}s boot-complete)"
    _ic_print "  Extra blocks:      forward=${IC_BLOCK_FORWARD} input=${IC_BLOCK_INPUT}"
    _ic_print "  Radio handling:    ${IC_RADIO_SUPPRESSION}"
    _ic_print "  AFWall package:    ${IC_AFWALL_PACKAGE}"
    _ic_print "  VPN handling:      ${IC_VPN_LOCKDOWN_MODE} providers=${IC_VPN_PROVIDER_PACKAGES}"
    _ic_print "  Detailed logs:     ${IC_DEBUG}"
}

ic_run_config_selection() {
    local mode="${1:-install}" dest
    dest="${MODDIR:-${MODPATH:-/data/adb/modules/${_IC_MODULE_ID}}}/config.local.sh"
    ic_apply_defaults
    _ic_print ""
    ic_detect_keys
    _ic_select_profile
    case "$IC_ENUM_RESULT" in custom) _ic_select_custom ;; *) ic_apply_profile "$IC_ENUM_RESULT" ;; esac
    ic_apply_auto_vpn_defaults
    ic_render_summary
    _ic_print "  Writing module-local config: $dest"
    if ic_write_config "$dest"; then
        return 0
    fi
    return 1
}
