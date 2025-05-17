# Ethereum PoS Private Chain Setup

This project provides a complete setup for running an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse. It includes all necessary configurations, scripts, and tools to get started with your own Ethereum 2.0 staking environment.

## Project Structure

- **prysm/**: Contains the configuration and scripts for running the Prysm beacon chain and validator.
  - **config/**: Configuration files for the Prysm beacon chain and validator.
    - `beacon-chain.yaml`: Configuration settings for the Prysm beacon chain.
    - `validator.yaml`: Configuration settings for the Prysm validator.
  - **scripts/**: Scripts to run the Prysm processes.
    - `run-prysm.sh`: Script to start the Prysm beacon chain and validator.

- **lighthouse/**: Contains the configuration and scripts for running the Lighthouse beacon node and validator.
  - **config/**: Configuration files for the Lighthouse beacon node and validator.
    - `beacon-node.yaml`: Configuration settings for the Lighthouse beacon node.
    - `validator.yaml`: Configuration settings for the Lighthouse validator.
  - **scripts/**: Scripts to run the Lighthouse processes.
    - `run-lighthouse.sh`: Script to start the Lighthouse beacon node and validator.

- **genesis/**: Contains files related to the genesis block configuration and validator keys.
  - `deposit_contract.json`: ABI and bytecode for the deposit contract used in Ethereum 2.0 staking.
  - **validator_keys/**: Directory containing validator key files.
    - `keystore-*.json`: Keystore files for validators.
    - `deposit-data-*.json`: Deposit data files for validators.
  - `genesis-config.yaml`: Configuration settings for the genesis block.
  - `generate-genesis.sh`: Script to generate the genesis block based on the provided configuration and validator keys.

- **go-ethereum/**: Contains the genesis block configuration for the Geth client.
  - `genesis.json`: Genesis block configuration including chain parameters and initial state.

- **README.md**: Documentation for the project, including setup instructions and usage guidelines.

- **docker-compose.yml**: Defines the services and configurations for running the Ethereum PoS private chain setup using Docker, including Prysm, Lighthouse, and Geth services.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.
   
   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: Ensure you have Docker and Docker Compose installed on your machine.

3. **Configure Genesis Block**: Modify the `genesis/genesis-config.yaml` and `genesis/deposit_contract.json` files as needed to set up your initial validators and their balances.

4. **Run the Setup**: Use Docker Compose to start the services.

   ```bash
   docker-compose up
   ```

5. **Start Prysm and Lighthouse**: Use the provided scripts to start the Prysm and Lighthouse processes.

   ```bash
   cd prysm/scripts
   ./run-prysm.sh
   ```

   ```bash
   cd ../../lighthouse/scripts
   ./run-lighthouse.sh
   ```

## Usage Guidelines

- Ensure that all configuration files are correctly set up before starting the services.
- Monitor the logs for any errors or issues during the startup process.
- Refer to the individual service documentation for more detailed usage instructions.

This setup provides a robust environment for testing and developing on Ethereum's PoS network. Happy staking!