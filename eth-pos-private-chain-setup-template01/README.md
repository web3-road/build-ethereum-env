# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse tools. It includes all necessary components for managing the beacon chain, validators, and genesis configuration.

## Project Structure

```
eth-pos-private-chain-setup
├── prysm
│   ├── deposit-cli          # Command-line interface for handling deposits
│   ├── beacon-chain         # Components for running the beacon chain
│   ├── validator            # Validator node components
│   └── scripts
│       └── generate_genesis.sh  # Script to generate the genesis file for Prysm
├── lighthouse
│   ├── lighthouse           # Lighthouse binary and related files
│   └── scripts
│       └── generate_genesis.sh  # Script to generate the genesis file for Lighthouse
├── genesis
│   ├── deposit_contract.sol  # Solidity code for the deposit contract
│   ├── deposit_data.json     # Deposit data in JSON format
│   ├── genesis.ssz           # Serialized genesis state for the Ethereum PoS chain
│   └── config.yaml           # Configuration settings for the genesis setup
├── geth
│   ├── genesis.json          # Genesis block configuration for the Geth client
│   └── scripts
│       └── init_geth.sh      # Script to initialize the Geth client with the specified genesis configuration
├── validators
│   ├── keys                  # Keys for the validators
│   └── mnemonics.txt         # Mnemonic phrases for generating validator keys
└── README.md                 # Documentation and instructions for the setup
```

## Getting Started

1. **Clone the Repository**
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   ```

2. **Install Dependencies**
   Ensure you have all necessary dependencies installed for Prysm, Lighthouse, and Geth.

3. **Generate Genesis File**
   Use the provided scripts in the `prysm/scripts` or `lighthouse/scripts` directories to generate the genesis file:
   ```
   cd prysm/scripts
   ./generate_genesis.sh
   ```
   or
   ```
   cd lighthouse/scripts
   ./generate_genesis.sh
   ```

4. **Initialize Geth**
   Run the initialization script for Geth to set up the client with the generated genesis configuration:
   ```
   cd geth/scripts
   ./init_geth.sh
   ```

5. **Start the Beacon Chain and Validators**
   Follow the instructions in the respective directories to start the beacon chain and validator nodes.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.