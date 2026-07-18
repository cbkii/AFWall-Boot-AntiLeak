#!/usr/bin/env sh
# tools/keycheck-tests.sh — Test keycheck binaries and compilation
#
# Validates that both packaged keycheck binaries exist, match expected hashes,
# are statically linked, correctly formed ELF executables, and exit cleanly in
# a no-input environment.

set -e

# Expected prebuilt hashes from the PR
HASH_ARM64="d6dfe4afa761e13a3ac75f47bb2942267a526ea0d614dc32bd2ebd83661de9f9"
HASH_X86_64="b1b4ada0cd8c3c95f316b8721587a799cdf0dd005b25ffd1f6fd382259fed2d7"

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BIN_DIR="$REPO_ROOT/bin/keycheck"
SRC_FILE="$REPO_ROOT/tools/keycheck.c"

BIN_ARM64="$BIN_DIR/keycheck-arm64"
BIN_X86_64="$BIN_DIR/keycheck-x86_64"

echo "Running keycheck binary tests..."

# 1. Check existence and executable bit
if [ ! -f "$SRC_FILE" ]; then
    echo "ERROR: Source file $SRC_FILE is missing" >&2
    exit 1
fi

for f in "$BIN_ARM64" "$BIN_X86_64"; do
    if [ ! -f "$f" ]; then
        echo "ERROR: Binary $f is missing" >&2
        exit 1
    fi
    if [ ! -x "$f" ]; then
        echo "ERROR: Binary $f is not executable" >&2
        exit 1
    fi
done
echo "ok - binaries and source exist and are executable"

# 2. Verify SHA-256 hashes
check_hash() {
    local file="$1"
    local expected="$2"
    local actual
    actual="$(sha256sum "$file" | cut -d' ' -f1)"
    if [ "$actual" != "$expected" ]; then
        echo "ERROR: SHA-256 mismatch for $file" >&2
        echo "  Expected: $expected" >&2
        echo "  Actual:   $actual" >&2
        exit 1
    fi
}
check_hash "$BIN_ARM64" "$HASH_ARM64"
check_hash "$BIN_X86_64" "$HASH_X86_64"
echo "ok - committed SHA-256 values match"

# 3. Parse ELF headers
check_elf() {
    local file="$1"
    local expected_machine="$2"
    local header
    header="$(readelf -h "$file")"

    if ! echo "$header" | grep -q "Machine:.*$expected_machine"; then
        echo "ERROR: $file is not machine $expected_machine" >&2
        exit 1
    fi
    if ! echo "$header" | grep -q "Class:.*ELF64"; then
        echo "ERROR: $file is not ELF64" >&2
        exit 1
    fi
    if ! echo "$header" | grep -q "Data:.*little endian"; then
        echo "ERROR: $file is not little endian" >&2
        exit 1
    fi
    if ! echo "$header" | grep -q "Type:.*EXEC"; then
        echo "ERROR: $file is not EXEC" >&2
        exit 1
    fi

    if readelf -l "$file" 2>/dev/null | grep -qi "interpreter"; then
         echo "ERROR: $file has an interpreter (not static)" >&2
         exit 1
    fi
}

check_elf "$BIN_ARM64" "AArch64"
check_elf "$BIN_X86_64" "X86-64"
echo "ok - ELF headers correct (ELF64 little-endian static executable)"

# 4. Compile tools/keycheck.c on host
TEMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TEMP_DIR"' EXIT

TEST_BIN="$TEMP_DIR/keycheck-test"
echo "Compiling test binary..."
if ! gcc -O2 -static -o "$TEST_BIN" "$SRC_FILE"; then
    echo "ERROR: Failed to compile $SRC_FILE" >&2
    exit 1
fi
if [ ! -x "$TEST_BIN" ]; then
    echo "ERROR: Compiled test binary is not executable" >&2
    exit 1
fi
check_elf "$TEST_BIN" "X86-64"
echo "ok - source recompiles cleanly into an x86_64 static ELF"

# 5. Run x86_64 binaries in no-input environment
run_keycheck() {
    local bin="$1"
    local desc="$2"

    # Run with timeout to prevent hanging if it somehow finds inputs
    set +e
    timeout 2 "$bin"
    local status=$?
    set -e

    if [ "$status" -eq 1 ]; then
        echo "ok - $desc returned exit code 1 as documented"
    elif [ "$status" -eq 124 ]; then
        echo "ERROR: $desc timed out after 2 seconds" >&2
        exit 1
    else
         echo "ERROR: $desc returned unexpected exit code $status" >&2
         exit 1
    fi
}

run_keycheck "$BIN_X86_64" "committed x86_64 binary"
run_keycheck "$TEST_BIN" "rebuilt x86_64 binary"

echo "All keycheck tests passed."
