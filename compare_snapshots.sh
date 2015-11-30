#!/bin/bash
ROUTERS=`cat routers.txt`

if [ "$SNAP" = "a" ]; then
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
	jsnap --check before,after -l root -t $router master.conf

	done
fi
