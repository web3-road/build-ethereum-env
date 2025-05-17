# Generate Genesis Block for Ethereum PoS Private Chain

This document provides instructions on how to generate the genesis block for your Ethereum Proof of Stake (PoS) private chain setup using the Prysm and Lighthouse clients.

## Prerequisites

1. **Install Required Tools**: Ensure that you have the following tools installed:
   - Prysm
   - Lighthouse
   - Geth

2. **Clone the Repository**: Clone the `eth-pos-private-chain-setup` repository to your local machine.

   ```bash
   git clone <repository-url>
   cd eth-pos-private-chain-setup
   ```

3. **Set Up Configuration**: Modify the configuration files located in the `config` directory to suit your network requirements.

## Steps to Generate the Genesis Block

1. **Compile the Deposit Contract**:
   - Navigate to the `genesis` directory and compile the `deposit_contract.sol` file using a Solidity compiler (e.g., `solc`).

   ```bash
   cd genesis
   solc --bin --abi deposit_contract.sol -o output/
   ```

2. **Generate Deposit Data**:
   - Use the deposit CLI tool from the Prysm directory to generate the deposit data required for validators.

   ```bash
   cd ../prysm/deposit-cli
   go run main.go <your-parameters>
   ```

3. **Create the Genesis File**:
   - Use the `generate_genesis.sh` script located in the `scripts` directory to create the genesis block.

   ```bash
   cd ../../scripts
   ./generate_genesis.sh
   ```

4. **Verify the Genesis Block**:
   - Check the generated `genesis.ssz` file in the `genesis` directory to ensure it has been created successfully.

5. **Start the Network**:
   - Use the `start_network.sh` script to launch your Ethereum PoS private chain.

   ```bash
   ./start_network.sh
   ```

## Additional Notes

- Ensure that all paths in the scripts are correctly set according to your directory structure.
- Review the README files in the `prysm`, `lighthouse`, and `geth` directories for more detailed instructions on setting up each component.
- If you encounter any issues, refer to the documentation provided in the respective directories or seek help from the community.

By following these steps, you will successfully generate the genesis block for your Ethereum PoS private chain setup.