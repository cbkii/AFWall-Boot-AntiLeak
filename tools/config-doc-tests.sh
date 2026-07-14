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

TMP_DIR="${TMPDIR:-/tmp}/aba-config-doc-test-$$"
rm -rf -- "$TMP_DIR" 2>/dev/null || :
mkdir -p -- "$TMP_DIR" || fail "cannot create temporary directory"
trap 'rm -rf -- "$TMP_DIR" 2>/dev/null || :' EXIT INT TERM

GENERATED_TEMPLATE="$TMP_DIR/config.local.template.sh"
sed -n '/^# AFWall Boot AntiLeak v5[.]0[.]0 local overrides/,/^EOF_CFG$/p' \
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

while IFS= read -r key || [ -n "$key" ]; do
    grep -Fq "| \`$key\` |" "$ROOT/README.md" || fail "README Configuration table is missing key $key"
done < "$PACKAGED_KEYS"

if grep -q '^### User-facing v5[.]0[.]0 keys$' "$ROOT/ADVANCED.md"; then
    fail "ADVANCED.md still contains the moved user-facing config table"
fi

echo "All config documentation tests passed."
