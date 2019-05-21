#!/bin/bash

PROJECT_DIR=$(dirname $(cd `dirname $0` && pwd))
METADATA_FILE="${PROJECT_DIR}/metadata/$1"
DATA_DIR="${PROJECT_DIR}/data"

pushd $DATA_DIR
for i in *
do 
    pushd $i 
    for j in *
    do 
        file_type=`file $j | cut -d' ' -f2`
        if [ ! "$file_type" == "ASCII" ]
        then
            rm -vf $j
        fi
    done
    popd
done
popd
