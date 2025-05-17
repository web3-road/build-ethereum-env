# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating and managing an Ethereum Proof of Stake (PoS) private chain. It includes the necessary components and tools to run a private Ethereum network using Prysm and Lighthouse clients, as well as Geth for Ethereum 1.0 compatibility.

## Project Structure

```
eth-pos-private-chain-setup
├── README.md
├── genesis
│   ├── deposit_contract.json
│   ├── genesis.ssz
│   ├── eth1_genesis.json
│   └── generate_genesis.sh
├── prysm
│   ├── docker-compose.yml
│   ├── beacon-chain-config.yaml
│   ├── validator-config.yaml
│   └── scripts
│       └── prysm-init.sh
├── lighthouse
│   ├── docker-compose.yml
│   ├── beacon-node-config.toml
│   ├── validator-config.toml
│   └── scripts
│       └── lighthouse-init.sh
├── geth
│   ├── docker-compose.yml
│   ├── geth-genesis.json
│   └── scripts
│       └── geth-init.sh
└── validators
    └── deposit_data-keys.json
```

## Components

### Genesis
- **deposit_contract.json**: Contains the ABI and address of the deposit contract used for validator deposits.
- **genesis.ssz**: The serialized genesis state for the Ethereum PoS chain.
- **eth1_genesis.json**: Genesis configuration for the Ethereum 1.0 chain.
- **generate_genesis.sh**: Script to generate the genesis block configuration based on provided parameters.

### Prysm
- **docker-compose.yml**: Defines services and configurations for running Prysm using Docker.
- **beacon-chain-config.yaml**: Configuration settings for the Prysm beacon chain.
- **validator-config.yaml**: Configuration settings for the Prysm validator.
- **scripts/prysm-init.sh**: Initializes the Prysm environment and sets up necessary configurations.

### Lighthouse
- **docker-compose.yml**: Defines services and configurations for running Lighthouse using Docker.
- **beacon-node-config.toml**: Configuration settings for the Lighthouse beacon node.
- **validator-config.toml**: Configuration settings for the Lighthouse validator.
- **scripts/lighthouse-init.sh**: Initializes the Lighthouse environment and sets up necessary configurations.

### Geth
- **docker-compose.yml**: Defines services and configurations for running Geth using Docker.
- **geth-genesis.json**: Genesis configuration for the Geth client.
- **scripts/geth-init.sh**: Initializes the Geth environment and sets up necessary configurations.

### Validators
- **deposit_data-keys.json**: Contains keys and deposit data for validators participating in the PoS network.

## Usage Instructions

1. **Set Up Genesis**: Use the `generate_genesis.sh` script to create the genesis block configuration. Ensure that the parameters are correctly set in the script.

2. **Run Prysm**: Navigate to the `prysm` directory and use Docker to start the Prysm services defined in `docker-compose.yml`.

3. **Run Lighthouse**: Similarly, navigate to the `lighthouse` directory and start the Lighthouse services using its `docker-compose.yml`.

4. **Run Geth**: Go to the `geth` directory and start the Geth client using the provided Docker configuration.

5. **Validator Setup**: Ensure that the validator keys and deposit data are correctly configured in the `validators` directory.

This setup allows you to create a fully functional Ethereum PoS private chain for development and testing purposes.