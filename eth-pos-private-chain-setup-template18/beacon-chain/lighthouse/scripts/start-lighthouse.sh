#!/bin/bash

# Start the Lighthouse beacon chain client

# Load environment variables from .env file if it exists
if [ -f ../../.env ]; then
    export $(cat ../../.env | xargs)
fi

# Set the path to the Lighthouse binary
LIGHTHOUSE_BIN="lighthouse"

# Set the configuration file path
CONFIG_FILE="../../lighthouse/config.yaml"

# Start Lighthouse with the specified configuration
$LIGHTHOUSE_BIN bn --config $CONFIG_FILE --datadir ../../lighthouse/data --network mainnet --http --http-port 5052 --http-allow-origin "*" --log-level info --debug-level debug

# Note: Adjust the parameters as needed for your specific setup.