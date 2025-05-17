#!/bin/bash

# This script is used to start the Prysm beacon node.

# Load environment variables from .env file if it exists
if [ -f ../.env ]; then
    export $(cat ../.env | xargs)
fi

# Set default values for variables if not set
PRYSM_BEACON_NODE=${PRYSM_BEACON_NODE:-"localhost:4000"}
PRYSM_HTTP_PORT=${PRYSM_HTTP_PORT:-"3500"}
PRYSM_GRPC_PORT=${PRYSM_GRPC_PORT:-"50051"}
PRYSM_DATA_DIR=${PRYSM_DATA_DIR:-"./data"}

# Create data directory if it doesn't exist
mkdir -p $PRYSM_DATA_DIR

# Start the Prysm beacon node
prysm-beacon-chain \
    --beacon-rpc-provider=$PRYSM_BEACON_NODE \
    --http-web3provider=$PRYSM_BEACON_NODE \
    --http-port=$PRYSM_HTTP_PORT \
    --grpc-port=$PRYSM_GRPC_PORT \
    --data-dir=$PRYSM_DATA_DIR \
    --log-file=$PRYSM_DATA_DIR/prysm.log \
    --log-level=info \
    --accept-terms-of-use \
    --p2p-host-ip=0.0.0.0 \
    --p2p-port=9000 \
    --p2p-max-peers=50 \
    --p2p-bootnodes=<bootnode-urls> \
    --chain-config-file=config.yaml