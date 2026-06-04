#!/system/bin/sh
# AFWall Boot AntiLeak — Post-install reconfiguration tool.
#
# Usage (run as root in a terminal):
#   sh /data/adb/modules/AFWall-Boot-AntiLeak/reconfigure.sh
#
# This script re-runs the same interactive config selection used during
# installation and writes module-local overrides to:
#   $MODDIR/config.local.sh
#
# v4.1.0 ignores old external config paths. The new settings take effect on the
# next reboot. No reflash is needed to change module options.

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
echo "  Config file: ${MODDIR}/config.local.sh"
echo ""

ic_run_config_selection "reconfigure"
_ic_rc=$?

echo ""
if [ "$_ic_rc" = "0" ]; then
    echo "  Reconfiguration complete."
    echo "  Reboot to apply the new settings."
else
    echo "  Reconfiguration encountered an error."
    echo "  Check that the installed module directory is writable."
fi
echo ""
