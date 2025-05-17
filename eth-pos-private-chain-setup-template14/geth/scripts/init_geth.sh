#!/bin/bash

# Initialize Geth with the specified genesis configuration

# Set the data directory for Geth
DATA_DIR="./data"

# Create the data directory if it doesn't exist
mkdir -p $DATA_DIR

# Initialize Geth with the genesis configuration
geth init --datadir $DATA_DIR ../genesis.json

# Start Geth in the background
geth --datadir $DATA_DIR --networkid 1234 --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --allow-insecure-unlock &

echo "Geth has been initialized and started."