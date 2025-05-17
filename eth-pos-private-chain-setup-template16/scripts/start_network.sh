#!/bin/bash

# Start the Ethereum PoS private chain network

# Start Geth
echo "Starting Geth..."
geth --config ../config/geth-config.toml --datadir ../geth/private_chain --networkid 1234 --http --http.port 8545 --http.addr "0.0.0.0" --http.corsdomain "*" --mine --miner.threads=1 &

# Start Prysm Beacon Chain
echo "Starting Prysm Beacon Chain..."
prysm-beacon-chain --config ../config/prysm-config.yaml &

# Start Prysm Validator
echo "Starting Prysm Validator..."
prysm-validator --config ../config/prysm-config.yaml &

# Start Lighthouse
echo "Starting Lighthouse..."
lighthouse bn --network mainnet --http --http-port 5052 &

echo "Ethereum PoS private chain network started."