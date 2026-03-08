# keycheck — Volume Key Reader Binaries

This directory holds arch-appropriate `keycheck` pre-compiled binaries used as a
fallback input method during installer configuration when raw `getevent` detection
is unreliable (e.g., unusual recovery environments or delayed event delivery).

---

## Expected filenames

| Architecture  | Filename             |
|---------------|----------------------|
| arm64 / aarch64 | `keycheck-arm64`  |
| arm (32-bit)  | `keycheck-arm`       |
| x86_64        | `keycheck-x86_64`    |
| x86 / i686    | `keycheck-x86`       |

Place the appropriate binary for each architecture in this directory.  All
binaries must be marked executable (`chmod +x`).

---

## Exit codes

| Exit code | Meaning   |
|-----------|-----------|
| 41        | VOL+ pressed |
| 42        | VOL- pressed |
| other     | Timeout or no key detected |

---

## Source and build

The canonical keycheck source is maintained by Zackptg5 as part of the
MMT-Extended module toolkit:

  https://github.com/Zackptg5/MMT-Extended

To build for Android targets you need the Android NDK.  Example (arm64):

```sh
$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang \
    -O2 -static -o keycheck-arm64 keycheck.c
```

---

## Fallback behaviour

If no binary is present for the current architecture the installer falls back
gracefully:

1. Raw `getevent` is used exclusively (the primary method on modern Pixels).
2. If `getevent` also fails, the non-interactive fallback chain is used:
   installer.cfg → existing preserved config → safe defaults.

No binary is required for correct installer operation on Pixel 9a or similar
devices where `getevent` works reliably.
