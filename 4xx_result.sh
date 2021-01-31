#!/bin/bash

path=$1

# Using only awk, sort, uniq and tail.
echo "Past 10-days 4XX results of Apache's access log file, sorted by date with their IP address : "
echo "---------------------------------------------------------------------------------------------"
echo " Date			IP				Status Code"
echo "---------------------------------------------------------------------------------------------"
output=$(awk -vDate=`date -d'now-10 days' +[%d/%b/%Y:%H:%M:%S` ' { if ($4 > Date && $9~/^[4]/) print $4 "        " $1  "             " $9}' $path | sort -nr)
echo "$output"
