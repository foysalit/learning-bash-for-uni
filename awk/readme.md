#### FS can be used to define column separator for input
#### OFS can be used to define column separator for output
#### NR gives the number of records/lines
#### NF gives the number of fields/columns
#### length() can be used to calculate length of a column
```bash
#!/bin/bash

# get all processes
# calculate length of process name and print the name along with length
# reverse sort them in DESC order based on the length column
# remove all but the first line using sed
ps aux | awk '
BEGIN{
	printf "%-3d %100s\n", length, name 
} {
	if (NR>1) {
		printf "%-3d %-100s\n", length($11), $11
	}
}' | sort -nrk1 | sed '1!d'
```

#### adding a condition before the operation block will ensure that the operation only runs for lines where the conditions are met

#### ~ character is used to build string match condition

```bash
#!/bin/bash

# print the process name and user only when the process name contains /usr/
ps aux | awk '($11 ~ /\/usr\// && NR>1) {printf "%-10s %-100s\n", $1, $11}'

# print the process name only for user defined by argument
ps aux | awk '($1=="'"$1"'") {print $11}'
``` 