#!/bin/bash
DIRTEST="./awk/test"
COUNTER=1

cd "$DIRTEST"

SUBDIRS=$(find . -maxdepth 1 -type d)

for dir in $SUBDIRS; do
	if [ $COUNTER -gt 1 ]
	then
		echo "before $dir"
		echo "after $(echo "$dir" | sed 's/\.\/.*/\.\/\u$/\1/')"
	fi
	
	COUNTER=$((COUNTER+1))
done