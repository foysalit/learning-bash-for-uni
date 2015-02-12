#!/bin/bash
for line in "$(ls -l ~/)"; do
	echo "$line"
done