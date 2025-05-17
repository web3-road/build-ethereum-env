#!/bin/bash

# Set the path to the Prysm or Lighthouse genesis generation tool
PRYSM_GENESIS_TOOL="path/to/prysm/genesis"  # Update this path as necessary
# Alternatively, for Lighthouse, you might use:
# LIGHTHOUSE_GENESIS_TOOL="path/to/lighthouse/genesis"

# Set the path to the deposit contract JSON file
DEPOSIT_CONTRACT_JSON="../beacon/deposit_contract.json"

# Set the output path for the genesis.ssz file
OUTPUT_GENESIS_FILE="../beacon/genesis.ssz"

# Generate the genesis.ssz file using Prysm
$PRYSM_GENESIS_TOOL \
  --deposit-contract $DEPOSIT_CONTRACT_JSON \
  --output $OUTPUT_GENESIS_FILE \
  --validators-dir ../validators/keys \
  --secrets-dir ../validators/secrets

# Uncomment the following lines to use Lighthouse instead
# $LIGHTHOUSE_GENESIS_TOOL \
#   --deposit-contract $DEPOSIT_CONTRACT_JSON \
#   --output $OUTPUT_GENESIS_FILE \
#   --validators-dir ../validators/keys \
#   --secrets-dir ../validators/secrets

echo "Genesis file generated at $OUTPUT_GENESIS_FILE"