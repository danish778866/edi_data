#!/bin/bash

PROJECT_DIR=$(dirname $(cd `dirname $0` && pwd))
METADATA_FILE="${PROJECT_DIR}/metadata/$1"
DATA_DIR="${PROJECT_DIR}/data"

if [ ! -d $DATA_DIR ]
then
    mkdir $DATA_DIR
fi

pushd $DATA_DIR
while read line
do
    PACKAGE=`echo $line | cut -d' ' -f1`
    URL=`echo $line | cut -d' ' -f2`
    if [ ! -d $PACKAGE ]
    then
        mkdir $PACKAGE
    fi
    pushd $PACKAGE
    echo "Crawling $PACKAGE..."
    echo "Retrieving $URL..."
    wget  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "${URL}"
    popd
    echo "Done retrieving $URL..."
done < ${METADATA_FILE}
popd
