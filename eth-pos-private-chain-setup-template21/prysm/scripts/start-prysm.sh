#!/bin/bash

# This script starts the Prysm beacon node and validator.

# Set the configuration file path
CONFIG_FILE="../config.yaml"

# Start the Prysm beacon node
prysm-beacon-chain --config-file=$CONFIG_FILE &

# Start the Prysm validator
prysm-validator --config-file=$CONFIG_FILE --wallet-dir=../validators/wallet &

# Wait for the processes to finish
wait