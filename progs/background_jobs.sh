#!/bin/bash

COUNTER=1
PIDS=""

while [ $COUNTER -le $1 ]; do
	echo counter is: $COUNTER
	#ls > "/home/foysal/tmp/out$COUNTER.txt" &
	watch -n 1 "ps aux | grep test" > "/home/foysal/tmp/out3.txt" &
	PIDS="$PIDS $!"
	COUNTER=$((COUNTER+1))
done

echo "killing processes: $PIDS"
kill -9 $PIDS
