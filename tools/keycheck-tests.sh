#!/usr/bin/env sh
# tools/keycheck-tests.sh — Test keycheck binaries and compilation
#
# Validates that both packaged keycheck binaries exist, match expected hashes,
# are statically linked, correctly formed ELF executables, and exit cleanly in
# a no-input environment.

set -eu

HASH_ARM64="d6dfe4afa761e13a3ac75f47bb2942267a526ea0d614dc32bd2ebd83661de9f9"
HASH_X86_64="b1b4ada0cd8c3c95f316b8721587a799cdf0dd005b25ffd1f6fd382259fed2d7"

REPO_ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"
BIN_DIR="$REPO_ROOT/bin/keycheck"
SRC_FILE="$REPO_ROOT/tools/keycheck.c"
BIN_ARM64="$BIN_DIR/keycheck-arm64"
BIN_X86_64="$BIN_DIR/keycheck-x86_64"
TEMP_DIR="${TMPDIR:-/tmp}/aba-keycheck-test-$$"
trap 'rm -rf "$TEMP_DIR"' EXIT INT TERM
mkdir -p "$TEMP_DIR"

fail() { printf 'ERROR: %s\n' "$*" >&2; exit 1; }
pass() { printf 'ok - %s\n' "$*"; }

[ -f "$SRC_FILE" ] || fail "source file is missing: $SRC_FILE"
for file in "$BIN_ARM64" "$BIN_X86_64"; do
    [ -f "$file" ] || fail "binary is missing: $file"
    [ -x "$file" ] || fail "binary is not executable: $file"
done
pass "binaries and source exist and are executable"

check_hash() {
    file="$1"
    expected="$2"
    actual="$(sha256sum "$file" | awk '{print $1}')"
    [ "$actual" = "$expected" ] || fail "SHA-256 mismatch for $file (expected=$expected actual=$actual)"
}
check_hash "$BIN_ARM64" "$HASH_ARM64"
check_hash "$BIN_X86_64" "$HASH_X86_64"
pass "committed SHA-256 values match"

check_elf() {
    file="$1"
    expected_machine="$2"
    header="$(readelf -h "$file")"

    printf '%s\n' "$header" | grep -q "Machine:.*$expected_machine" || fail "$file is not machine $expected_machine"
    printf '%s\n' "$header" | grep -q "Class:.*ELF64" || fail "$file is not ELF64"
    printf '%s\n' "$header" | grep -q "Data:.*little endian" || fail "$file is not little-endian"
    printf '%s\n' "$header" | grep -q "Type:.*EXEC" || fail "$file is not an executable ELF"

    if readelf -l "$file" 2>/dev/null | grep -Eq 'INTERP|Requesting program interpreter'; then
        fail "$file has a program interpreter"
    fi
    if readelf -d "$file" 2>&1 | grep -q '^Dynamic section'; then
        fail "$file has a dynamic section"
    fi
}

check_elf "$BIN_ARM64" "AArch64"
check_elf "$BIN_X86_64" "X86-64"
pass "ELF headers identify static 64-bit executables"

TEST_BIN="$TEMP_DIR/keycheck-test"
gcc -O2 -static -o "$TEST_BIN" "$SRC_FILE" || fail "failed to compile $SRC_FILE"
[ -x "$TEST_BIN" ] || fail "rebuilt x86_64 binary is not executable"
check_elf "$TEST_BIN" "X86-64"
pass "source recompiles into a static x86_64 ELF"

run_keycheck() {
    binary="$1"
    description="$2"
    status=0
    timeout 15 "$binary" >/dev/null 2>&1 || status=$?
    [ "$status" = 1 ] || fail "$description returned $status instead of documented no-input exit 1"
}
run_keycheck "$BIN_X86_64" "committed x86_64 binary"
run_keycheck "$TEST_BIN" "rebuilt x86_64 binary"
pass "bounded no-input behavior"

echo "All keycheck tests passed."
