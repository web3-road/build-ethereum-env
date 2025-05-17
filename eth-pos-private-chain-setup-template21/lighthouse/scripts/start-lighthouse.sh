#!/bin/bash

# Start Lighthouse beacon node and validator

# Set the configuration file path
CONFIG_FILE="../config.yaml"

# Start the Lighthouse beacon node
lighthouse bn --config $CONFIG_FILE &

# Start the Lighthouse validator
lighthouse validator --config $CONFIG_FILE --wallet-dir ../validators/keys &

# Wait for the processes to finish
wait