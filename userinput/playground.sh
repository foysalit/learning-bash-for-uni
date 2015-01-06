#!/bin/bash

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

greetings
