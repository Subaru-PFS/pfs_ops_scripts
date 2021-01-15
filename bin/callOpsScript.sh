# Arrange to call a program, saving the output in a known directory
#
# callOpsScript scriptName [args]
#   scriptName must be in the path; by convention in our bin/
#
# Output is appended to per-day files in /data/logs/scripts/$scriptName

. ${PFS_OPS_SCRIPTS_DIR}/bin/setup.sh

scriptName=$1
logFile=$(getLogFile $scriptName)

(
    echo "# starting $scriptName $@ at $(now)"
    echo "# ${PFS_OPS_SCRIPTS_DIR} $(ourVersion)"
    echo
    eval "$@"
) >>$logFile 2>&1


