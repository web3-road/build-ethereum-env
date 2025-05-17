#!/bin/bash

# This script is used to start the Prysm beacon chain and validator processes.

# Set the configuration files
BEACON_CHAIN_CONFIG="prysm/config/beacon-chain.yaml"
VALIDATOR_CONFIG="prysm/config/validator.yaml"

# Start the Prysm beacon chain
echo "Starting Prysm beacon chain..."
prysm-beacon-chain --config=$BEACON_CHAIN_CONFIG &

# Start the Prysm validator
echo "Starting Prysm validator..."
prysm-validator --config=$VALIDATOR_CONFIG

# Wait for processes to finish
wait