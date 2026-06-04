#!/usr/bin/env python3
"""Synchronise release version/versionCode across module metadata and active docs."""
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
    major, minor, patch = (int(x) for x in match.groups())
    if minor > 99 or patch > 99:
        raise SystemExit("minor and patch must be <= 99 for versionCode encoding")
    return major * 10000 + minor * 100 + patch


def read_current_version() -> str:
    prop_path = ROOT / "module.prop"
    prop_text = prop_path.read_text(encoding="utf-8")
    current_version_match = re.search(r"^version=(.+)$", prop_text, re.MULTILINE)
    if not current_version_match:
        raise SystemExit("Could not find current version in module.prop")
    current_version = current_version_match.group(1).strip()
    if not current_version:
        raise SystemExit("Current version in module.prop is empty")
    return current_version


def replace(path: str, patterns: list[tuple[str, str]]) -> None:
    p = ROOT / path
    text = p.read_text(encoding="utf-8")
    original = text
    for pattern, repl in patterns:
        text = re.sub(pattern, repl, text, flags=re.MULTILINE)
    if text != original:
        p.write_text(text, encoding="utf-8")


def replace_exact(path: str, old: str, new: str) -> None:
    p = ROOT / path
    text = p.read_text(encoding="utf-8")
    updated = text.replace(old, new)
    if updated != text:
        p.write_text(updated, encoding="utf-8")


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: sync-version-metadata.py vMAJOR.MINOR.PATCH VERSION_CODE", file=sys.stderr)
        return 2
    version = sys.argv[1].strip()
    code = sys.argv[2].strip()
    expected_code = version_code_from_version(version)
    if not code.isdigit():
        raise SystemExit(f"versionCode must be numeric, got: {code}")
    if int(code) != expected_code:
        raise SystemExit(f"versionCode {code} does not match {version} (expected {expected_code})")

    current_version = read_current_version()

    replace("module.prop", [(r"^version=.*$", f"version={version}"), (r"^versionCode=.*$", f"versionCode={code}")])
    update_json = ROOT / "update.json"
    data = json.loads(update_json.read_text(encoding="utf-8"))
    data["version"] = version
    data["versionCode"] = int(code)
    update_json.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")

    replace("bin/common.sh", [
        (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
        (r"^MODULE_VERSION=.*$", f'MODULE_VERSION="{version}"'),
        (r"v\d+\.\d+\.\d+ breaking-change config model", f"{version} breaking-change config model"),
        (r"unsupported legacy variable ignored in v\d+\.\d+\.\d+", f"unsupported legacy variable ignored in {version}"),
        (r"legacy external config path ignored in v\d+\.\d+\.\d+", f"legacy external config path ignored in {version}"),
        (r"derived only from v\d+\.\d+\.\d+ user-facing settings", f"derived only from {version} user-facing settings"),
    ])
    replace("bin/lowlevel.sh", [
        (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
        (r"derived from v\d+\.\d+\.\d+ VPN_LOCKDOWN_MODE", f"derived from {version} VPN_LOCKDOWN_MODE"),
    ])
    replace("bin/installer_config.sh", [
        (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
        (r"v\d+\.\d+\.\d+ profiles", f"{version} profiles"),
        (r"AFWall Boot AntiLeak v\d+\.\d+\.\d+ local overrides", f"AFWall Boot AntiLeak {version} local overrides"),
        (r"── v\d+\.\d+\.\d+ Configuration Summary", f"── {version} Configuration Summary"),
        (r"v\d+\.\d+\.\d+ is a breaking config cleanup release", f"{version} is a breaking config cleanup release"),
    ])
    replace("config.sh", [
        (r"(# AFWall Boot AntiLeak )v\d+\.\d+\.\d+", rf"\g<1>{version}"),
        (r"Breaking-change note: v\d+\.\d+\.\d+", f"Breaking-change note: {version}"),
    ])
    replace("common/install.sh", [
        (r"AFWall Boot AntiLeak\s+v\d+\.\d+\.\d+", f"AFWall Boot AntiLeak  {version}"),
        (r"\[v\d+\.\d+\.\d+ BREAKING CONFIG CLEANUP\]", f"[{version} BREAKING CONFIG CLEANUP]"),
    ])
    replace("reconfigure.sh", [(r"v\d+\.\d+\.\d+ ignores old external config paths", f"{version} ignores old external config paths")])
    replace("service.sh", [
        (r"v\d+\.\d+\.\d+ config-derived internal defaults", f"{version} config-derived internal defaults"),
        (r"watchdog clocks in v\d+\.\d+\.\d+", f"watchdog clocks in {version}"),
    ])
    for doc in ("README.md", "ADVANCED.md"):
        replace_exact(doc, current_version, version)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
