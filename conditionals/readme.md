# Syntax

```shell
# space between the [] operator and the expression is a must
if [ (expression) ]; then
	(statement)
else
	(statement)
fi
```

#### Example

```shell
#!/bin/bash
ONE=1
TWO=2

if [ $ONE = $TWO ]; then
	echo "variables match"
else
	echo "variables DOES NOT match"
fi
```

#### String Comparators
1. =, !=, >, < - Common ones.
2. `-n` - is **NOT** null, contains 1 or more characters
3. `-z` - is null

#### Arithmetic Comparators
-lt (<),  -gt (>), -le (<=), -ge (>=), -eq (==), -ne (!=) 
