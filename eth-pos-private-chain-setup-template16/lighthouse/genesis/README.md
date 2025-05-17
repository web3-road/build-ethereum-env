# Lighthouse Genesis Generation

This directory contains information and instructions related to the generation of the genesis block for the Ethereum Proof of Stake (PoS) private chain using the Lighthouse client.

## Overview

The genesis block is the first block in the blockchain and serves as the foundation for the entire network. It contains important configuration data and the initial state of the blockchain.

## Generating the Genesis Block

To generate the genesis block, follow these steps:

1. **Prepare the Deposit Contract**: Ensure that the deposit contract is deployed on the Ethereum network. You can find the Solidity code for the deposit contract in the `genesis` directory.

2. **Use the Lighthouse Tools**: Utilize the Lighthouse tools to generate the genesis state. Refer to the `lighthouse` directory for specific commands and configurations.

3. **Configuration Files**: Make sure to configure the necessary settings in the `lighthouse-config.yaml` file located in the `config` directory.

4. **Run the Genesis Generation Script**: Execute the script provided in the `scripts` directory to generate the genesis block. The script will create a `genesis.ssz` file that contains the serialized genesis state.

## Additional Resources

- For more detailed instructions on using the Lighthouse client, refer to the `lighthouse/README.md` file.
- Check the `generate_genesis.md` file in the `genesis` directory for specific commands and examples related to genesis generation.

By following these guidelines, you will be able to successfully generate the genesis block for your Ethereum PoS private chain using the Lighthouse client.