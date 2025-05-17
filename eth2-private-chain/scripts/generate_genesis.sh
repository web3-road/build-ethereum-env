#!/bin/bash

# Set variables for the deposit contract address and validator keys
DEPOSIT_CONTRACT_ADDRESS="YOUR_DEPOSIT_CONTRACT_ADDRESS"
VALIDATOR_KEYS_DIR="../validator-keys"

# Generate the genesis.ssz file using Prysm's genesis tool
prysm-genesis \
  --deposit-contract-address $DEPOSIT_CONTRACT_ADDRESS \
  --validator-keys $VALIDATOR_KEYS_DIR/keystore-0.json \
  --deposit-data $VALIDATOR_KEYS_DIR/deposit_data-0.json \
  --output ../beacon-chain/genesis.ssz

echo "Genesis file generated at ../beacon-chain/genesis.ssz"