#!/bin/sh
# Verifies that every user config key is explained in both config sources and
# documented in the README. This test intentionally avoids Android commands.

ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)" || {
    printf 'FAIL: cannot determine repository root\n' >&2
    exit 1
}

fail() {
    printf 'FAIL: %s\n' "$*" >&2
    exit 1
}

check_comment_pair() {
    file="$1"
    label="$2"
    previous_two=''
    previous_one=''

    while IFS= read -r line || [ -n "$line" ]; do
        case "$line" in
            [A-Z][A-Z0-9_]*=*)
                key="${line%%=*}"
                case "$previous_two" in
                    '# What it does:'*) ;;
                    *) fail "$label key $key has no plain-English '# What it does:' line immediately above it" ;;
                esac
                case "$previous_one" in
                    '# Accepted values:'*) ;;
                    *) fail "$label key $key has no '# Accepted values:' line immediately above it" ;;
                esac
                ;;
        esac
        previous_two="$previous_one"
        previous_one="$line"
    done < "$file"
}

accepted_line_for_key() {
    file="$1"
    wanted="$2"
    previous=''

    while IFS= read -r line || [ -n "$line" ]; do
        case "$line" in
            "$wanted"=*)
                printf '%s\n' "$previous"
                return 0
                ;;
        esac
        previous="$line"
    done < "$file"
    return 1
}

check_described_values() {
    file="$1"
    label="$2"
    key="$3"
    values="$4"
    accepted="$(accepted_line_for_key "$file" "$key")" || fail "$label key $key was not found"

    for value in $values; do
        case "$accepted" in
            *"$value = "*) ;;
            *) fail "$label key $key does not explain what string value '$value' changes" ;;
        esac
    done
}

readme_row_for_key() {
    wanted="$1"
    grep -F "| \`$wanted\` |" "$ROOT/README.md" | head -n 1
}

check_readme_value_descriptions() {
    key="$1"
    values="$2"
    row="$(readme_row_for_key "$key")"
    [ -n "$row" ] || fail "README Configuration table is missing key $key"

    for value in $values; do
        case "$row" in
            *"\`$value\` = "*) ;;
            *) fail "README key $key does not explain what string value '$value' changes" ;;
        esac
    done
}

TMP_DIR="${TMPDIR:-/tmp}/aba-config-doc-test-$$"
rm -rf -- "$TMP_DIR" 2>/dev/null || :
mkdir -p -- "$TMP_DIR" || fail "cannot create temporary directory"
trap 'rm -rf -- "$TMP_DIR" 2>/dev/null || :' EXIT INT TERM

GENERATED_TEMPLATE="$TMP_DIR/config.local.template.sh"
sed -n '/^# AFWall Boot AntiLeak v[0-9][0-9.]* local overrides/,/^EOF_CFG$/p' \
    "$ROOT/bin/installer_config.sh" > "$GENERATED_TEMPLATE" || fail "cannot extract generated config.local.sh template"

[ -s "$GENERATED_TEMPLATE" ] || fail "generated config.local.sh template was not found"

check_comment_pair "$ROOT/config.sh" "config.sh"
check_comment_pair "$GENERATED_TEMPLATE" "generated config.local.sh"

PACKAGED_KEYS="$TMP_DIR/packaged.keys"
GENERATED_KEYS="$TMP_DIR/generated.keys"
sed -n 's/^\([A-Z][A-Z0-9_]*\)=.*/\1/p' "$ROOT/config.sh" > "$PACKAGED_KEYS"
sed -n 's/^\([A-Z][A-Z0-9_]*\)=.*/\1/p' "$GENERATED_TEMPLATE" > "$GENERATED_KEYS"

cmp -s "$PACKAGED_KEYS" "$GENERATED_KEYS" || fail "config.sh and generated config.local.sh do not contain the same ordered key list"

grep -q '^## Configuration$' "$ROOT/README.md" || fail "README Configuration section is missing"
grep -q 'config[.]sh.*Loaded first' "$ROOT/README.md" || fail "README does not clearly state that config.sh loads first"
grep -q 'config[.]local[.]sh.*Loaded after' "$ROOT/README.md" || fail "README does not clearly state that config.local.sh loads after config.sh"
grep -q '| Accepted values and effect |' "$ROOT/README.md" || fail "README Configuration table does not require value effects"

while IFS= read -r key || [ -n "$key" ]; do
    grep -Fq "| \`$key\` |" "$ROOT/README.md" || fail "README Configuration table is missing key $key"
done < "$PACKAGED_KEYS"

for source in "$ROOT/config.sh:config.sh" "$GENERATED_TEMPLATE:generated config.local.sh"; do
    file="${source%%:*}"
    label="${source#*:}"
    check_described_values "$file" "$label" LEAK_PROTECTION_MODE "balanced strict recovery_friendly"
    check_described_values "$file" "$label" INTEGRATION_MODE "auto prefer_module prefer_afwall off"
    check_described_values "$file" "$label" WATCHDOG_POLICY "block unblock"
    check_described_values "$file" "$label" RADIO_SUPPRESSION "off safe strict"
    check_described_values "$file" "$label" AFWALL_PACKAGE "auto dev.ukanth.ufirewall dev.ukanth.ufirewall.donate com.ukanth.ufirewall"
    check_described_values "$file" "$label" VPN_LOCKDOWN_MODE "off preserve restore"
    check_described_values "$file" "$label" VPN_PROVIDER_PACKAGES "auto ch.protonvpn.android com.wireguard.android"
done

check_readme_value_descriptions LEAK_PROTECTION_MODE "balanced strict recovery_friendly"
check_readme_value_descriptions INTEGRATION_MODE "auto prefer_module prefer_afwall off"
check_readme_value_descriptions WATCHDOG_POLICY "block unblock"
check_readme_value_descriptions RADIO_SUPPRESSION "off safe strict"
check_readme_value_descriptions AFWALL_PACKAGE "auto dev.ukanth.ufirewall dev.ukanth.ufirewall.donate com.ukanth.ufirewall"
check_readme_value_descriptions VPN_LOCKDOWN_MODE "off preserve restore"
check_readme_value_descriptions VPN_PROVIDER_PACKAGES "auto ch.protonvpn.android com.wireguard.android"

if grep -Eq '^### User-facing v[0-9][0-9.]* keys$' "$ROOT/ADVANCED.md"; then
    fail "ADVANCED.md still contains the moved user-facing config table"
fi

if grep -E 'Selects the main protection style|before the watchdog acts|Chooses what happens if the module cannot prove' \
    "$ROOT/config.sh" "$GENERATED_TEMPLATE" "$ROOT/README.md" >/dev/null 2>&1; then
    fail "vague or redundant configuration wording remains"
fi

echo "All config documentation tests passed."
