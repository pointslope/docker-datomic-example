#!/bin/bash
if [ ! -f mbrainz.tar ]; then
    wget http://s3.amazonaws.com/mbrainz/datomic-mbrainz-1968-1973-backup-2015-02-11.tar -O mbrainz.tar
fi

if [ ! -d mbrainz-1968-1973 ]; then
    tar -xvf mbrainz.tar
fi


cat <<EOF
To load the mbrainz data, replace the volumes definition in docker-compose.yml under datomicdb with the following version which mounts the current directory:

  volumes:
    - "$(pwd):/data"

Note that this only works if the current directory on your host machine running $(uname) is mounted in the boot2docker virtual machine. This is true of the /Users path, for instance. For more info see: 

https://github.com/boot2docker/boot2docker#user-content-virtualbox-guest-additions
EOF
