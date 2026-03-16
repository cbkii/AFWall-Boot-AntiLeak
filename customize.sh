##########################################################################################
#
# MMT Extended Config Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# This module targets Android 8+ (API 26+). Android 16 is the primary test target.
MINAPI=26
# Uncomment MAXAPI to restrict the upper bound if required.
#MAXAPI=
# This module does not install system libraries; DYNLIB is not applicable.
#DYNLIB=true
# This module does not install to extra partitions.
#PARTOVER=true
#PARTITIONS=""

##########################################################################################
# Replace list
##########################################################################################

# This module does not replace any system directories.
REPLACE="
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # All module shell scripts must be executable.
  # config.sh is intentionally read-only (0644) so accidental writes are obvious.
  set_perm "$MODPATH/post-fs-data.sh" root root 0755
  set_perm "$MODPATH/service.sh"      root root 0755
  set_perm "$MODPATH/action.sh"       root root 0755
  set_perm "$MODPATH/uninstall.sh"    root root 0755
  set_perm "$MODPATH/config.sh"       root root 0644
  set_perm_recursive "$MODPATH/bin"   root root 0755 0755
  # reconfigure.sh is a user-facing terminal tool.
  # MMT-Extended strips its shebang (# lines) during install; restore it here.
  # set_permissions runs after the comment-stripping loop, so this is safe.
  if [ -f "$MODPATH/reconfigure.sh" ]; then
    sed -i '1i #!/system/bin/sh' "$MODPATH/reconfigure.sh"
    set_perm "$MODPATH/reconfigure.sh" root root 0755
  fi
}

##########################################################################################
# MMT Extended Logic - Don't modify anything after this
##########################################################################################

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
