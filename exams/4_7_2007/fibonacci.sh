#!/bin/bash
if [ $# -lt 1 ]; then
	echo "Must define the number N"
	exit 1
fi

FIRST=0
SECOND=1

for (( i = 0; i < $1; i++ )); do
	echo $SECOND
	TEMP="$SECOND"
	SECOND=$((FIRST+SECOND))
	FIRST=$((TEMP))
done