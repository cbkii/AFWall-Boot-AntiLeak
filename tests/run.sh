#!/usr/bin/env sh
# Run the complete host-side validation suite from one stable entry point.
set -eu

ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$ROOT"

for command_name in shellcheck busybox dash python3 git gcc readelf timeout sha256sum; do
  command -v "$command_name" >/dev/null 2>&1 || {
    printf 'ERROR: required test dependency is missing: %s\n' "$command_name" >&2
    exit 1
  }
done

shellcheck --severity=warning \
  bin/common.sh \
  bin/generation_guard.sh \
  bin/installer_config.sh \
  bin/lowlevel.sh \
  action.sh \
  post-fs-data.sh \
  reconfigure.sh \
  service.sh \
  uninstall.sh \
  tests/run.sh \
  tests/test-common-helpers.sh \
  tests/test-generation-guard.sh \
  tests/test-reconciliation.sh \
  tools/config-doc-tests.sh \
  tools/keycheck-tests.sh \
  tools/mock-logic-tests.sh \
  tools/recovery-tests.sh \
  tools/transport-readiness-tests.sh \
  tools/build-release.sh \
  tools/validate-zip.sh

git ls-files -z '*.sh' | xargs -0 -n1 sh -n
python3 -m py_compile tools/sync-version-metadata.py
python3 - <<'PY'
import importlib.util
import pathlib

path = pathlib.Path("tools/sync-version-metadata.py")
spec = importlib.util.spec_from_file_location("release_metadata", path)
if spec is None or spec.loader is None:
    raise SystemExit("could not import release metadata helper")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

cases = {
    ("v5.1.0", "patch"): "v5.1.1",
    ("v5.1.7", "minor"): "v5.2.0",
    ("v5.9.7", "major"): "v6.0.0",
    ("v5.1.99", "patch"): "v5.2.0",
    ("v5.99.99", "patch"): "v6.0.0",
    ("v5.99.7", "minor"): "v6.0.0",
}
for (version, part), expected in cases.items():
    actual = module.next_version(version, part)
    if actual != expected:
        raise SystemExit(f"{version} {part}: expected {expected}, got {actual}")

for invalid in ("v5.100.0", "v5.0.100"):
    try:
        module.next_version(invalid, "patch")
    except SystemExit:
        pass
    else:
        raise SystemExit(f"invalid current version was accepted: {invalid}")
PY
python3 tools/sync-version-metadata.py --check
python3 tools/sync-version-metadata.py --current >/dev/null
python3 tools/sync-version-metadata.py --next PATCH >/dev/null

metadata_hash_before="$(sha256sum module.prop update.json bin/common.sh | sha256sum | cut -d' ' -f1)"
for increment in patch minor major; do
  python3 tools/sync-version-metadata.py --next "$increment" >/dev/null
done
metadata_hash_after="$(sha256sum module.prop update.json bin/common.sh | sha256sum | cut -d' ' -f1)"
[ "$metadata_hash_before" = "$metadata_hash_after" ] || {
  printf 'ERROR: version planning modified release metadata\n' >&2
  exit 1
}

busybox ash tests/test-common-helpers.sh
dash tests/test-common-helpers.sh
busybox ash tests/test-generation-guard.sh
dash tests/test-generation-guard.sh
busybox ash tests/test-reconciliation.sh
dash tests/test-reconciliation.sh
sh tools/config-doc-tests.sh
sh tools/keycheck-tests.sh
sh tools/mock-logic-tests.sh
sh tools/recovery-tests.sh
sh tools/transport-readiness-tests.sh

printf 'All repository validation passed.\n'
