#!/bin/bash

# This script is used to start the Lighthouse beacon node.

# Load environment variables from .env file if it exists
if [ -f ../../.env ]; then
    export $(cat ../../.env | xargs)
fi

# Set default values for Lighthouse parameters
LIGHTHOUSE_CONFIG="../../lighthouse/config.yaml"
LIGHTHOUSE_DATA_DIR="../../lighthouse/data"

# Check if the Lighthouse binary is available
if ! command -v lighthouse &> /dev/null; then
    echo "Lighthouse binary not found. Please install Lighthouse."
    exit 1
fi

# Start the Lighthouse beacon node
lighthouse bn --config $LIGHTHOUSE_CONFIG --data-dir $LIGHTHOUSE_DATA_DIR --http --http-port 5052 --http-allow-origin "*" --log-level info

# Note: Adjust the parameters as needed for your specific setup.