#!/bin/bash

# This script is used to start the Geth client for the Ethereum PoS private chain setup.

# Set the data directory for Geth
DATA_DIR="./geth"

# Start Geth with the specified genesis file and enable mining
geth --datadir $DATA_DIR init $DATA_DIR/genesis.json
geth --datadir $DATA_DIR --networkid 1234 --http --http.addr "0.0.0.0" --http.port 8545 --http.api "admin,debug,eth,miner,net,rpc,txpool,web3" --mine --miner.threads=1 --allow-insecure-unlock --unlock "0" --password ./validators/keystores/password.txt --syncmode "full" --verbosity 3 --rpc.allow-unprotected-txs --rpc.vhosts "*" &

echo "Geth client started successfully."