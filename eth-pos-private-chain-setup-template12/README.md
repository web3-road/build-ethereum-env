# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating and managing an Ethereum Proof of Stake (PoS) private chain. It includes tools and scripts for deploying validator keys, generating the genesis block, and running the Ethereum node with both Prysm and Lighthouse clients.

## Project Structure

- **prysm-tools/**: Contains tools related to the Prysm validator client.
  - **deposit-cli/**: Command-line interface for depositing validator keys into the Ethereum 2.0 deposit contract.
  - **prysm.sh**: Script to start the Prysm validator client.

- **lighthouse-tools/**: Contains tools related to the Lighthouse client.
  - **lighthouse**: The Lighthouse client binary for running a validator or beacon node.
  - **scripts/**: Scripts for setup and maintenance of the Lighthouse client.

- **genesis/**: Contains files related to the genesis block.
  - **deposit_contract.sol**: Solidity code for the deposit contract used in Ethereum 2.0.
  - **generate_genesis.sh**: Script to generate the genesis block with initial parameters.
  - **genesis.ssz**: Serialized representation of the genesis state.

- **configs/**: Configuration files for the various clients.
  - **geth_genesis.json**: Genesis configuration for the Geth client.
  - **prysm_config.yaml**: Configuration settings for the Prysm client.
  - **lighthouse_config.toml**: Configuration settings for the Lighthouse client.

- **validator-keys/**: Contains keystore and deposit data for validators.
  - **keystore-XXX.json**: Keystore for a validator's private key.
  - **deposit_data-XXX.json**: Deposit data for the validator.

- **node/**: Contains scripts to run the Ethereum node.
  - **run.sh**: Script to start the Ethereum node with Geth.

- **scripts/**: Setup scripts for the clients.
  - **setup_geth.sh**: Script to set up the Geth client.
  - **setup_prysm.sh**: Script to set up the Prysm client.
  - **setup_lighthouse.sh**: Script to set up the Lighthouse client.

## Getting Started

1. **Clone the Repository**: 
   ```
   git clone <repository-url>
   cd eth-pos-private-chain
   ```

2. **Setup Geth**:
   Run the setup script for Geth:
   ```
   ./scripts/setup_geth.sh
   ```

3. **Setup Prysm**:
   Run the setup script for Prysm:
   ```
   ./scripts/setup_prysm.sh
   ```

4. **Setup Lighthouse**:
   Run the setup script for Lighthouse:
   ```
   ./scripts/setup_lighthouse.sh
   ```

5. **Generate Genesis Block**:
   Execute the script to generate the genesis block:
   ```
   cd genesis
   ./generate_genesis.sh
   ```

6. **Run the Node**:
   Start the Ethereum node using Geth:
   ```
   cd node
   ./run.sh
   ```

## Additional Information

- Ensure that you have all the necessary dependencies installed for each client.
- Refer to the individual client documentation for more detailed configuration options and usage instructions.
- This setup is intended for development and testing purposes. Use caution when deploying in a production environment.