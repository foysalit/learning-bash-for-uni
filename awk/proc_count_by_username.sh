#!/bin/bash
ps aux | awk '
BEGIN {
	USERNAME[""]=0
}
{
	USERNAME[$1]++
}
END {
	FORMAT="%-16s %3d\n"
	printf "%-16s %9s\n", "User", "Processes"
	for (u in USERNAME) {
		if (u!="") {
			printf FORMAT, u, USERNAME[u]
		}
	}
}
' | sort -nrk2