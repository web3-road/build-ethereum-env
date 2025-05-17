#!/bin/bash

# This script initializes the Geth environment for the Ethereum PoS private chain setup.

# Set the data directory for Geth
DATA_DIR="./geth-data"

# Create the data directory if it doesn't exist
if [ ! -d "$DATA_DIR" ]; then
  mkdir -p "$DATA_DIR"
fi

# Initialize Geth with the genesis configuration
geth init ./geth/geth-genesis.json --datadir "$DATA_DIR"

# Start Geth in the background
geth --datadir "$DATA_DIR" --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --syncmode "full" &

echo "Geth has been initialized and is running."