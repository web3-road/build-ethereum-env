#!/bin/bash

# This script generates the genesis block and related configurations for the Ethereum PoS private chain.

# Set variables for paths
BEACON_CHAIN_DIR="../beacon-chain"
EXECUTION_LAYER_DIR="../execution-layer/geth"
GENESIS_FILE="$BEACON_CHAIN_DIR/genesis/genesis.ssz"
DEPOSIT_CONTRACT_FILE="$BEACON_CHAIN_DIR/genesis/deposit_contract.yaml"
PRYSM_CONFIG_FILE="$BEACON_CHAIN_DIR/prysm/config.yaml"
LIGHTHOUSE_CONFIG_FILE="$BEACON_CHAIN_DIR/lighthouse/beacon_node.env"

# Generate the deposit contract configuration
echo "Generating deposit contract configuration..."
cat <<EOL > $DEPOSIT_CONTRACT_FILE
# Deposit contract configuration for Ethereum 2.0
deposit_contract:
  address: "0x0000000000000000000000000000000000000000" # Replace with actual address
  chain_id: 1
EOL

# Generate the genesis block
echo "Generating genesis block..."
cat <<EOL > $GENESIS_FILE
# Genesis block configuration for the beacon chain
genesis:
  genesis_time: "$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  chain_id: 1
  deposit_contract_address: "0x0000000000000000000000000000000000000000" # Replace with actual address
EOL

# Output completion message
echo "Genesis block and deposit contract configuration generated successfully."