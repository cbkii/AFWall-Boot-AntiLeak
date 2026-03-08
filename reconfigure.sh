#!/system/bin/sh
# AFWall Boot AntiLeak — Post-install reconfiguration tool.
#
# Usage (run as root in a terminal):
#   sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
#
# This script re-runs the same interactive config selection used during
# installation and writes the updated settings to the persistent config file:
#   /data/adb/AFWall-Boot-AntiLeak/config.sh
#
# The new settings take effect on the next reboot.
# No reflash is needed to change module options.

MODDIR="${0%/*}"

if [ ! -f "${MODDIR}/bin/installer_config.sh" ]; then
    echo ""
    echo "ERROR: Cannot find ${MODDIR}/bin/installer_config.sh"
    echo "Make sure the module is properly installed."
    exit 1
fi

IC_CONTEXT=runtime
. "${MODDIR}/bin/installer_config.sh"

echo ""
echo "================================================"
echo "  AFWall Boot AntiLeak -- Reconfigure"
echo "================================================"
echo ""
echo "  Changes take effect on the next reboot."
echo "  Config file: /data/adb/AFWall-Boot-AntiLeak/config.sh"
echo ""

ic_run_config_selection "reconfigure"
_ic_rc=$?

echo ""
if [ "$_ic_rc" = "0" ]; then
    echo "  Reconfiguration complete."
    echo "  Reboot to apply the new settings."
else
    echo "  Reconfiguration encountered an error."
    echo "  Check that /data/adb/AFWall-Boot-AntiLeak/ is writable."
fi
echo ""
