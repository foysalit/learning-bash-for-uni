#!/usr/bin/awk -f

{
	if (NR>1 && $9!~/\.(.*)/) {
		print $3, $5, $9
	}
}

END {
	print FILENAME
}