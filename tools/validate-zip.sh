#!/usr/bin/env bash
# validate-zip.sh — Validate the internal structure of a built Magisk module ZIP.
#
# Checks that the ZIP contains all required installer and runtime files,
# that module.prop is parseable and complete, and that the files are at
# the ZIP root (no nesting parent directory).
#
# Usage:
#   tools/validate-zip.sh <path/to/module.zip>
#
# Exit codes:
#   0  — ZIP is structurally valid
#   1  — One or more required files are missing or module.prop is incomplete

set -e

ZIP="$1"

if [ -z "$ZIP" ] || [ ! -f "$ZIP" ]; then
  echo "Usage: $0 <path/to/module.zip>" >&2
  echo "ERROR: ZIP file not found: ${ZIP:-<not specified>}" >&2
  exit 1
fi

echo "============================================================"
echo "  Validating: $ZIP"
echo "============================================================"

ERRORS=0

# ── Helper: check that a path exists inside the ZIP ──────────────────────────
check_file() {
  local path="$1"
  # Use awk to extract just the filename column and match exactly
  if unzip -l "$ZIP" 2>/dev/null | awk '{print $NF}' | grep -qxF "$path"; then
    echo "  [OK] $path"
  else
    echo "  [MISSING] $path" >&2
    ERRORS=$((ERRORS + 1))
  fi
}

# ── Check required files ──────────────────────────────────────────────────────
echo "Checking required files..."
check_file "META-INF/com/google/android/update-binary"
check_file "META-INF/com/google/android/updater-script"
check_file "module.prop"
check_file "customize.sh"
check_file "common/functions.sh"
check_file "common/install.sh"
check_file "bin/common.sh"
check_file "action.sh"
check_file "config.sh"
check_file "post-fs-data.sh"
check_file "service.sh"
check_file "uninstall.sh"
check_file "update.json"

# ── Check module.prop is parseable and complete ───────────────────────────────
echo "Checking module.prop contents..."
MODULE_PROP_CONTENT="$(unzip -p "$ZIP" "module.prop" 2>/dev/null)" || {
  echo "  [ERROR] Could not extract module.prop from ZIP" >&2
  ERRORS=$((ERRORS + 1))
  MODULE_PROP_CONTENT=""
}

check_prop() {
  local key="$1"
  local val
  val="$(printf '%s' "$MODULE_PROP_CONTENT" | grep "^${key}=" | cut -d= -f2 | tr -d '[:space:]')"
  if [ -n "$val" ]; then
    echo "  [OK] $key=$val"
  else
    echo "  [MISSING] module.prop: '$key' not set or empty" >&2
    ERRORS=$((ERRORS + 1))
  fi
}

check_prop "id"
check_prop "name"
check_prop "version"
check_prop "versionCode"
check_prop "updateJson"

# ── Check update-binary is not the old stub ───────────────────────────────────
echo "Checking update-binary is not a stub..."
UPD_BIN="$(unzip -p "$ZIP" "META-INF/com/google/android/update-binary" 2>/dev/null)" || UPD_BIN=""
if printf '%s' "$UPD_BIN" | grep -q "install_module"; then
  echo "  [OK] update-binary contains install_module call"
else
  echo "  [ERROR] update-binary does not call install_module (may be old stub)" >&2
  ERRORS=$((ERRORS + 1))
fi

# ── Check files are at ZIP root (no nesting parent directory) ─────────────────
echo "Checking ZIP root structure (no parent directory nesting)..."
if unzip -l "$ZIP" 2>/dev/null | awk '{print $NF}' | grep -qxF "module.prop"; then
  echo "  [OK] module.prop is at ZIP root"
else
  echo "  [ERROR] module.prop not found at ZIP root - ZIP may be incorrectly nested" >&2
  ERRORS=$((ERRORS + 1))
fi

# ── Check no development artefacts are present ───────────────────────────────
echo "Checking for development artefacts..."
JUNK_FOUND=0
for junk in ".git/" ".github/" "tools/" "scripts/" "dist/"; do
  if unzip -l "$ZIP" 2>/dev/null | awk '{print $NF}' | grep -qF "$junk"; then
    echo "  [WARN] ZIP contains development artefact path: $junk"
    JUNK_FOUND=$((JUNK_FOUND + 1))
  fi
done
if [ "$JUNK_FOUND" -eq 0 ]; then
  echo "  [OK] No development artefacts found"
fi

# ── Summary ───────────────────────────────────────────────────────────────────
echo ""
if [ "$ERRORS" -gt 0 ]; then
  echo "VALIDATION FAILED: $ERRORS error(s) found." >&2
  exit 1
else
  echo "VALIDATION PASSED: ZIP is structurally valid for Magisk installation."
fi
