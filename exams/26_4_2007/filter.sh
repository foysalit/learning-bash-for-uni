#!/bin/bash

if [ $# -lt 3 ]; then
	echo "Must pass 3 arguments"
	exit 1
fi

if [ ! -f $3 ]; then
	echo "File does not exist"
	exit 1
fi

#grep -e $1 -e $2 "$3"
cat "$3" | awk 'NR=='$1' || NR == '$2' {print}'