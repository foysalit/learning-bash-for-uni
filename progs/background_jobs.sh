#!/bin/bash

COUNTER=1
PIDS=""

while [ $COUNTER -le $1 ]; do
	echo counter is: $COUNTER
	ls  >"~/tmp/out$COUNTER.txt" &
	PIDS="$PIDS $!"
	echo "NEW PID: $PIDS"
	COUNTER=$((COUNTER+1))
done
