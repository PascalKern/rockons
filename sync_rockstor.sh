#!/usr/bin/env bash

#set -x
set -e

# To run in shell:
# for f in /root/rockons-metastore/*.json; do ln -s -f $f "/opt/rockstor/rockons-metastore/$(basename $f)"; done

ROCK_BASE=/opt/rockstor
METASTORE=/root/rockons-metastore

rock_meta_store=$ROCK_BASE/rockons-metastore

rm -rf $rock_meta_store/* > /dev/null

for f in $METASTORE/*.json; do
	echo "Create link: $rock_meta_store/$(basename $f) -> $f" 
	ln -s -f $f "$rock_meta_store/$(basename $f)"; 
done

