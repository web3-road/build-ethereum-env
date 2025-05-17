#!/bin/bash

# This script is used to start the Geth client for the Ethereum PoS private chain setup.

# Set the data directory for Geth
DATA_DIR="./data"

# Create the data directory if it doesn't exist
mkdir -p $DATA_DIR

# Start Geth with the specified genesis file and other options
geth --datadir $DATA_DIR init ../genesis.json

# Start Geth in the background
geth --datadir $DATA_DIR --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --syncmode "full" --networkid 12345 --allow-insecure-unlock --mine --miner.threads=1 --verbosity 3 &

# Wait for Geth to start
sleep 5

# Output the Geth console URL
echo "Geth is running. You can access the console at http://127.0.0.1:8545"