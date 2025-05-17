#!/bin/bash

# This script is used to start the Prysm client with the specified configuration.

# Set the path to the Prysm beacon node and validator
BEACON_NODE="./beacon-chain"
VALIDATOR="./validator"

# Set the configuration file path
CONFIG_FILE="./config/config.yaml"

# Start the Prysm beacon node
$BEACON_NODE --config-file=$CONFIG_FILE &

# Start the Prysm validator
$VALIDATOR --config-file=$CONFIG_FILE &

# Wait for both processes to finish
wait