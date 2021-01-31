#!/bin/bash

path=$1

# Using only awk, sort and head.
echo "Top 5 unique IPs are as follows"
awk '{ print $1}' $path | sort | uniq -c | sort -nr | head -n 5
