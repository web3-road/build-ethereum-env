# Ethereum PoS Private Chain Setup

This project provides a comprehensive setup for creating an Ethereum Proof of Stake (PoS) private chain using Prysm and Lighthouse. It includes all necessary components, scripts, and configurations to get started with your own private Ethereum network.

## Project Structure

- **prysm/**: Contains components related to the Prysm client.
  - **beacon-chain/**: Binaries and configurations for the Prysm beacon chain.
  - **validator/**: Binaries and configurations for the Prysm validator.
  - **scripts/**: Scripts for generating the genesis file.
    - **generate_genesis.sh**: Automates the genesis file generation for the Prysm beacon chain.

- **lighthouse/**: Contains components related to the Lighthouse client.
  - **lighthouse/**: Binaries and configurations for Lighthouse.
  - **scripts/**: Scripts for generating the genesis file.
    - **genesis_gen.sh**: Automates the genesis file generation for Lighthouse.

- **deposit-contract/**: Contains the smart contract for handling deposits.
  - **DepositContract.sol**: Solidity smart contract for deposits.
  - **deploy.js**: JavaScript deployment script for the DepositContract.

- **genesis/**: Contains genesis configuration files.
  - **genesis.json**: JSON file defining the genesis block configuration.
  - **genesis.ssz**: SSZ file representing the genesis block in a serialized format.

- **config/**: Contains configuration files.
  - **config.yaml**: YAML configuration file for the Ethereum PoS setup.
  - **mnemonic.txt**: Text file containing the mnemonic phrase for key generation.

- **validators/**: Contains validator keys.
  - **keys/**: Subdirectory with keystore files for validators.
    - **keystore-1.json**: Keystore for the first validator.
    - **keystore-2.json**: Keystore for the second validator.

- **scripts/**: Contains various setup and startup scripts.
  - **setup.sh**: Script to set up the environment for the Ethereum PoS private chain.
  - **start.sh**: Script to start the Ethereum PoS private chain.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.
   
   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

2. **Install Dependencies**: Ensure you have all necessary dependencies installed for Prysm and Lighthouse.

3. **Generate Genesis File**: Use the provided scripts to generate the genesis file for either Prysm or Lighthouse.

   For Prysm:
   ```bash
   cd prysm/scripts
   ./generate_genesis.sh
   ```

   For Lighthouse:
   ```bash
   cd lighthouse/scripts
   ./genesis_gen.sh
   ```

4. **Deploy Deposit Contract**: Use the deployment script to deploy the DepositContract.

   ```bash
   cd deposit-contract
   node deploy.js
   ```

5. **Start the Network**: Run the setup and start scripts to initialize and run your private chain.

   ```bash
   cd scripts
   ./setup.sh
   ./start.sh
   ```

## Usage Guidelines

- Follow the setup instructions carefully to ensure a smooth installation and configuration process.
- Refer to the individual component directories for specific documentation and usage details.
- Ensure that your environment meets all prerequisites for running Prysm and Lighthouse.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.