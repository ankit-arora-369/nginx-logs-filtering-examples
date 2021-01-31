#!/bin/bash
path=$1
for server in `more servers.txt`
do
	output=`ssh $server "sudo du -h $path | sort -nr | head -n10"`
	echo "---------------------------------------------------------------------------"
	echo "HostName"
	echo "---------------------------------------------------------------------------"
	echo "$server"
	echo ""
	echo "---------------------------------------------------------------------------"
	echo "Paths found"
	echo "---------------------------------------------------------------------------"
	echo "$output"
	echo ""
	echo ""
	echo ""
done
