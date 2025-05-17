# Ethereum 2.0 Genesis Setup

This project provides the necessary tools and documentation to set up a private Ethereum 2.0 network, including the deployment of the Deposit Contract and the generation of the genesis block.

## Project Structure

- **deposit_contract/**: Contains the Solidity code for the Deposit Contract and its documentation.
  - `DepositContract.sol`: The Solidity implementation of the Deposit Contract.
  - `README.md`: Instructions on how to deploy and interact with the Deposit Contract.

- **validator_keys/**: Holds the keystore and deposit data for validators.
  - `keystore-m_12381_3600_0_0_0-12345.json`: Keystore file for a validator's private key.
  - `deposit_data-12345.json`: Deposit data necessary for validator participation.

- **config/**: Configuration files for the Prysm or Lighthouse client.
  - `config.yaml`: Configuration settings including the deposit contract address and network parameters.
  - `genesis.json`: Genesis block configuration, including the initial state of the blockchain.

- **scripts/**: Contains scripts for generating the genesis block.
  - `generate_genesis.sh`: Script to generate the genesis.ssz file using the deposit contract and validator keys.
  - `README.md`: Documentation on how to use the scripts.

- **prysm-genesis/**: Instructions specific to generating the genesis block using the Prysm client.
  - `README.md`: Documentation for Prysm-specific genesis generation.

- **lighthouse-genesis/**: Instructions specific to generating the genesis block using the Lighthouse client.
  - `README.md`: Documentation for Lighthouse-specific genesis generation.

## Setup Instructions

1. **Install Dependencies**: Ensure you have the necessary tools installed, including Solidity compiler, Prysm, or Lighthouse clients.

2. **Deploy the Deposit Contract**: Follow the instructions in `deposit_contract/README.md` to deploy the Deposit Contract on your Ethereum 2.0 network.

3. **Generate Validator Keys**: Use the provided keystore and deposit data files in the `validator_keys/` directory.

4. **Configure the Network**: Update the `config/config.yaml` and `config/genesis.json` files with the appropriate settings, including the deposit contract address.

5. **Generate Genesis Block**: Run the script in `scripts/generate_genesis.sh` to create the genesis.ssz file.

6. **Start the Network**: Follow the instructions in `prysm-genesis/README.md` or `lighthouse-genesis/README.md` to start your Ethereum 2.0 network.

## Usage Guidelines

Refer to the individual README files in each directory for detailed instructions on deploying contracts, generating keys, and configuring the network. This project aims to facilitate the setup of a private Ethereum 2.0 network for testing and development purposes.