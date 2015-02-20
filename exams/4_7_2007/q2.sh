#!/bin/bash
: '
4. Command w displays all user that are logged to the system, and produces some information  related to their activity. An example of command w output il the following:
19:07:39 up 1 day,  8:19,  2 users,  load average: 0.00, 0.12, 0.21
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU  WHAT
laface   pts/0    :0.0             18:58    9:14m  0.16s  0.16s bash
laface   pts/1    :0.0             18:58    0.00s  0.26s  0.03s w
Implement an shell script that that takes one parameter form the input line, in the format of the LOGIN time,  analyzes the command w output, and displays to the administrator all users that have logged at that time, and the names of their processes.
'

if [ $# -lt 1 ]; then
	echo "Must set the login time"
	exit 1
fi

w | awk '
NR>2 && $4=="'$1'"{print $1, $8}
'