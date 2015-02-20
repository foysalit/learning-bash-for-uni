#### & will give you the matched pattern
The following will turn the first letter of each line to **capital letter**

`cat poem.txt | sed 's/[a-z]/\u&/'`

#### \N can be used to access **N-th** match when using group
The following will print only the matched pattern from the second group

`cat poem.txt | sed 's/\([s-t]\) \([a-e]\) /\u\2/'`

#### \u will capitalize the output

#### /N can define operation for N-th occurence of a match on **each line**
The following will remove **2nd** occurence of test on each line

`cat poem.txt | sed 's/test/DELETED &/2gi'`

#### ranges can be used to run the sed operation for specific portion of the content
The following will run sed operation only for 2nd to 4th line

`cat poem.txt | sed '2, 4 s/test/Test/g'`

Run sed for the content that starts with **test** and ends with **foo**

`cat poem.txt | sed '/test/,/foo/ s/foo/BAR/g'`

Line numbers and pattern matcher can be mixed to specify a range

`cat poem.txt | sed '2,/goes/ s/foo/BAR/gi'`

#### $ sign represents the last line
The following will remove all lines from 3 to the last line
`cat poem.txt | sed '3,$ d'`

### -i option will persist the sed operations on file

#### the substitution operator format can be changed into _, | etc. instead of /
`cat poem.txt | sed '2, 4 s_test_Test_g'`