#!/bin/bash
PROJECT_DIR=$(dirname $(cd `dirname $0` && pwd))
DATA_DIR="${PROJECT_DIR}/data"
SRC_DIR="${PROJECT_DIR}/src"
LOG="${PROJECT_DIR}/logs/delete.log"
BAK="${PROJECT_DIR}/logs/delete.log.bak"

pushd $SRC_DIR
while true
do
    df -h
    ./delete_binary.sh > $LOG 2>&1
    df -h
    rm -vf $BAK
    mv $LOG $BAK
    sleep 300
done
popd
