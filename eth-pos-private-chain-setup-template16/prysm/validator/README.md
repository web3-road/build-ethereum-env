# Validator Component of Prysm

This directory contains information and instructions related to the validator component of the Prysm client for Ethereum's Proof of Stake (PoS) network.

## Overview

The validator is a crucial part of the Ethereum PoS network, responsible for proposing and attesting to new blocks. Validators are required to stake a minimum amount of Ether (ETH) to participate in the consensus process.

## Setup Instructions

1. **Install Prysm**: Ensure you have the Prysm client installed. You can find installation instructions in the [Prysm documentation](https://docs.prylabs.network/docs/install-prysm).

2. **Generate Validator Keys**: Use the deposit CLI tool located in the `deposit-cli` directory to generate your validator keys. Follow the instructions in the `deposit-cli/README.md` for detailed steps.

3. **Deposit ETH**: After generating your keys, you need to deposit the required amount of ETH to activate your validator. This can be done using the deposit contract specified in the `genesis` directory.

4. **Start the Validator**: Once your keys are generated and your deposit is confirmed, you can start your validator using the Prysm client. Use the following command:
   ```
   ./prysm.sh validator --wallet-dir=<your_wallet_directory> --wallet-password-file=<your_password_file>
   ```

5. **Monitor Your Validator**: After starting your validator, monitor its performance and status using the Prysm web interface or command line tools.

## Important Notes

- Ensure that your validator is always online to maximize rewards and avoid penalties.
- Regularly check for updates to the Prysm client and apply them as necessary.

For more detailed information, refer to the official [Prysm documentation](https://docs.prylabs.network/docs/validator).