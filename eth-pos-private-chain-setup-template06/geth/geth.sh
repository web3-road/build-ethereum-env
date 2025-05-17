#!/bin/bash

# This script is used to start the Geth client for the Ethereum PoS private chain setup.

# Set the data directory for Geth
DATA_DIR="./data"

# Create the data directory if it doesn't exist
mkdir -p $DATA_DIR

# Start Geth with the specified genesis file and enable the RPC server
geth --datadir $DATA_DIR init ./genesis/genesis.json
geth --datadir $DATA_DIR --http --http.port 8545 --http.api "eth,net,web3,personal" --networkid 12345 --allow-insecure-unlock --mine --miner.threads=1 --syncmode "full" --rpcaddr "0.0.0.0" --rpcvhosts="*" --nodiscover --verbosity 3 &

# Wait for Geth to start
sleep 5

# Output the Geth console URL
echo "Geth is running. You can access the console at http://127.0.0.1:8545"