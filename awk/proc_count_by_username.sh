#!/bin/bash
printf "%-16s %-9s\n" "User" "Processes"
ps aux | awk '
BEGIN {
	USERNAME[""]=0
}
{
	USERNAME[$1]++
}
END {
	FORMAT="%-16s %-3d\n"
	for (u in USERNAME) {
		if (u!="") {
			printf FORMAT, u, USERNAME[u]
		}
	}
}
' | sort -nrk2