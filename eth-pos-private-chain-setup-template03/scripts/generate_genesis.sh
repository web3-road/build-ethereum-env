#!/bin/bash

# This script generates the genesis block configuration and related files for the Ethereum PoS private chain setup.

# Set variables for paths
GENESIS_DIR="../genesis"
DEPOSIT_CONTRACT="../genesis/deposit_contract.sol"
GENESIS_JSON="$GENESIS_DIR/genesis.json"
GENESIS_SSZ="$GENESIS_DIR/genesis.ssz"

# Check if the deposit contract exists
if [ ! -f "$DEPOSIT_CONTRACT" ]; then
    echo "Deposit contract not found at $DEPOSIT_CONTRACT"
    exit 1
fi

# Generate the genesis.json file
echo "Generating genesis.json..."
cat <<EOL > "$GENESIS_JSON"
{
    "config": {
        "chainId": 1,
        "homesteadBlock": 0,
        "eip155Block": 0,
        "eip158Block": 0,
        "byzantiumBlock": 0,
        "constantinopleBlock": 0,
        "petersburgBlock": 0,
        "istanbulBlock": 0,
        "muirGlacierBlock": 0,
        "berlinBlock": 0,
        "londonBlock": 0,
        "arrowGlacierBlock": 0,
        "mergeForkBlock": 0,
        "terminalTotalDifficulty": 1
    },
    "nonce": "0x0",
    "timestamp": "0x0",
    "extraData": "0x0",
    "gasLimit": "0x1c9c380",
    "difficulty": "0x1",
    "mixHash": "0x0",
    "coinbase": "0x0000000000000000000000000000000000000000",
    "alloc": {}
}
EOL

echo "genesis.json generated at $GENESIS_JSON"

# Generate the genesis.ssz file using the appropriate tool (e.g., lighthouse or prysm)
echo "Generating genesis.ssz..."
# Assuming you have a tool to convert JSON to SSZ format
# Replace 'json-to-ssz-tool' with the actual command to generate SSZ
json-to-ssz-tool "$GENESIS_JSON" "$GENESIS_SSZ"

echo "genesis.ssz generated at $GENESIS_SSZ"

echo "Genesis block generation completed."