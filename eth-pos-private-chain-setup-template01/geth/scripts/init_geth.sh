#!/bin/bash

# Initialize Geth with the specified genesis configuration

# Set the data directory for Geth
DATA_DIR="./geth/data"

# Create the data directory if it doesn't exist
mkdir -p $DATA_DIR

# Initialize Geth with the genesis file
geth init ./geth/genesis.json --datadir $DATA_DIR

# Start Geth in the background
geth --datadir $DATA_DIR --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --syncmode "full" &

echo "Geth has been initialized and started."