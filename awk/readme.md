#### FS can be used to define column separator for input
#### OFS can be used to define column separator for output
#### NR gives the number of records/lines
#### NF gives the number of fields/columns
#### arrays use 1 based index
#### associative arrays must be initialized
`username[""]=0`

#### split can explodes a string into an array of strings based on a delimiter
`split(subject, array_container, delimeter)

```bash
#!/bin/bash

# take all the process names that matches the pattern /usr/lib/ 
# split the name into 2 using /usr/lib and since this is the first letters of the string, the first element of the array will be empty and the second element will contain the rest of the name
ps aux | awk '
BEGIN{
	match_pattern="/usr/lib/"
}
(NR>1 && $11 ~ match_pattern) {
	split($11, paths, match_pattern)
	print paths[2] 
}
'
```

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

### 2 comma separated conditions can be used to define start and ending condition for awk operations to run on

```bash
#!/bin/bash

# print the process name and user only when the process name contains /usr/
ps aux | awk '($11 ~ /\/usr\// && NR>1) {printf "%-10s %-100s\n", $1, $11}'

# print the process name only for user defined by argument
ps aux | awk '($1=="'"$1"'") {print $11}'

# print the process names from the line where a 
``` 