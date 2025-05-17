#!/bin/bash

# This script is used to start the Geth client for the Ethereum PoS private chain.

# Set the data directory for Geth
DATA_DIR="./geth"

# Start Geth with the specified genesis file and enable the RPC server
geth --datadir $DATA_DIR init $DATA_DIR/genesis.json
geth --datadir $DATA_DIR --http --http.addr "0.0.0.0" --http.port "8545" --http.api "admin,debug,eth,miner,net,rpc,txpool,web3" --networkid 1234 --allow-insecure-unlock --mine --miner.threads=1 --syncmode "full" --rpc.allow-unprotected-txs --verbosity 3 &

echo "Geth has been started with the specified configuration."