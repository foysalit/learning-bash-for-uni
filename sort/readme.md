#### -k is the number of column

The following will sort the content by the text from the 2nd column
`cat data.txt | sort -k2`

#### -r is for reversing the sort

The following will print same as above but reverse the order
`cat data.txt | sort -rk2`  

#### -t is used to set the delimiter between columns

The following will set column separator to be the : character, which by default is space
`cat data.txt | sort -t ':' -rk2`

The following will set column separator to be **tab**
`cat data.txt | sort -t $'\t' -rk2`

#### -n is used to define that the sorting will be on numeric data

The following will assume that the 2nd column has numeric value and reverse sort that column
`cat data.txt | sort -nrk2`

#### -f is used to ensure case insensitivity

The following sort will not be case sensitive
`cat data.txt | sort -f`