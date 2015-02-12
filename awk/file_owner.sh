#!/bin/bash
echo "Filename    Owner"
ls -l | awk '{if (NR!=1) {print $9, $3}}' | sort -rk1