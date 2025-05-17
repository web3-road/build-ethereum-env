#!/bin/bash

# Start the Prysm beacon chain and validator

# Set the necessary environment variables
export PRYSM_BEACON_CHAIN_DIR="./prysm/beacon-chain"
export PRYSM_VALIDATOR_DIR="./prysm/validator"

# Start the Prysm beacon chain
echo "Starting Prysm beacon chain..."
$PRYSM_BEACON_CHAIN_DIR/prysm-beacon-chain --config-file=$PRYSM_BEACON_CHAIN_DIR/config.yaml &

# Start the Prysm validator
echo "Starting Prysm validator..."
$PRYSM_VALIDATOR_DIR/prysm-validator --config-file=$PRYSM_VALIDATOR_DIR/config.yaml &

# Wait for processes to finish
wait

echo "Prysm beacon chain and validator started."