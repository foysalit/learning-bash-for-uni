#!/bin/bash
# print the process name only for user defined by argument 1
# and only the processes which contain "linux" in it
ps aux | awk '($1=="'"$1"'" && $11 ~ /linux/ && NR>1) {print $11}'