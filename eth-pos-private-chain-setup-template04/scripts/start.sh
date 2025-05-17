#!/bin/bash

# Start the Ethereum PoS private chain setup

# Set environment variables
export ETH_POS_PRIVATE_CHAIN_DIR=$(pwd)
export PRYSM_BEACON_CHAIN_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/prysm/beacon-chain"
export PRYSM_VALIDATOR_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/prysm/validator"
export LIGHTHOUSE_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/lighthouse/lighthouse"
export DEPOSIT_CONTRACT_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/deposit-contract"
export GENESIS_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/genesis"
export CONFIG_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/config"
export VALIDATORS_DIR="$ETH_POS_PRIVATE_CHAIN_DIR/validators"

# Generate genesis file using Prysm
bash "$PRYSM_BEACON_CHAIN_DIR/scripts/generate_genesis.sh"

# Start Prysm beacon chain
echo "Starting Prysm beacon chain..."
$PRYSM_BEACON_CHAIN_DIR/prysm_beacon_chain --config="$CONFIG_DIR/config.yaml" &

# Start Prysm validator
echo "Starting Prysm validator..."
$PRYSM_VALIDATOR_DIR/prysm_validator --config="$CONFIG_DIR/config.yaml" &

# Start Lighthouse
echo "Starting Lighthouse..."
$LIGHTHOUSE_DIR/lighthouse bn --network=custom --config="$CONFIG_DIR/config.yaml" &

# Wait for processes to finish
wait

echo "Ethereum PoS private chain setup started successfully."