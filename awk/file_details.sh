#!/bin/bash
ls -l / | awk '
BEGIN {
	printf "%-16s %6d %-10s", "FileName", "Size", "Info"
}
{
	if (NR!=1) {
		if ($1 ~ /d.*/) {
			printf "%-16s %6d $%-10s \n", $9, $5, system("find /"$9" -maxdepth 1 -type d | wc -l")
		}
		else {
			printf "%-16s %6d %-10s \n", $9, $5, $1
		}
	}
}
' | sort -nk2