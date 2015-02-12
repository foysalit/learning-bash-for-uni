#!/bin/bash

ps aux | 
awk '
BEGIN{
	FS=" "
}
{
	#split($11,PROCNAME," ")
	if ($1=="'$1'") {print $11}
}' | 
sort -nk 1