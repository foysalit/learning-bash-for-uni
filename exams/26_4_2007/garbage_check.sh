#!/bin/bash
TEMP_FILE="/tmp/garbage_check.tmp"
declare -A USERS

if [ $# -lt 1 ]; then
	echo "Must pass in at least one username"
	exit 1
fi

if [ -e $TEMP_FILE ]; then
	echo "" > $TEMP_FILE
fi

for user in $@; do
	HOMEDIR=$(cat "/etc/passwd" | awk '
	BEGIN {FS=":"}
	{if ("'$user'" == $1) {print $6}}
	')
	echo $HOMEDIR >> $TEMP_FILE
	USERS[$user]="$HOMEDIR"
done
echo ${USERS}
#DIRS=$(cat "$TEMP_FILE")

for user in "${!USERS[@]}"; do
	if [ -z $user ]; then
		continue
	fi

	HOMEDIR="${USERS[$user]}"
	echo "home dir of $user is $HOMEDIR"

	TOTAL_SIZE=0
	GARBAGES=$(find $HOMEDIR -maxdepth 20 -name ".DS_store" -o -name "core" -o -name ".*~")

	for garbage in $GARBAGES; do
	 	SIZE=$(stat -c%s "$garbage")
	 	TOTAL_SIZE=$((TOTAL_SIZE+SIZE))
	done 

	SIZE_IN_MB=$(($TOTAL_SIZE/1024))
	if [ $SIZE_IN_MB -gt 1024 ]; then
		echo "WARNING user <$user> has a lot of garbage in his home. size: $SIZE_IN_MB"
	fi
done
