#!/bin/sh

USER_ID=`id -u`
USERNAME=`id -un`
GROUP_ID=`id -g`
GROUPNAME=`id -gn`

if [ -n "$1" ]; then
        IMAGE=$1
else
        IMAGE=shugaoye/caddy:2.6.2
fi

# Running from the current folder and set the parent folder as a volume
echo docker run -d -p 80:80\
  -v $PWD/index.html:/usr/share/caddy/index.html \
  -v caddy_data:$PWD/data \
  ${IMAGE}
