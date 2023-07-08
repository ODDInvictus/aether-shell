#!/bin/bash

echo "Starting the AETHER..."

# check if fifo exists
if [ ! -p ./data/spotify/fifo/fifo ]; then
    echo "FIFO not found, creating..."
    mkfifo ./data/spotify/fifo/fifo
fi

docker compose up -d
