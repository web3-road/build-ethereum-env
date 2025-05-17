# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse. It includes all necessary components, scripts, and configurations to get started with your own private Ethereum network.

## Project Structure

- **prysm/**: Contains files related to the Prysm implementation.
  - **beacon-chain/**: Files for the Prysm beacon chain node.
  - **validator/**: Files for the Prysm validator client.
  - **scripts/**: Scripts for generating the genesis file.
    - **generate_genesis.sh**: Shell script to generate the genesis block for the Prysm chain.

- **lighthouse/**: Contains files related to the Lighthouse implementation.
  - **beacon-node/**: Files for the Lighthouse beacon node.
  - **validator-client/**: Files for the Lighthouse validator client.
  - **scripts/**: Scripts for setting up the genesis.
    - **genesis_setup.sh**: Shell script to set up the genesis block for the Lighthouse chain.

- **deposit_contract/**: Contains the smart contract for deposits.
  - **DepositContract.sol**: Solidity smart contract for handling deposits.
  - **deploy.js**: JavaScript file for deploying the DepositContract.

- **genesis/**: Contains the genesis configuration files.
  - **genesis.json**: JSON file containing the genesis block configuration.
  - **genesis.ssz**: SSZ-encoded genesis block file.
  - **config.yaml**: YAML configuration file for the genesis setup.

- **validator_keys/**: Contains the validator keys.
  - **keystore-0.json**: JSON file containing the keystore for the validator.
  - **deposit_data-0.json**: JSON file containing the deposit data for the validator.

- **scripts/**: Contains various setup scripts.
  - **setup_geth.sh**: Shell script for setting up Geth for the private chain.
  - **setup_prysm.sh**: Shell script for setting up the Prysm client.
  - **setup_lighthouse.sh**: Shell script for setting up the Lighthouse client.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.
   
2. **Install Dependencies**: Ensure you have all necessary dependencies installed, including Geth, Prysm, and Lighthouse.

3. **Generate Genesis Block**:
   - Navigate to the `prysm/scripts` directory and run `./generate_genesis.sh` to create the genesis block for the Prysm chain.
   - Alternatively, navigate to the `lighthouse/scripts` directory and run `./genesis_setup.sh` for the Lighthouse chain.

4. **Deploy Deposit Contract**: Use the `deposit_contract/deploy.js` script to deploy the DepositContract to your Ethereum network.

5. **Start the Network**:
   - Use the scripts in the `scripts` directory to set up Geth, Prysm, and Lighthouse.
   - Follow the instructions in each script for specific setup steps.

6. **Validator Setup**: Ensure your validator keys are correctly configured in the `validator_keys` directory.

## Usage Guidelines

- Follow the setup instructions carefully to ensure a smooth installation process.
- Refer to the individual directories for specific implementation details and configurations.
- For any issues or contributions, please refer to the project's GitHub page.

This setup provides a solid foundation for experimenting with Ethereum's PoS mechanism in a private environment. Happy coding!