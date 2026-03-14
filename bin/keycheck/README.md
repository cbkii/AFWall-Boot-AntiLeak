# keycheck — Volume Key Reader Binaries

This directory contains prebuilt `keycheck` binaries used as an installer
fallback for volume-key input detection. They are used when the primary
`getevent` method is unavailable or unreliable.

---

## Shipped binaries

| Architecture    | Filename          | Status    |
|-----------------|-------------------|-----------|
| arm64 / aarch64 | `keycheck-arm64`  | Included  |

The `keycheck-arm64` binary targets AArch64 (ARM 64-bit), which covers:
- Pixel 9a (primary target)
- All other modern Android devices using a 64-bit ARM SoC

The binary is statically linked and has no external dependencies.

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

On Pixel 9a and modern Pixels, `getevent` is the primary method and works
reliably. `keycheck` is the fallback for unusual recovery environments.

---

## Build

Compiled from a minimal C source using the Android-compatible struct layout:

```sh
aarch64-linux-gnu-gcc -O2 -static -o keycheck-arm64 keycheck.c
```

Source code is included in the module repository at `tools/keycheck.c`.
