#!/usr/bin/env python3
"""Validate or synchronise release version metadata."""

import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parents[1]
VERSION_RE = re.compile(r"^v(\d+)\.(\d+)\.(\d+)$")


def version_code_from_version(version: str) -> int:
    match = VERSION_RE.match(version)
    if not match:
        raise SystemExit(f"version must be vMAJOR.MINOR.PATCH, got: {version}")
    major, minor, patch = (int(value) for value in match.groups())
    if minor > 99 or patch > 99:
        raise SystemExit("minor and patch must be <= 99 for versionCode encoding")
    return major * 10000 + minor * 100 + patch


def read_module_metadata() -> tuple[str, int, str]:
    text = (ROOT / "module.prop").read_text(encoding="utf-8")
    values: dict[str, str] = {}
    for raw_line in text.splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        values[key.strip()] = value.strip()

    version = values.get("version", "")
    code_text = values.get("versionCode", "")
    module_id = values.get("id", "")
    if not version or not code_text or not module_id:
        raise SystemExit("module.prop must define non-empty id, version and versionCode")
    if not code_text.isdigit():
        raise SystemExit(f"module.prop versionCode must be numeric, got: {code_text}")
    return version, int(code_text), module_id


def check_metadata() -> None:
    version, code, _module_id = read_module_metadata()
    expected_code = version_code_from_version(version)
    if code != expected_code:
        raise SystemExit(
            f"module.prop versionCode {code} does not match {version} "
            f"(expected {expected_code})"
        )

    update_data = json.loads((ROOT / "update.json").read_text(encoding="utf-8"))
    if update_data.get("version") != version or update_data.get("versionCode") != code:
        raise SystemExit(
            "update.json version metadata does not match module.prop: "
            f"{update_data.get('version')}/{update_data.get('versionCode')} "
            f"!= {version}/{code}"
        )

    common_text = (ROOT / "bin/common.sh").read_text(encoding="utf-8")
    if not re.search(
        rf'^MODULE_VERSION="{re.escape(version)}"$', common_text, re.MULTILINE
    ):
        raise SystemExit("bin/common.sh MODULE_VERSION does not match module.prop")


def replace(path: str, patterns: list[tuple[str, str]]) -> None:
    target = ROOT / path
    text = target.read_text(encoding="utf-8")
    original = text
    for pattern, replacement in patterns:
        text = re.sub(pattern, replacement, text, flags=re.MULTILINE)
    if text != original:
        target.write_text(text, encoding="utf-8")


def replace_exact(path: str, old: str, new: str) -> None:
    target = ROOT / path
    text = target.read_text(encoding="utf-8")
    updated = text.replace(old, new)
    if updated != text:
        target.write_text(updated, encoding="utf-8")


def set_metadata(version: str, code_text: str) -> None:
    expected_code = version_code_from_version(version)
    if not code_text.isdigit():
        raise SystemExit(f"versionCode must be numeric, got: {code_text}")
    if int(code_text) != expected_code:
        raise SystemExit(
            f"versionCode {code_text} does not match {version} "
            f"(expected {expected_code})"
        )

    current_version, _current_code, _module_id = read_module_metadata()

    replace(
        "module.prop",
        [(r"^version=.*$", f"version={version}"), (r"^versionCode=.*$", f"versionCode={code_text}")],
    )
    update_json = ROOT / "update.json"
    data = json.loads(update_json.read_text(encoding="utf-8"))
    data["version"] = version
    data["versionCode"] = int(code_text)
    update_json.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")

    replace(
        "bin/common.sh",
        [
            (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
            (r"^MODULE_VERSION=.*$", f'MODULE_VERSION="{version}"'),
            (r"v\d+\.\d+\.\d+ breaking-change config model", f"{version} breaking-change config model"),
            (r"derived only from v\d+\.\d+\.\d+ user-facing settings", f"derived only from {version} user-facing settings"),
        ],
    )
    replace(
        "bin/lowlevel.sh",
        [
            (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
            (r"derived from v\d+\.\d+\.\d+ VPN_LOCKDOWN_MODE", f"derived from {version} VPN_LOCKDOWN_MODE"),
        ],
    )
    replace(
        "bin/installer_config.sh",
        [
            (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
            (r"v\d+\.\d+\.\d+ profiles", f"{version} profiles"),
            (r"AFWall Boot AntiLeak v\d+\.\d+\.\d+ local overrides", f"AFWall Boot AntiLeak {version} local overrides"),
            (r"── v\d+\.\d+\.\d+ Configuration Summary", f"── {version} Configuration Summary"),
            (r"v\d+\.\d+\.\d+ is a breaking config cleanup release", f"{version} is a breaking config cleanup release"),
        ],
    )
    replace(
        "config.sh",
        [
            (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
            (r"Breaking-change note: v\d+\.\d+\.\d+", f"Breaking-change note: {version}"),
        ],
    )
    replace(
        "common/install.sh",
        [
            (r"AFWall Boot AntiLeak\s+v\d+\.\d+\.\d+", f"AFWall Boot AntiLeak  {version}"),
            (r"\[v\d+\.\d+\.\d+ BREAKING CONFIG CLEANUP\]", f"[{version} BREAKING CONFIG CLEANUP]"),
        ],
    )
    replace(
        "reconfigure.sh",
        [(r"v\d+\.\d+\.\d+ ignores old external config paths", f"{version} ignores old external config paths")],
    )
    replace(
        "service.sh",
        [
            (r"v\d+\.\d+\.\d+ config-derived internal defaults", f"{version} config-derived internal defaults"),
            (r"watchdog clocks in v\d+\.\d+\.\d+", f"watchdog clocks in {version}"),
        ],
    )
    for document in ("README.md", "ADVANCED.md"):
        replace_exact(document, current_version, version)

    check_metadata()


def main() -> int:
    if sys.argv[1:] == ["--check"]:
        check_metadata()
        print("Release metadata is consistent.")
        return 0

    if len(sys.argv) != 3:
        print(
            "usage: sync-version-metadata.py --check | "
            "sync-version-metadata.py vMAJOR.MINOR.PATCH VERSION_CODE",
            file=sys.stderr,
        )
        return 2

    set_metadata(sys.argv[1].strip(), sys.argv[2].strip())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
