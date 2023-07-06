#!/bin/bash

echo "Starting the AETHER..."

# check if fifo exists
if [ ! -p ./data/spotify/spotify_fifo ]; then
    echo "FIFO not found, creating..."
    mkfifo ./data/spotify/spotify_fifo
fi

docker-compose up -d