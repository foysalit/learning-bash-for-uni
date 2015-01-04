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

