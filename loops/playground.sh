#!/bin/bash

for i in $(ls); do
	echo item: $i
done

COUNTER=10
while [ $COUNTER -gt 0 ]; do
	echo counter is: $COUNTER
	COUNTER=$((COUNTER-1))
done
