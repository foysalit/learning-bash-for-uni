#!/bin/bash
echo $PATH | awk '
BEGIN {RS=":"; needle="/usr/local/bins"; hasBin=0}
($1==needle) {hasBin=1}
END {
	if(hasBin==1) {
		print "Has "needle
	} else {
		print "Does not have "needle
	}
}
'
echo $?