# Ethereum PoS Private Chain Setup

This project provides a complete setup for an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse as the beacon chain clients. It includes all necessary configurations, scripts, and files to get started with your own private Ethereum PoS network.

## Project Structure

The project is organized as follows:

```
ethereum-pos-private-chain
├── beacon-chain
│   ├── prysm
│   │   └── config.yaml                # Configuration for Prysm beacon chain client
│   ├── lighthouse
│   │   └── beacon_node.env            # Environment variables for Lighthouse beacon node
│   └── genesis
│       ├── deposit_contract.yaml       # Deposit contract configuration
│       └── genesis.ssz                 # Serialized state of the genesis block
├── execution-layer
│   └── geth
│       ├── genesis.json                # Genesis block configuration for Geth
│       └── config.toml                 # Configuration settings for Geth client
├── validators
│   ├── prysm-validators
│   │   └── keystore
│   │       └── validator-keys.json     # Validator keys for Prysm validators
│   └── lighthouse-validators
│       └── secrets
│           └── validator-keys.yaml     # Validator keys for Lighthouse validators
├── scripts
│   ├── generate-genesis.sh             # Script to generate the genesis block
│   └── run-network.sh                   # Script to start the Ethereum PoS network
└── README.md                            # Project documentation
```

## Setup Instructions

1. **Clone the Repository**
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   cd ethereum-pos-private-chain
   ```

2. **Configure Beacon Chain Clients**
   - Update the `config.yaml` file in the `beacon-chain/prysm` directory with your desired settings.
   - Set the environment variables in the `beacon-chain/lighthouse/beacon_node.env` file as needed.

3. **Genesis Configuration**
   - Modify the `deposit_contract.yaml` in the `beacon-chain/genesis` directory to configure the deposit contract.
   - Ensure the `genesis.ssz` file is correctly set up to reflect the initial state of your beacon chain.

4. **Execution Layer Setup**
   - Edit the `genesis.json` file in the `execution-layer/geth` directory to define the initial state of the Ethereum blockchain.
   - Update the `config.toml` file in the same directory to configure the Geth client.

5. **Validator Keys**
   - Place your validator keys in the appropriate directories for both Prysm and Lighthouse validators.

6. **Run Scripts**
   - Use the `generate-genesis.sh` script to create the genesis block and related configurations.
   - Start the network using the `run-network.sh` script.

## Usage Guidelines

- Ensure all configurations are correctly set before running the scripts.
- Monitor the logs for both Prysm and Lighthouse to troubleshoot any issues during startup.
- Refer to the official documentation for Prysm and Lighthouse for advanced configurations and optimizations.

## Additional Information

This setup is intended for development and testing purposes. For production deployments, further security and performance considerations should be taken into account.