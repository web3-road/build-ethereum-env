# Ethereum 2.0 Proof of Stake Testnet

This project sets up a private Ethereum 2.0 Proof of Stake (PoS) testnet using Geth and Prysm. It includes all necessary components to deploy a deposit contract, configure the beacon node, and manage validators.

## Project Structure

- **beacon/**: Contains files related to the Prysm beacon node.
  - **config.yaml**: Configuration settings for the beacon node, including network parameters and deposit contract address.
  - **genesis.ssz**: Serialized genesis state of the blockchain, including initial state and deposit events.
  - **deposit_contract.json**: ABI and address of the deposit contract used for staking.

- **geth/**: Contains files related to the Geth execution layer.
  - **genesis.json**: Genesis block configuration for Geth, including chain parameters and initial state.
  - **scripts/**: Contains scripts for deploying contracts and other tasks.
    - **deploy_deposit_contract.js**: Script to deploy the deposit contract to the Ethereum network.

- **validators/**: Contains directories for managing validator keys and secrets.
  - **keys/**: Validator keys used for staking.
  - **secrets/**: Secrets associated with the validator keys for signing blocks.

- **scripts/**: Contains utility scripts for the project.
  - **generate_genesis.sh**: Shell script to generate the genesis.ssz file using Prysm or Lighthouse tools.

## Setup Instructions

1. **Install Dependencies**: Ensure you have Geth and Prysm installed on your machine.
2. **Configure the Beacon Node**: Edit `beacon/config.yaml` to set the appropriate parameters for your network.
3. **Generate Genesis State**: Run `scripts/generate_genesis.sh` to create the `genesis.ssz` file.
4. **Deploy Deposit Contract**: Use the script in `geth/scripts/deploy_deposit_contract.js` to deploy the deposit contract.
5. **Start the Beacon Node**: Launch the Prysm beacon node with the generated configuration.
6. **Run Geth**: Start the Geth execution layer to process transactions and blocks.

## Usage

- Follow the setup instructions to initialize your private Ethereum 2.0 testnet.
- Monitor the beacon node and Geth logs for any issues during startup and operation.
- Use the validator keys and secrets to participate in staking and block production.

## Additional Information

For more details on each component, refer to the respective files and their documentation. This project aims to provide a comprehensive environment for testing Ethereum 2.0 features and functionalities in a controlled setting.