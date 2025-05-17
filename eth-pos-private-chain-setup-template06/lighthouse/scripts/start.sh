#!/bin/bash

# Start the Lighthouse beacon chain and validator

# Set the necessary environment variables
export NETWORK="your_network_name"  # Replace with your network name
export BEACON_NODE_URL="http://localhost:5052"  # Replace with your beacon node URL if different

# Start the Lighthouse beacon node
lighthouse bn --network $NETWORK &

# Start the Lighthouse validator
lighthouse vc --network $NETWORK --beacon-node $BEACON_NODE_URL

# Wait for the processes to finish
wait