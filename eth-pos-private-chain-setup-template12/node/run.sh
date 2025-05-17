#!/bin/bash

# Start the Ethereum Geth node with the specified genesis configuration
geth --config ../configs/geth_genesis.json --datadir ../data --networkid 12345 --http --http.addr "0.0.0.0" --http.port "8545" --http.api "admin,eth,net,web3,personal" --allow-insecure-unlock --syncmode "full" --mine --miner.threads=1 --unlock "0xYourValidatorAddress" --password ../validator-keys/password.txt &

# Start the Prysm validator client
bash ../prysm-tools/prysm.sh

# Start the Lighthouse client
../lighthouse-tools/lighthouse bn --network mainnet --datadir ../lighthouse-data &

# Wait for all processes to finish
wait