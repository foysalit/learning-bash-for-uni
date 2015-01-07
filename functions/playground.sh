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

null_checker() {
	if [ -n "$1" ]; then
		echo "first param $1"
	fi

	if [ -n "$2" ]; then
		echo "Second param $2"
	fi
}
null_checker Bla Bla
