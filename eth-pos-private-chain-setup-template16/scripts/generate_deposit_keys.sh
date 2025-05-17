#!/bin/bash

# This script generates deposit keys for validators using the Prysm deposit CLI.

# Check if the required tools are installed
if ! command -v deposit &> /dev/null
then
    echo "Prysm deposit CLI could not be found. Please install it first."
    exit 1
fi

# Set the number of keys to generate
NUM_KEYS=5

# Generate the deposit keys
echo "Generating $NUM_KEYS deposit keys..."
for ((i=1; i<=NUM_KEYS; i++))
do
    deposit generate --count 1 --output "validator_key_$i.json"
done

echo "Deposit keys generated successfully."