#!/bin/bash

# This script sets up Geth for the Ethereum PoS private chain.

# Define variables
DATA_DIR="./data"
GENESIS_FILE="./genesis/genesis.json"
GETH_BINARY="geth"

# Create data directory if it doesn't exist
if [ ! -d "$DATA_DIR" ]; then
  mkdir -p "$DATA_DIR"
fi

# Initialize Geth with the genesis file
$GETH_BINARY init $GENESIS_FILE --datadir $DATA_DIR

# Start Geth in the background
$GETH_BINARY --datadir $DATA_DIR --networkid 1234 --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --allow-insecure-unlock --mine --miner.threads=1 &

echo "Geth has been set up and is running."