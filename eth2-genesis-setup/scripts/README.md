# Ethereum 2.0 Genesis Setup Scripts

This directory contains scripts that are essential for generating the genesis block for an Ethereum 2.0 network. Below are the details on how to use the scripts provided in this directory.

## Scripts Overview

### `generate_genesis.sh`

- **Description**: This script is used to generate the `genesis.ssz` file, which is crucial for initializing the Ethereum 2.0 blockchain.
- **Usage**:
  1. Ensure that you have the necessary validator keys and deposit contract address configured in the `config.yaml` file.
  2. Run the script using the command:
     ```
     bash generate_genesis.sh
     ```
  3. The script will output the `genesis.ssz` file in the current directory.

## Prerequisites

- Make sure you have the required dependencies installed, including any necessary Ethereum 2.0 client tools.
- Ensure that your environment is set up correctly with access to the deposit contract and validator keys.

## Additional Resources

For more information on the deposit contract and validator keys, please refer to the documentation in the `deposit_contract` and `validator_keys` directories.

For specific instructions on generating the genesis block using the Prysm or Lighthouse clients, please check the respective README files in the `prysm-genesis` and `lighthouse-genesis` directories.