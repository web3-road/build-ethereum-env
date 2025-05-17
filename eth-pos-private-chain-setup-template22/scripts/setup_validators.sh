#!/bin/bash

# This script sets up validators for the Ethereum PoS private chain.

# Define the paths to the configuration files
PRYSM_VALIDATOR_CONFIG="./prysm/validator-config.yaml"
LIGHTHOUSE_VALIDATOR_CONFIG="./lighthouse/validator-config.toml"

# Function to set up Prysm validators
setup_prysm_validators() {
    echo "Setting up Prysm validators..."
    # Command to start Prysm validator
    prysm_validator_command="prysmctl validator --config $PRYSM_VALIDATOR_CONFIG"
    echo "Executing: $prysm_validator_command"
    eval $prysm_validator_command
}

# Function to set up Lighthouse validators
setup_lighthouse_validators() {
    echo "Setting up Lighthouse validators..."
    # Command to start Lighthouse validator
    lighthouse_validator_command="lighthouse validator --config $LIGHTHOUSE_VALIDATOR_CONFIG"
    echo "Executing: $lighthouse_validator_command"
    eval $lighthouse_validator_command
}

# Main execution
setup_prysm_validators
setup_lighthouse_validators

echo "Validator setup complete."