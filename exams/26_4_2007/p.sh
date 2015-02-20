#!/bin/bash

PIDS=$!
FILENAME_BASE="out"

if [ -z $1 ]; then
	echo "Must pass a number argument"
	exit 1
fi

for (( i = 1; i <= $1; i++ )); do
	ls > "$FILENAME_BASE$i" &
	PIDS="$PIDS $!"
done

for id in $PIDS; do
	sleep 3
	echo "Killing job with id: $id"
	kill "$id"
done