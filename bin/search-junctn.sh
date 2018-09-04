#!/bin/sh

dns-sd -B _ssh._tcp | while read -r line ; do
  if echo $line | grep -vq junctn; then continue; fi
  JUNCTN_HOST_NAME=`echo $line | cut -d " " -f7`.local.
  echo $JUNCTN_HOST_NAME
  curl -vsk https://$JUNCTN_HOST_NAME/settings 2>&1 | grep -A 1 エクスチェンジのバージョン
done

