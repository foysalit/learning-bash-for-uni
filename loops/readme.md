# Syntax

```shell
(keyword) (expression); do
	(statement)
done
```

#### Example

### For Loop
```shell
# expression doesn't need a [] operator.
for file in $(ls); do
	echo file: $file
done
```

### While Loop
```shell
COUNTER=10

# Expression goes inside the [] operator
while [ $COUNTER -gt 0 ]; do
	echo current value: $COUNTER
	let COUNTER=COUNTER-1
done
```

### Untill Loop

Opposite expression of while loop
