#!/bin/bash

# This script is used to start the Geth execution client for the Ethereum PoS private chain.

# Set the data directory for Geth
DATA_DIR="./data"

# Create the data directory if it doesn't exist
mkdir -p $DATA_DIR

# Start Geth with the specified configuration
geth --config config.toml --datadir $DATA_DIR --syncmode full --http --http.addr "0.0.0.0" --http.port 8545 --http.api "eth,net,web3,personal" --allow-insecure-unlock --mine --miner.threads=1 --networkid 12345 --nodiscover --verbosity 3 --rpc.allow-unprotected-txs &

# Wait for Geth to start
sleep 5

echo "Geth execution client started."