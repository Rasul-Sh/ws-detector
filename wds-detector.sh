#!/bin/bash
if [ "$#" -eq "0" ]; then
	echo "determine your destination."
	exit 1
fi
WEBSERVER=$(curl -I --silent  $1 | grep "Server" )
if [ $? -ne 0 ]; then
	echo $?
	exit 1
fi
echo "$WEBSERVER"
