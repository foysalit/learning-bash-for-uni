#!/usr/bin/awk -f

BEGIN {
	system ("rm results/id_scores-*")
	FS=":"

	while (getline < "student_id") {
		students[$1]=$2
	}
} 

{
	filename=$2
	sub(" ", "_", filename)
	print students[$1], $3 >> "results/id_scores-"filename
}

END {
	print "Done!"
}