# Instructions for Generating Genesis Block with Lighthouse

This directory contains the necessary information and instructions for generating a genesis block using the Lighthouse client.

## Prerequisites

Before you begin, ensure you have the following:

- Lighthouse client installed on your machine.
- Access to the deposit contract and validator keys.
- Familiarity with command-line operations.

## Steps to Generate Genesis Block

1. **Prepare Your Environment**
   - Ensure that you have the required dependencies installed for Lighthouse.
   - Clone the Lighthouse repository if you haven't already.

2. **Configure Your Deposit Contract**
   - Update the `config.yaml` file with the address of your deployed deposit contract.
   - Ensure that the validator keys are correctly referenced in your configuration.

3. **Generate the Genesis File**
   - Use the provided script `generate_genesis.sh` to create the genesis.ssz file.
   - Run the script from the terminal:
     ```bash
     ./scripts/generate_genesis.sh
     ```

4. **Verify the Genesis File**
   - After running the script, check the output for any errors.
   - Ensure that the `genesis.ssz` file is created successfully in the expected directory.

5. **Start the Lighthouse Client**
   - Use the generated `genesis.ssz` file to start your Lighthouse client.
   - Follow the Lighthouse documentation for specific commands to launch the client with your genesis file.

## Additional Resources

- [Lighthouse Documentation](https://lighthouse-book.sigmaprime.io/)
- [Ethereum 2.0 Specifications](https://github.com/ethereum/eth2.0-specs)

For any issues or questions, please refer to the Lighthouse community forums or GitHub issues page.