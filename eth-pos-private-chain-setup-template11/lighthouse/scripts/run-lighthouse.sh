#!/bin/bash

# This script is used to start the Lighthouse beacon node and validator processes.

# Set the path to the configuration files
BEACON_NODE_CONFIG="./config/beacon-node.yaml"
VALIDATOR_CONFIG="./config/validator.yaml"

# Start the Lighthouse beacon node
lighthouse bn --config $BEACON_NODE_CONFIG &

# Start the Lighthouse validator
lighthouse vc --config $VALIDATOR_CONFIG &

# Wait for processes to finish
wait