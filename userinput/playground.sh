#!/bin/bash -x

greetings() {
	echo "Please Enter Your Name: "
	read NAME

	if [ -z "$NAME" ]; then	
		echo "empty name!"
		greetings
	else
		echo "Inserted Name: $NAME"
		exit
	fi
}

# greetings

colors() {
	echo -e "Please Enter the colors you like: "
	read -a COLORS
	ELEMENTS=${#COLORS[@]}
	
	echo "You inserted $ELEMENTS colors"
	echo "My favorite colors are also - "
	for color in "${COLORS[@]}"; do
		echo "$color"
	done
}
colors
greetings