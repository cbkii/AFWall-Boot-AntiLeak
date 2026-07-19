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

git ls-files -z '*.sh' | xargs -0 -r -n1 sh -n
python3 -m py_compile tools/sync-version-metadata.py
python3 tools/sync-version-metadata.py --check

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
