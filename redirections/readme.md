## Methods of redirecting outputs

#### Format
`command [redirector] [endpoint]`
===============================

#### Redirectors

1. ` > ` - stdout
2. ` 2> ` - stderr
3. ` &> ` - stderr and stdout

### Examples

1. `ls > ls-output-container.txt` - outputs the result of running the command `ls` into the file `ls-output-container.txt`
2. `lsd 2> lsd-error-container.txt` - lsd isn't a command and the error message from running this command will be put into the `lsd-error-container.txt` file
3. ` 1>&2 ` sends the stdout content to the stderr stream
4. ` 2>&1 ` sends the stderr content to the stdout stream
