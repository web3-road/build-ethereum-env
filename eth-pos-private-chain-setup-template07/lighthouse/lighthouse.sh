#!/bin/bash

# This script is used to start the Lighthouse client for the Ethereum 2.0 network.

# Set the path to the Lighthouse configuration file
CONFIG_FILE="./lighthouse/config.yaml"

# Check if the configuration file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file not found: $CONFIG_FILE"
    exit 1
fi

# Start the Lighthouse client with the specified configuration
lighthouse --config $CONFIG_FILE beacon_node

# Note: Additional commands can be added here to manage the Lighthouse client as needed.