#!/bin/bash

# This script starts the Prysm validator client and manages the connection to the Ethereum network.

# Set the path to the Prysm binary
PRYSM_BINARY="./lighthouse-tools/lighthouse"

# Set the configuration file for Prysm
CONFIG_FILE="../configs/prysm_config.yaml"

# Set the validator keys directory
VALIDATOR_KEYS_DIR="../validator-keys"

# Start the Prysm validator client
$PRYSM_BINARY validator --config $CONFIG_FILE --keys-dir $VALIDATOR_KEYS_DIR "$@"