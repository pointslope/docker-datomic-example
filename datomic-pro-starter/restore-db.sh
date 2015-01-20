#!/bin/bash
NAME=mbrainz-1968-1973
DIR=/data/$NAME

if [ $# -ne 1 ]; then
    echo "usage: $0 <storage>"
    exit 1
fi

if [ ! -d $DIR ]; then
    echo "Data not found. Please mount data volume first."
    exit 2
fi

$DATOMIC_HOME/bin/datomic restore-db \
                          file://$DIR \
                          datomic:$1://127.0.0.1:4334/$NAME
