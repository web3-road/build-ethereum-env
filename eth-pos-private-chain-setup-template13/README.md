# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain. It includes components for both the Prysm and Lighthouse clients, as well as scripts for generating the genesis block and deploying the deposit contract.

## Project Structure

- **prysm/**: Contains components related to the Prysm client.
  - **deposit-cli/**: Command-line interface for handling deposits.
  - **beacon-chain/**: Implementation for the beacon chain.
  - **validator/**: Validator client for participating in the network.
  - **README.md**: Documentation for using the Prysm components.

- **lighthouse/**: Contains components related to the Lighthouse client.
  - **lighthouse/**: Main Lighthouse client implementation.
  - **genesis/**: Files related to genesis block generation.
  - **README.md**: Documentation for using the Lighthouse components.

- **genesis/**: Contains files related to the genesis block and deposit contract.
  - **deposit_contract.sol**: Solidity code for the deposit contract.
  - **deposit_data.json**: Deposit data in JSON format.
  - **genesis.ssz**: Serialized genesis state in SSZ format.
  - **config.yaml**: Configuration settings for the genesis setup.
  - **README.md**: Documentation for the genesis setup.

- **geth/**: Contains files related to the Geth client.
  - **genesis.json**: Genesis block configuration for Geth.
  - **start-geth.sh**: Shell script to start the Geth client.
  - **README.md**: Documentation for using Geth.

- **scripts/**: Utility scripts for the setup process.
  - **generate_genesis.sh**: Shell script to generate the genesis block.
  - **deploy_deposit_contract.sh**: Shell script to deploy the deposit contract.
  - **README.md**: Documentation for the scripts.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Install Dependencies**: Follow the instructions in the README files located in each component directory to install necessary dependencies.
3. **Generate Genesis Block**: Use the `generate_genesis.sh` script to create the genesis block.
4. **Deploy Deposit Contract**: Run the `deploy_deposit_contract.sh` script to deploy the deposit contract to your private chain.
5. **Start the Clients**: Follow the instructions in the Geth and Prysm directories to start the respective clients.

## Additional Information

Refer to the individual README files in each directory for more detailed instructions and information on specific components. This setup is designed for development and testing purposes and may require further configuration for production use.