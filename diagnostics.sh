#!/system/bin/sh
# Read-only AFWall Boot AntiLeak diagnostics. Does not change VPN, radios, or rules.
MODDIR="${0%/*}"
. "$MODDIR/bin/common.sh"
load_config >/dev/null 2>&1 || true
printf 'AFWall Boot AntiLeak diagnostics\n'
printf 'module_version=%s\n' "$MODULE_VERSION"
printf 'monotonic_seconds=%s\n' "$(monotonic_seconds)"
printf 'config mode=%s poll=%s fast=%s slow=%s watchdog=%s/%s policy=%s radio=%s vpn=%s providers=%s\n' \
  "${LEAK_PROTECTION_MODE:-}" "${POLL_INTERVAL_SECS:-}" "${FAST_STABLE_SECS:-}" "${SLOW_STABLE_SECS:-}" \
  "${WATCHDOG_SERVICE_SECS:-}" "${WATCHDOG_BOOT_COMPLETED_SECS:-}" "${WATCHDOG_POLICY:-}" \
  "${RADIO_SUPPRESSION:-}" "${VPN_LOCKDOWN_MODE:-}" "${VPN_PROVIDER_PACKAGES:-auto}"
printf '\n[vpn]\n'
if has_cmd settings; then
  printf 'always_on_vpn_app=%s\n' "$(settings get secure always_on_vpn_app 2>/dev/null)"
  printf 'always_on_vpn_lockdown=%s\n' "$(settings get secure always_on_vpn_lockdown 2>/dev/null)"
else
  printf 'settings=unavailable\n'
fi
printf '\n[state]\n'
for f in block_installed blackout_active service_complete aba_service.pid aba_service.lock; do
  if [ -e "$STATE_DIR/$f" ]; then printf '%s: ' "$f"; cat "$STATE_DIR/$f" 2>/dev/null; printf '\n'; fi
done
printf '\n[module-owned rules]\n'
for spec in "iptables raw" "iptables filter" "ip6tables raw" "ip6tables filter"; do
  set -- $spec
  cmd="$(_find_cmd "$1" 2>/dev/null)" || { printf '%s -t %s unavailable\n' "$1" "$2"; continue; }
  printf -- '-- %s -t %s --\n' "$1" "$2"
  _ipt "$cmd" -t "$2" -S 2>/dev/null | grep 'MOD_PRE_AFW' || printf '(none)\n'
done
printf '\n[afwall summary]\n'
for fam in v4 v6; do
  if [ "$fam" = v4 ]; then snap="$(capture_filter_snapshot_v4 2>/dev/null)"; else snap="$(capture_filter_snapshot_v6 2>/dev/null)"; fi
  printf '%s_present=%s\n' "$fam" "$(afwall_graph_present_from_snapshot "$snap" && printf 1 || printf 0)"
  printf '%s_nontrivial=%s\n' "$fam" "$(afwall_graph_nontrivial_from_snapshot "$snap" && printf 1 || printf 0)"
  printf '%s_fingerprint=%s\n' "$fam" "$(afwall_rooted_graph_fingerprint_from_snapshot "$snap" 2>/dev/null)"
done
printf '\n[workers]\n'
if [ -f "$SERVICE_PID_FILE" ]; then pid="$(cat "$SERVICE_PID_FILE" 2>/dev/null)"; printf 'pid_file=%s alive=%s\n' "$pid" "$(kill -0 "$pid" 2>/dev/null && printf 1 || printf 0)"; else printf 'pid_file=absent\n'; fi
printf '\n[Proton timing hints]\n'
if has_cmd logcat; then
  logcat -d -t 2000 2>/dev/null | grep -iE 'proton|wireguard|sendto|operation not permitted|handshake' | tail -50
else
  printf 'logcat=unavailable\n'
fi
