ui_print ""
ui_print "================================================"
ui_print "       AFWall Boot AntiLeak  v2.0.0"
ui_print "================================================"
ui_print "  Blocks ALL traffic at kernel level during"
ui_print "  early boot via iptables raw/filter table."
ui_print "  Block released ONLY after AFWall+ rules"
ui_print "  are confirmed active in iptables."
ui_print "================================================"
ui_print ""
ui_print "  Supports: Android 16 / Magisk >= 30.6"
ui_print "  Target:   Google Pixel (Android 16)"
ui_print ""
ui_print "================================================"
ui_print "  IMPORTANT: Remove any other antileak scripts"
ui_print "  from /data/adb/service.d/ before rebooting."
ui_print "  Legacy scripts are detected and removed"
ui_print "  automatically on first boot."
ui_print "================================================"
ui_print ""
ui_print "  Config: \$MODPATH/config.sh"
ui_print "  Logs:   /data/adb/AFWall-Boot-AntiLeak/logs/boot.log"
ui_print ""

# Set execute permissions on all module shell scripts.
set_perm "$MODPATH/post-fs-data.sh" root root 0755
set_perm "$MODPATH/service.sh"      root root 0755
set_perm "$MODPATH/action.sh"       root root 0755
set_perm "$MODPATH/uninstall.sh"    root root 0755
set_perm "$MODPATH/config.sh"       root root 0644
set_perm_recursive "$MODPATH/bin"   root root 0755 0755
