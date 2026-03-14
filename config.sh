#!/system/bin/sh
# AFWall Boot AntiLeak v2.4 - User Configuration
# This file is sourced during boot. Keep syntax POSIX/ash compatible.
# Place a custom copy at /data/adb/AFWall-Boot-AntiLeak/config.sh to
# override the module's built-in defaults without modifying the module itself.

# ── Integration mode ──────────────────────────────────────────────────────────
# Controls how this module coordinates with AFWall+'s optional "Fix Startup
# Data Leak" (fixLeak) feature.
#
# Background: AFWall+'s fixLeak feature installs a startup script called
# 'afwallstart' into init.d or su.d paths (/etc/init.d/, /su/su.d/, etc.) and
# optionally into Magisk paths (/data/adb/post-fs-data.d/,
# /data/adb/service.d/). On modern Android (8+) the init.d/su.d mechanism is
# rarely effective without a special kernel or SuperSU. On Android 16 Pixel
# devices it is effectively non-functional. The module checks for the presence
# of that script to determine whether to defer.
#
#   auto          - Inspect AFWall state. Install the module block as primary
#                   (or supplemental) protection regardless of AFWall state.
#                   Recommended default. (default)
#   prefer_module - Always install the module block, regardless of any detected
#                   AFWall startup-script. Belt-and-suspenders maximum safety.
#   prefer_afwall - Skip the module block only when an AFWall-owned afwallstart
#                   script is detected in init.d/su.d/Magisk paths. On modern
#                   Android this is effectively the same as auto unless you have
#                   confirmed init.d support or AFWall Magisk-path fixLeak.
#   off           - Disable module blocking entirely. Use only in emergencies.
#
# Recommended AFWall+ settings when using this module:
#   - Fix Startup Data Leak: DISABLED (this module is the leak protection)
#   - Startup Delay: 0 (no extra delay needed; module covers the window)
#   - Active Rules: ENABLED (required for module to detect AFWall readiness)
#   - Tether/LAN/VPN/Roaming controls: enable as needed; module covers boot gap
#
INTEGRATION_MODE=auto

# ── FORWARD chain block (tethered-client / hotspot / USB / BT tether) ────────
# When enabled (default), the module installs a temporary DROP block on the
# iptables FORWARD chain (filter table) during early boot.
# This prevents tethered clients (Wi-Fi hotspot, USB tether, Bluetooth PAN)
# from leaking traffic through the phone before AFWall is ready.
#
# Set to 0 only if you do not use tethering AND you need to avoid touching
# the filter FORWARD chain for compatibility reasons.
#
ENABLE_FORWARD_BLOCK=1

# ── INPUT chain block (optional inbound traffic hardening) ────────────────────
# When enabled, the module installs a temporary DROP block on the iptables
# INPUT chain (filter table) during early boot.
# This prevents inbound connections from reaching the device before AFWall has
# applied its INPUT rules.
#
# IMPORTANT: Loopback (lo) is always exempted to avoid breaking local IPC.
#
# Disabled by default because:
#   - Most users do not rely on AFWall INPUT rules during boot
#   - Blocking INPUT during boot can delay ADB, Wi-Fi management frames, and
#     DHCP responses (though all are typically after network interfaces are up)
#   - AFWall's INPUT rule support depends on the user's AFWall configuration
#
# Enable if you have AFWall INPUT rules configured and want boot-time coverage.
#
ENABLE_INPUT_BLOCK=0

# ══════════════════════════════════════════════════════════════════════════════
# LOWER-LAYER SUPPRESSION SUBSYSTEM (v2.2.0+)
# ══════════════════════════════════════════════════════════════════════════════
# These options control a second, lower anti-leak tier that runs beneath the
# iptables hard block.  Service-level and interface-level suppression reduces
# network connectivity during the pre-AFWall window even if iptables were to
# fail or be bypassed.
#
# IMPORTANT: These are BEST-EFFORT measures.  They supplement the iptables hard
# block; they do NOT replace it.  If a service command fails, the iptables
# block remains the authoritative hard stop.
#
# IMPORTANT: Airplane mode is NOT used as the primary anti-leak mechanism.
# It is a framework/policy switch, not a kernel-level hardware kill.  Wi-Fi
# can be re-enabled while in airplane mode.  See README for details.
#
# State tracking: the module records every change it makes to service and
# interface state in /data/adb/AFWall-Boot-AntiLeak/state/ll/.  Only changes
# made by the module are restored.  Wi-Fi, mobile data, or Bluetooth that the
# user had already disabled before boot will NOT be re-enabled.

# ── Lower-layer mode ──────────────────────────────────────────────────────────
#
#   off    - No lower-layer suppression.  Firewall-only mode (v2.1.0 behaviour).
#   safe   - Interface quiesce + service suppression. Uses individual flags
#            below to control which services are disabled. (default)
#   strict - Same as safe; individual flags still apply, but this mode signals
#            intent to enable maximum suppression.  Upgrade path: set all
#            LOWLEVEL_USE_* flags to 1 and set mode to strict.
#
LOWLEVEL_MODE=safe

# ── Interface quiesce ─────────────────────────────────────────────────────────
# When enabled, the module brings non-loopback network interfaces DOWN during
# the service.sh phase.  Uses /sys/class/net enumeration and `ip link set`.
# Interfaces are restored (brought UP) after AFWall rules are confirmed.
#
# Safety:
#   - Loopback (lo), kernel transition tunnels, and Qualcomm IPA are exempt
#   - The iptables hard block remains in place throughout
#   - Routes are NOT explicitly removed; they disappear when interfaces go down
#     and are re-acquired automatically (DHCP/RA) when interfaces come back up
#     under AFWall's protection
#
# Set to 0 if you experience boot-time issues with Wi-Fi or network management
# reacting to interface state changes.
#
LOWLEVEL_INTERFACE_QUIESCE=1

# ── Wi-Fi service suppression ─────────────────────────────────────────────────
# Disables Wi-Fi via Android service commands (cmd wifi / svc wifi).
# Tracks pre-boot Wi-Fi state; only re-enables if the module disabled it.
# Enabled by default (best-effort; requires framework to be up).
#
LOWLEVEL_USE_WIFI_SERVICE=1

# ── Mobile data suppression ───────────────────────────────────────────────────
# Disables mobile data via Android service commands (cmd phone / svc data).
# Tracks pre-boot data state; only re-enables if the module disabled it.
# Enabled by default (best-effort; requires framework to be up).
#
LOWLEVEL_USE_PHONE_DATA_CMD=1

# ── Bluetooth suppression ─────────────────────────────────────────────────────
# Disables Bluetooth via cmd bluetooth_manager / svc bluetooth.
# Disabled by default because:
#   - Bluetooth rarely carries internet traffic (iptables FORWARD block handles
#     Bluetooth PAN forwarded traffic independently)
#   - Disabling Bluetooth disrupts headphones, keyboards, etc. during boot
#   - Users who specifically use Bluetooth tethering as an internet path may
#     enable this for extra protection
#
# Set to 1 to enable Bluetooth suppression.
#
LOWLEVEL_USE_BLUETOOTH_MANAGER=0

# ── Tethering suppression ─────────────────────────────────────────────────────
# Stops active tethering via cmd connectivity and/or interface shutdown.
# Enabled by default.  Note: tethering is NOT auto-restarted after boot
# because it requires explicit user action; this is intentional.
#
LOWLEVEL_USE_TETHER_STOP=1

# ══════════════════════════════════════════════════════════════════════════════

# ── Timeout ───────────────────────────────────────────────────────────────────
# Maximum seconds to wait for AFWall rules before the timeout action fires.
# Increase on very slow devices. Conservative default: 120 s.
TIMEOUT_SECS=120

# ── Timeout policy ────────────────────────────────────────────────────────────
# Controls what happens when TIMEOUT_SECS is reached for a family that has not
# yet been handed off to AFWall.
#
# Supported values:
#   fail_closed - Retain the module-owned blocks for unresolved families.
#                 Lower-layer state (interfaces/services) is still restored
#                 because it is service-level suppression, not the hard stop.
#                 The iptables blocks remain in place.
#                 Use this if you prefer the device stay fully offline rather
#                 than risk an unprotected window. Requires manual recovery
#                 via the Magisk action button (action.sh) if AFWall is
#                 absent or broken. (default — safest choice)
#
#   unblock     - Remove any still-active module-owned blocks for unresolved
#                 families and restore lower-layer state. Networking is
#                 restored. This matches the historic/documented behaviour.
#                 Use this on devices where AFWall is always installed and
#                 you want networking to recover if the module gets stuck.
#                 WARNING: only takes effect when AUTO_TIMEOUT_UNBLOCK=1 AND
#                 the device has been unlocked (if TIMEOUT_UNLOCK_GATED=1).
#
# NOTE: Even with fail_closed, families that were successfully handed off
# before the timeout do NOT have their blocks reinstated. Per-family
# timeout operates independently.
#
TIMEOUT_POLICY=fail_closed

# ── Automatic timeout-based unblocking ───────────────────────────────────────
# Master gate: when set to 0 (default) the module NEVER automatically
# unblocks connectivity on timeout, regardless of TIMEOUT_POLICY.
# Set to 1 only if you explicitly want timeout-based unblocking AND have set
# TIMEOUT_POLICY=unblock.
#
# Default: 0 (disabled — fail-safe)
#
AUTO_TIMEOUT_UNBLOCK=0

# ── Unlock-gated timeout counting ────────────────────────────────────────────
# When set to 1 (default), the timeout countdown does NOT start until the
# device has been positively detected as unlocked. If unlock cannot be
# confirmed (e.g., device is at the lock screen), the countdown never begins.
#
# Default: 1 (enabled — timeout cannot expire before device is unlocked)
#
TIMEOUT_UNLOCK_GATED=1

# ── Transport-aware Wi-Fi gating ──────────────────────────────────────────────
# When set to 1 (default), Wi-Fi is not restored until AFWall's Wi-Fi
# transport chain (afwall-wifi) is confirmed present and stable. If AFWall
# does not use a dedicated Wi-Fi chain, falls back to main chain readiness.
#
# Default: 1 (enabled)
#
WIFI_AFWALL_GATE=1

# ── Transport-aware mobile-data gating ───────────────────────────────────────
# When set to 1 (default), mobile data is not restored until AFWall's mobile
# transport chain (afwall-3g) is confirmed present and stable. If AFWall
# does not use a dedicated mobile chain, falls back to main chain readiness.
#
# Default: 1 (enabled)
#
MOBILE_AFWALL_GATE=1

# ── Radio-off reassertion interval ───────────────────────────────────────────
# While waiting for AFWall transport readiness, the module periodically
# re-verifies and re-asserts that Wi-Fi and mobile data are off. This is the
# interval in seconds between reassertion checks.
#
RADIO_REASSERT_INTERVAL=10

# ── Blackout integrity reassertion interval ───────────────────────────────────
# While the iptables OUTPUT blackout is active and AFWall handoff is incomplete,
# the module periodically verifies that the OUTPUT blackout chains (chain +
# DROP rule + OUTPUT jump) are still intact in raw and filter tables.  If any
# layer is missing or degraded, it is immediately repaired.
#
# This is separate from RADIO_REASSERT_INTERVAL so that iptables integrity can
# be checked more frequently than the radio-off reassertion.  A shorter interval
# reduces the window during which blackout chains could be absent due to
# external interference before the module repairs them.
#
# Default: 5 s (half the radio reassertion interval).
# Increase only if you see excessive iptables call overhead on very slow devices.
#
BLACKOUT_REASSERT_INTERVAL=5

# ── Unlock detection poll interval ───────────────────────────────────────────
# How often (in seconds) to check whether the device has been unlocked,
# while TIMEOUT_UNLOCK_GATED=1 and timeout has not started yet.
#
UNLOCK_POLL_INTERVAL=5

# ── Settle delay ──────────────────────────────────────────────────────────────
# Seconds to pause after AFWall rules are first detected before removing the
# module block. Gives AFWall time to finish adding per-app rules and any
# FORWARD/INPUT chain rules it manages (tether, LAN, VPN, roaming controls).
SETTLE_SECS=5

# ── Boot-completion acceleration ──────────────────────────────────────────────
# When set to 1 (default), the module uses sys.boot_completed=1 and related
# boot-completion signals to shorten the detection windows for liveness,
# fallback stability, rule-graph settle, and transport-chain wait.  This
# allows the safest and soonest possible handoff to AFWall.
#
# Shorter windows are safe post-boot because sys.boot_completed=1 indicates
# the Android framework and all system services are fully initialised;
# AFWall's FirewallService will have already completed its rule-application
# cycle and will not continue adding rules after this point.
#
# Set to 0 to disable all boot-completion-based acceleration and keep every
# detection window at its full configured value (legacy behaviour).
#
# Default: 1 (enabled)
#
BOOT_COMPLETE_ACCELERATE=1

# ── AFWall rule-density threshold for the boot-complete fast path ─────────────
# The boot-complete fast path (see BOOT_COMPLETE_ACCELERATE) fires when:
#   sys.boot_completed=1 AND afwall chain rule count >= AFWALL_RULE_DENSITY_MIN
# This guards against accepting a chain that was only partially populated.
# Raise this value if your AFWall configuration applies many rules; lower it
# (minimum 1) if you have a minimal configuration with very few app rules.
#
# Default: 3
#
AFWALL_RULE_DENSITY_MIN=3

# ── Post-boot-complete timing parameters ──────────────────────────────────────
# These shorter windows apply only when BOOT_COMPLETE_ACCELERATE=1 AND
# sys.boot_completed=1 (or boot animation stopped) is detected.  Each value
# overrides its base counterpart for that condition only; base values are used
# in all other cases (including when boot has not yet completed).
#
# LIVENESS_SECS_POST_BOOT
#   Liveness / stability window when the AFWall process is visible AND boot is
#   complete, OR when the boot-complete fast path (dense chain) fires.
#   Replaces LIVENESS_SECS (default 6 s) post-boot.
#   Default: 2 s
#
# FALLBACK_SECS_POST_BOOT
#   Stability-only fallback window when no AFWall process is detected but boot
#   is complete.  Replaces FALLBACK_SECS (default 12 s) post-boot.
#   Default: 4 s
#
# SETTLE_SECS_POST_BOOT
#   Post-stable settle pause before removing the module block, used when boot
#   is complete.  Replaces SETTLE_SECS (default 5 s) post-boot.  Safe to
#   reduce because AFWall's rule population is finished at boot-complete.
#   Default: 1 s
#
# TRANSPORT_WAIT_SECS_POST_BOOT
#   Maximum wait for transport-specific AFWall chains (afwall-wifi / afwall-3g)
#   after the main afwall chain is confirmed, when boot is complete.  Replaces
#   TRANSPORT_WAIT_SECS (default 30 s) post-boot.  If AFWall uses transport
#   chains they will be present by boot-complete; if not, fall back after this
#   shorter window.
#   Default: 5 s
#
LIVENESS_SECS_POST_BOOT=2
FALLBACK_SECS_POST_BOOT=4
SETTLE_SECS_POST_BOOT=1
TRANSPORT_WAIT_SECS_POST_BOOT=5

# ── Debug logging ─────────────────────────────────────────────────────────────
# Set to 1 to enable verbose [DEBUG] entries in the boot log.
# Log path: /data/adb/AFWall-Boot-AntiLeak/logs/boot.log
DEBUG=0
