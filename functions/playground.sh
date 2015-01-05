#!/bin/bash
echo "Function without param"
greetings() {
	echo "Hello there"
}
greetings

echo "Function with param"
param_greetings() {
	if [ -z "$1" ]; then
		echo "No params are passed"
	else
		echo "Hello There "$1
	fi

}
param_greetings Foysal


