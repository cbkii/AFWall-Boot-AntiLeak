#!/usr/bin/env bash
# build-release.sh — Build a Magisk-installable module ZIP for AFWall Boot AntiLeak.
#
# Usage:
#   tools/build-release.sh [output_dir [zip_name]]
#
# Arguments:
#   output_dir  Directory to write the ZIP and checksum into (default: dist/)
#   zip_name    Override the output ZIP filename (default: <MODULE_ID>-<VERSION>.zip)
#
# Output:
#   <output_dir>/<zip_name>       — Magisk-installable module ZIP
#   <output_dir>/sha256sum.txt    — SHA256 checksum of the ZIP
#   <output_dir>/build-info.txt   — Build metadata (version, date, git ref)
#
# Exit codes:
#   0  — Success
#   1  — Validation failure or packaging error

set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Resolve OUTPUT_DIR to an absolute path immediately so that `cd` later in the
# script does not cause paths like $OUTPUT_DIR/sha256sum.txt to resolve under
# the wrong working directory (dist/dist/... when called with a relative arg).
_OUTPUT_ARG="${1:-}"
if [ -n "$_OUTPUT_ARG" ]; then
  mkdir -p "$_OUTPUT_ARG"
  OUTPUT_DIR="$(cd "$_OUTPUT_ARG" && pwd)"
else
  OUTPUT_DIR="$REPO_ROOT/dist"
  mkdir -p "$OUTPUT_DIR"
fi
ZIP_NAME_OVERRIDE="${2:-}"

# ── Parse version from module.prop ────────────────────────────────────────────
MODULE_PROP="$REPO_ROOT/module.prop"

prop_get() {
  grep "^${1}=" "$MODULE_PROP" | cut -d= -f2 | tr -d '[:space:]'
}

VERSION="$(prop_get version)"
VERSION_CODE="$(prop_get versionCode)"
MODULE_ID="$(prop_get id)"

if [ -z "$VERSION" ] || [ -z "$VERSION_CODE" ] || [ -z "$MODULE_ID" ]; then
  echo "ERROR: Could not parse id/version/versionCode from $MODULE_PROP" >&2
  exit 1
fi

# ── Determine output ZIP name ─────────────────────────────────────────────────
if [ -n "$ZIP_NAME_OVERRIDE" ]; then
  ZIP_NAME="$ZIP_NAME_OVERRIDE"
else
  ZIP_NAME="${MODULE_ID}-${VERSION}.zip"
fi

ZIP_PATH="$OUTPUT_DIR/$ZIP_NAME"
CHECKSUM_PATH="$OUTPUT_DIR/sha256sum.txt"
BUILD_INFO_PATH="$OUTPUT_DIR/build-info.txt"

echo "============================================================"
echo "  Building: $ZIP_NAME"
echo "  id=$MODULE_ID  version=$VERSION  versionCode=$VERSION_CODE"
echo "  Output:   $OUTPUT_DIR"
echo "============================================================"

# ── Validate required source files ────────────────────────────────────────────
REQUIRED_FILES="
module.prop
customize.sh
META-INF/com/google/android/update-binary
META-INF/com/google/android/updater-script
common/functions.sh
common/install.sh
bin/common.sh
bin/installer_config.sh
action.sh
config.sh
post-fs-data.sh
reconfigure.sh
service.sh
uninstall.sh
update.json
"

echo "Validating required source files..."
ERRORS=0
for f in $REQUIRED_FILES; do
  # Skip blank lines
  [ -z "$f" ] && continue
  if [ ! -f "$REPO_ROOT/$f" ]; then
    echo "  [MISSING] $f" >&2
    ERRORS=$((ERRORS + 1))
  else
    echo "  [OK] $f"
  fi
done

if [ "$ERRORS" -gt 0 ]; then
  echo "ERROR: $ERRORS required file(s) missing from source tree. Aborting." >&2
  exit 1
fi

echo "All required source files present."

# ── Create output directory (already exists — created during path resolution) ─
# Remove any existing output for this ZIP name (idempotent rebuild)
rm -f "$ZIP_PATH" "$CHECKSUM_PATH" "$BUILD_INFO_PATH"

# ── Build ZIP ─────────────────────────────────────────────────────────────────
# All files are added from REPO_ROOT so they appear at the ZIP root (no nesting).
# Only module-relevant files are included; development/CI artefacts are excluded.
echo "Building ZIP..."
cd "$REPO_ROOT"
zip -r9 "$ZIP_PATH" \
  META-INF/ \
  common/ \
  bin/ \
  action.sh \
  config.sh \
  customize.sh \
  module.prop \
  post-fs-data.sh \
  reconfigure.sh \
  service.sh \
  uninstall.sh \
  update.json \
  README.md \
  ADVANCED.md \
  2>&1

echo "Built: $ZIP_PATH"

# ── Generate checksum ─────────────────────────────────────────────────────────
# Run sha256sum from OUTPUT_DIR (which is absolute) so the checksum line records
# just the bare filename — this is what `sha256sum -c` expects on the device.
# Use a subshell so the `cd` does not affect the rest of the script.
echo "Generating checksum..."
( cd "$OUTPUT_DIR" && sha256sum "$ZIP_NAME" > sha256sum.txt )
echo "Checksum:"
cat "$CHECKSUM_PATH"

# ── Write build metadata ──────────────────────────────────────────────────────
GIT_REF="$(git -C "$REPO_ROOT" rev-parse --short HEAD 2>/dev/null || echo unknown)"
GIT_BRANCH="$(git -C "$REPO_ROOT" rev-parse --abbrev-ref HEAD 2>/dev/null || echo unknown)"
BUILD_DATE="$(date -u '+%Y-%m-%dT%H:%M:%SZ' 2>/dev/null || echo unknown)"

cat > "$BUILD_INFO_PATH" <<EOF
module_id=$MODULE_ID
version=$VERSION
versionCode=$VERSION_CODE
zip_name=$ZIP_NAME
git_ref=$GIT_REF
git_branch=$GIT_BRANCH
build_date=$BUILD_DATE
EOF

echo "Build info:"
cat "$BUILD_INFO_PATH"

echo "============================================================"
echo "  Done: $ZIP_PATH"
echo "============================================================"
