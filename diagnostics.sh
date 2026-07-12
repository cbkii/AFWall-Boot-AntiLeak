#!/system/bin/sh
# Read-only AFWall Boot AntiLeak diagnostics. Does not change VPN, radios, or rules.
MODDIR="${0%/*}"
[ "$MODDIR" = "$0" ] && MODDIR="."
. "$MODDIR/bin/common.sh"
load_config >/dev/null 2>&1 || true

# Prime generation metadata without changing firewall/radio state.
if command -v _aba_note_process_epoch >/dev/null 2>&1; then
  _aba_note_process_epoch >/dev/null 2>&1 || true
fi
if command -v _aba_load_startup_prefs >/dev/null 2>&1; then
  _aba_load_startup_prefs >/dev/null 2>&1 || true
fi

printf 'AFWall Boot AntiLeak diagnostics\n'
printf 'module_version=%s\n' "$MODULE_VERSION"
printf 'monotonic_seconds=%s\n' "$(monotonic_seconds)"
printf 'config mode=%s poll=%s fast=%s slow=%s watchdog=%s/%s policy=%s radio=%s vpn=%s providers=%s\n' \
  "${LEAK_PROTECTION_MODE:-}" "${POLL_INTERVAL_SECS:-}" "${FAST_STABLE_SECS:-}" "${SLOW_STABLE_SECS:-}" \
  "${WATCHDOG_SERVICE_SECS:-}" "${WATCHDOG_BOOT_COMPLETED_SECS:-}" "${WATCHDOG_POLICY:-}" \
  "${RADIO_SUPPRESSION:-}" "${VPN_LOCKDOWN_MODE:-}" "${VPN_PROVIDER_PACKAGES:-auto}"
printf 'generation_guard version=%s process_epoch=%s prefs_ready=%s prefs_file=%s delayed=%s delay_secs=%s delay_grace=%s gate_open=%s fixLeak=%s initPath=%s\n' \
  "${ABA_GENERATION_GUARD_VERSION:-absent}" "${ABA_GEN_PROCESS_FIRST_TS:-0}" "${ABA_GEN_PREFS_READY:-0}" \
  "${ABA_GEN_PREFS_FILE:-none}" "${ABA_GEN_DELAY_ENABLED:-unknown}" "${ABA_GEN_DELAY_SECS:-unknown}" \
  "${AFWALL_DELAY_GRACE_SECS:-unknown}" "${ABA_GEN_GATE_OPEN_TS:-0}" "${ABA_GEN_FIX_LEAK:-unknown}" "${ABA_GEN_INIT_PATH:-unknown}"

printf '\n[vpn]\n'
if has_cmd settings; then
  printf 'always_on_vpn_app=%s\n' "$(settings get secure always_on_vpn_app 2>/dev/null)"
  printf 'always_on_vpn_lockdown=%s\n' "$(settings get secure always_on_vpn_lockdown 2>/dev/null)"
else
  printf 'settings=unavailable\n'
fi

printf '\n[state]\n'
for f in block_installed blackout_active service_complete aba_service.pid aba_service.lock integration_mode; do
  if [ -e "$STATE_DIR/$f" ]; then
    printf '%s: ' "$f"
    cat "$STATE_DIR/$f" 2>/dev/null
    printf '\n'
  fi
done

printf '\n[module-owned rules]\n'
for spec in "iptables raw" "iptables filter" "ip6tables raw" "ip6tables filter"; do
  # shellcheck disable=SC2086 # intentional split of trusted internal spec fields
  set -- $spec
  cmd="$(_find_cmd "$1" 2>/dev/null)" || { printf '%s -t %s unavailable\n' "$1" "$2"; continue; }
  printf -- '-- %s -t %s --\n' "$1" "$2"
  _ipt "$cmd" -t "$2" -S 2>/dev/null | grep 'MOD_PRE_AFW' || printf '(none)\n'
done

printf '\n[afwall summary]\n'
for fam in v4 v6; do
  if [ "$fam" = v4 ]; then
    snap="$(capture_filter_snapshot_v4 2>/dev/null)"
  else
    snap="$(capture_filter_snapshot_v6 2>/dev/null)"
  fi
  if command -v _aba_base_graph_present >/dev/null 2>&1; then
    raw_present="$(_aba_base_graph_present "$snap" && printf 1 || printf 0)"
  else
    raw_present="$(afwall_graph_present_from_snapshot "$snap" && printf 1 || printf 0)"
  fi
  printf '%s_raw_present=%s\n' "$fam" "$raw_present"
  printf '%s_generation_eligible=%s\n' "$fam" "$(afwall_graph_present_from_snapshot "$snap" && printf 1 || printf 0)"
  printf '%s_nontrivial=%s\n' "$fam" "$(afwall_graph_nontrivial_from_snapshot "$snap" && printf 1 || printf 0)"
  printf '%s_fingerprint=%s\n' "$fam" "$(afwall_rooted_graph_fingerprint_from_snapshot "$snap" 2>/dev/null)"
done

printf '\n[workers]\n'
if [ -f "$SERVICE_PID_FILE" ]; then
  pid="$(cat "$SERVICE_PID_FILE" 2>/dev/null)"
  if [ -n "$pid" ] && kill -0 "$pid" 2>/dev/null; then
    alive=1
  else
    alive=0
  fi
  printf 'pid_file=%s alive=%s\n' "${pid:-empty}" "$alive"
else
  printf 'pid_file=absent\n'
fi

printf '\n[Proton timing hints]\n'
if has_cmd logcat; then
  logcat -d -t 2000 2>/dev/null | grep -iE 'proton|wireguard|sendto|operation not permitted|handshake' | tail -50
else
  printf 'logcat=unavailable\n'
fi
