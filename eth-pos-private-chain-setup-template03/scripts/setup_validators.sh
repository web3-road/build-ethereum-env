#!/bin/bash

# This script sets up validators for the Ethereum PoS network.
# It generates keys and configures the validator clients.

# Define the paths for the Prysm and Lighthouse validator directories
PRYSM_VALIDATOR_DIR="./prysm/validator"
LIGHTHOUSE_VALIDATOR_DIR="./lighthouse/lighthouse"

# Create directories for validators if they do not exist
mkdir -p $PRYSM_VALIDATOR_DIR
mkdir -p $LIGHTHOUSE_VALIDATOR_DIR

# Generate keys for Prysm validators
echo "Generating Prysm validator keys..."
prysm_validator --generate-keys --output-dir $PRYSM_VALIDATOR_DIR

# Generate keys for Lighthouse validators
echo "Generating Lighthouse validator keys..."
lighthouse validator new --directory $LIGHTHOUSE_VALIDATOR_DIR

# Copy the configuration files for both validators
echo "Copying configuration files..."
cp ./config/prysm-config.yaml $PRYSM_VALIDATOR_DIR/
cp ./config/lighthouse-config.yaml $LIGHTHOUSE_VALIDATOR_DIR/

# Output completion message
echo "Validator setup completed. Please check the respective directories for keys and configuration files."