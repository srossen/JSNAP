#!/bin/bash
ROUTERS=`cat routers.txt`
SNAP=$1

if [ "$SNAP" = "" ]; then
	echo ""
	echo " ERROR: you must provide a snapshot name !!!"
	echo ""
	echo " Syntax:"
	echo ""
	echo ""
	echo "./get_snapshots.sh <SNAPSHOT_NAME>"
	echo ""
else
	for router in $ROUTERS; do
	echo "Collecting snapshot '$1' for router $router"
	jsnap --snap $1 -l root -p pass -t $router master.conf
	done
fi
