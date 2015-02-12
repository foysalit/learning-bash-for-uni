#!/bin/bash

TMP_FILE="/tmp/proc_with_longest_name.tmp"

ps aux | 
awk '
BEGIN{
	FS=" "
}
{
	split($11,PROCNAME," ")
	if ($1=="'$1'") {print PROCNAME[1],length(PROCNAME[1])}
}' | 
sort -rnk 2 > $TMP_FILE

head -n 1 $TMP_FILE | awk '{print $1}'

rm $TMP_FILE
