# keycheck — Volume Key Reader Binaries

This directory contains prebuilt `keycheck` binaries used as an installer
fallback for volume-key input detection. They are used when the primary
`getevent` method is unavailable or unreliable.

---

## Shipped binaries

| Architecture    | Filename           | Status    |
|-----------------|--------------------|-----------|
| arm64 / aarch64 | `keycheck-arm64`   | Included  |
| x86_64          | `keycheck-x86_64`  | TODO (placeholder only) |

The module currently ships an ARM64 keycheck binary plus an x86_64 placeholder
file (`keycheck-x86_64.placeholder`) with build instructions/TODO notes.

The installer already detects alternate keycheck names/locations used by common
MMT/module-installer layouts (`META-INF/com/google/android/<arch>/keycheck`).

This improves compatibility across:
- modern physical Android devices (arm64)
- x86_64 Android emulators/virtualized test targets
- installer environments that expose MMT-style helper paths

The ARM64 binary is statically linked and has no external dependencies.

---

## Exit codes

| Exit code | Meaning                        |
|-----------|--------------------------------|
| 41        | VOL+ pressed                   |
| 42        | VOL- pressed                   |
| 1         | Timeout or no key detected     |

---

## How it works

The binary opens all `/dev/input/event*` devices, then waits up to 10 seconds
for a `EV_KEY` DOWN event with code `KEY_VOLUMEUP` (115) or `KEY_VOLUMEDOWN`
(114). Returns 41 on VOL+, 42 on VOL-, 1 on timeout.

---

## How the installer uses it

1. Primary method: raw `getevent -lq` (streams events directly).
2. Fallback: arch-appropriate `keycheck` binary if getevent is unavailable.
3. If neither method works: non-interactive fallback
   (installer.cfg → existing config → safe defaults).

---

## Build

Compiled from a minimal C source using an Android-compatible input-event layout:

```sh
# arm64
aarch64-linux-gnu-gcc -O2 -static -o bin/keycheck/keycheck-arm64 tools/keycheck.c

# TODO (future binary add):
# x86_64
x86_64-linux-gnu-gcc -O2 -static -o bin/keycheck/keycheck-x86_64 tools/keycheck.c
chmod 755 bin/keycheck/keycheck-x86_64
```

Source code is included in the module repository at `tools/keycheck.c`.
