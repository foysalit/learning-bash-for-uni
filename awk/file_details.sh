#!/bin/bash

# take arbitrary number of input names from terminal and print the 
# size and permission and name of the file if it's a file
# size and number of sub directories and name of if it's a folder

TMP_FILE="/tmp/proc_with_longest_name.tmp"
DIR_TO_SEARCH="/home/foysal"

for file in $@; do
	if [ -d $DIR_TO_SEARCH/$file ]
	then
		echo "name: $DIR_TO_SEARCH/$file | subdirs: " $(find $DIR_TO_SEARCH/$file -maxdepth 1 -type d | wc -l)
	fi

	if [ -f $DIR_TO_SEARCH/$file ]
	then
		ls -l $DIR_TO_SEARCH/$file | awk '
		{
			printf "name: %-s | permission: %-9s\n", "'$DIR_TO_SEARCH/$file'", $1
		}
		'
	fi
done