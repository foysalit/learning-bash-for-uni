#!/usr/bin/gawk -f
BEGIN {
	system("rm -f outFile.txt");
	while(getline < "file.txt") {
		replacements[$1]=$2;
	}

	while(getline < "inFile.txt") {
		for(rep in replacements) {
			gsub(rep, replacements[rep], $0);
			print rep, replacements[rep], $0;
		}
		print $0 >> "outFile.txt";
	}
}