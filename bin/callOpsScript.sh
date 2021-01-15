# Arrange to call a program, saving the output in a known directory
#
# callOpsScript scriptName [args]
#   scriptName must be in the path; by convention in our bin/
#
# Output is appended to per-day files in /data/logs/scripts/$scriptName

# This might be called from cron, etc., in which case we need to bootstrap
# ourselves.
if test -z "$PFS_OPS_SCRIPTS_DIR"; then
    . /software/ics_launch/bin/setup.sh
    setup pfs_ops_scripts
fi

. ${PFS_OPS_SCRIPTS_DIR}/bin/setup.sh

scriptName=$1
logFile=$(getLogFile $scriptName)

(
    echo "#"
    echo "# starting $scriptName $@ at $(now)"
    echo "# ${PFS_OPS_SCRIPTS_DIR} $(ourVersion)"
    echo
    eval "$@"
) >>$logFile 2>&1


