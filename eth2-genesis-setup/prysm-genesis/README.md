# Prysm Genesis Setup

This directory contains instructions and information specific to generating the genesis block using the Prysm client for Ethereum 2.0.

## Overview

The Prysm client is one of the implementations for Ethereum 2.0, and it requires a properly configured genesis block to start the network. This setup guide will help you generate the necessary files and configurations to create a genesis block that includes the deposit contract and validator keys.

## Steps to Generate Genesis Block

1. **Prepare Deposit Contract**: Ensure that the Deposit Contract is deployed and you have the contract address ready. You can find the contract in the `deposit_contract` directory.

2. **Validator Keys**: Make sure you have your validator keys stored in the `validator_keys` directory. These keys are essential for your validator to participate in the network.

3. **Configuration**: Update the `config/config.yaml` file with the correct deposit contract address and any other necessary parameters.

4. **Run Genesis Generation Script**: Use the provided script in the `scripts` directory to generate the `genesis.ssz` file. Execute the following command:
   ```bash
   ./generate_genesis.sh
   ```

5. **Verify Genesis File**: After running the script, verify that the `genesis.ssz` file has been created successfully in the appropriate directory.

## Additional Resources

- Refer to the [Deposit Contract README](../deposit_contract/README.md) for details on deploying and interacting with the Deposit Contract.
- Check the [Validator Keys](../validator_keys/) directory for information on managing your validator keys.
- For more information on the Prysm client, visit the [Prysm documentation](https://docs.prylabs.network/).

## Troubleshooting

If you encounter any issues during the genesis block generation process, please check the following:

- Ensure that all paths in your configuration files are correct.
- Verify that the Deposit Contract is deployed and accessible.
- Check for any error messages in the terminal when running the generation script.

By following these instructions, you should be able to successfully generate a genesis block for your Ethereum 2.0 network using the Prysm client.