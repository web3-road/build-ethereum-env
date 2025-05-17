#!/bin/bash

# This script is used to start the Ethereum PoS private chain network.

# Set environment variables for the network
export NETWORK_NAME="ethereum-pos-private-chain"
export BEACON_CHAIN_DIR="./beacon-chain"
export EXECUTION_LAYER_DIR="./execution-layer"
export VALIDATORS_DIR="./validators"

# Start the Prysm beacon chain
echo "Starting Prysm beacon chain..."
cd $BEACON_CHAIN_DIR/prysm
prysm-beacon-chain --config=config.yaml &

# Start the Lighthouse beacon chain
echo "Starting Lighthouse beacon chain..."
cd $BEACON_CHAIN_DIR/lighthouse
lighthouse bn --network $NETWORK_NAME --config=beacon_node.env &

# Start the Geth execution layer
echo "Starting Geth execution layer..."
cd $EXECUTION_LAYER_DIR/geth
geth --config=config.toml --syncmode=full &

# Wait for all components to start
wait

echo "Ethereum PoS private chain network is up and running."