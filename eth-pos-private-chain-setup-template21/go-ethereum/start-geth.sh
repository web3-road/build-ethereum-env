#!/bin/bash

# This script is used to start the Geth client for the Ethereum private chain.

# Set the data directory for Geth
DATA_DIR="./data"

# Initialize Geth with the genesis block
geth init --datadir $DATA_DIR ../genesis/genesis.json

# Start Geth with the specified options
geth --datadir $DATA_DIR --networkid 1234 --http --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain "*" --allow-insecure-unlock --mine --miner.threads=1 --unlock "0" --password ./password.txt --verbosity 3 --syncmode "full" --rpcapi "eth,net,web3,personal" --nodiscover --ipcpath "$DATA_DIR/geth.ipc"