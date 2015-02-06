#!/bin/bash

COLCOUNTER=1
COLNAME='LOGIN@'
COLNUM=0
OUTPUTFILE="/home/foysal/tmp/w"

w > "$OUTPUTFILE"
w

COLUMNS=$(awk "NR == 2" "$OUTPUTFILE")
#echo "${COLUMNS}"

for col in $COLUMNS; do
	#echo col: $col colname: $COLNAME
	if [ $col = $COLNAME ]; then
		COLNUM=$((COLCOUNTER))
	fi
	COLCOUNTER=$((COLCOUNTER+1))	
done

echo Total Columns: $COLCOUNTER Column number is: $COLNUM
COMMAND="{print \$$COLNUM}"
awk $COMMAND $OUTPUTFILE
rm "$OUTPUTFILE"
