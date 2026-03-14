/*
 * keycheck.c - Volume key reader for Magisk module installers
 * Reads /dev/input/event* and waits for a volume key press.
 *
 * Exit codes:
 *   41  = VOL+ pressed
 *   42  = VOL- pressed
 *   1   = timeout / no key / error
 *
 * Compile for Android arm64 (static):
 *   aarch64-linux-gnu-gcc -O2 -static -o keycheck-arm64 keycheck.c
 */

#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <stdlib.h>
#include <sys/select.h>
#include <sys/time.h>
#include <sys/types.h>

/* Linux input event types and codes */
#define EV_KEY          0x01
#define KEY_VOLUMEDOWN  0x72   /* 114 */
#define KEY_VOLUMEUP    0x73   /* 115 */

/* Exit codes expected by the installer */
#define EXIT_VOLUP    41
#define EXIT_VOLDOWN  42
#define EXIT_TIMEOUT  1

/* Input event struct layout for 64-bit Linux (arm64):
 *   struct timeval { long tv_sec; long tv_usec; }  = 16 bytes
 *   __u16 type, __u16 code, __s32 value             =  8 bytes
 *   total = 24 bytes
 * We define our own to avoid header portability issues.
 */
struct ie {
    unsigned long tv_sec;   /* 8 bytes on arm64 */
    unsigned long tv_usec;  /* 8 bytes on arm64 */
    unsigned short type;
    unsigned short code;
    int value;
};

#define MAX_FDS 32
#define WAIT_SECS 10

int main(void)
{
    int fds[MAX_FDS];
    int nfds = 0;
    int maxfd = -1;
    char path[64];
    DIR *dir;
    struct dirent *de;
    struct ie ev;
    fd_set rset;
    struct timeval tv;
    int i, ret;
    ssize_t n;

    dir = opendir("/dev/input");
    if (!dir)
        return EXIT_TIMEOUT;

    while ((de = readdir(dir)) != NULL && nfds < MAX_FDS) {
        if (strncmp(de->d_name, "event", 5) != 0)
            continue;
        if (strlen(de->d_name) < 6)
            continue;
        snprintf(path, sizeof(path), "/dev/input/%s", de->d_name);
        int fd = open(path, O_RDONLY | O_NONBLOCK);
        if (fd >= 0) {
            fds[nfds++] = fd;
            if (fd > maxfd) maxfd = fd;
        }
    }
    closedir(dir);

    if (nfds == 0)
        return EXIT_TIMEOUT;

    tv.tv_sec  = WAIT_SECS;
    tv.tv_usec = 0;

    for (;;) {
        FD_ZERO(&rset);
        for (i = 0; i < nfds; i++)
            FD_SET(fds[i], &rset);

        ret = select(maxfd + 1, &rset, NULL, NULL, &tv);
        if (ret <= 0)
            break;   /* timeout or error */

        for (i = 0; i < nfds; i++) {
            if (!FD_ISSET(fds[i], &rset))
                continue;
            n = read(fds[i], &ev, sizeof(ev));
            if (n < (ssize_t)sizeof(ev))
                continue;
            if (ev.type != EV_KEY)
                continue;
            if (ev.value != 1)   /* DOWN only, not UP or REPEAT */
                continue;
            if (ev.code == KEY_VOLUMEUP)
                return EXIT_VOLUP;
            if (ev.code == KEY_VOLUMEDOWN)
                return EXIT_VOLDOWN;
        }
    }

    return EXIT_TIMEOUT;
}
