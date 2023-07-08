#!/bin/bash

trap printout SIGINT
printout() {
	echo "Finished executing script"
	exit 0
}

while true
do
	echo "Reading from file..."
	pacat --latency-msec=100 -p ./data/spotify/fifo/fifo
	echo "Pipe closed, retrying..."
done
