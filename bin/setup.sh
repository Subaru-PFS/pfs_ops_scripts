LOGROOT=/data/logs/scripts

function now () {
    ts=$(date +"%Y-%m-%dT%H:%M:%S")

    echo $ts
}

function today () {
    ts=$(date +"%Y-%m-%d")

    echo $ts
}

function getLogFile () {
    # Return the log filename we want to append to.
    baseName=$1
    dirName="$LOGROOT/$baseName"
    
    mkdir -p $dirName

    echo "$dirName/$(today).log"
}

function ourVersion () {
    ( cd ${PFS_OPS_SCRIPTS_DIR}
      git describe --dirty --always
    )
}
