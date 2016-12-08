#!/usr/bin/env bash
set -e

if [[ $# -eq 0 ]]; then
    printf "usage: $(basename $0) <version> \n";
    exit 1;
fi

for x in datomic-console datomic-pro-starter; do
    sed -i '' -e "s/$x:[0-9]\.[0-9]\.[0-9]*/$x:$1/" $x/Dockerfile
done 

#sed -i '' -e "s/datomic-console:[0-9]\.[0-9]\.[0-9]*/datomic-console:$1/" datomic-console/Dockerfile
