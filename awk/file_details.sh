#!/bin/bash

# take arbitrary number of input names from terminal and print the 
# size and permission and name of the file if it's a file
# size and number of sub directories and name of if it's a folder

TMP_FILE="/tmp/proc_with_longest_name.tmp"
DIR_TO_SEARCH="~/"

ls -l ~/ > $TMP_FILE
COUNTER=0

FILES=$(awk 'NR!=1{print $9}' $TMP_FILE)  

for filename in $FILES; do
	if [ -d $DIR_TO_SEARCH$filename ] 
	then
		echo "name:$filename | subdirs:" find $DIR_TO_SEARCH$filename -maxdepth 1 -type d | wc -l
	fi

	if [ -f $DIR_TO_SEARCH$filename ] 
	then
		echo "name:$filename | size: " du -h $DIR_TO_SEARCH$filename | cut " " -f1
	fi
done

rm $TMP_FILE