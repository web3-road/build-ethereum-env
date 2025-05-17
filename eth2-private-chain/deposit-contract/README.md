# Deposit Contract Deployment Instructions

This README provides documentation on how to deploy the deposit contract for the Ethereum 2.0 network. The deposit contract is essential for handling deposits from validators who wish to participate in the consensus process.

## Prerequisites

Before deploying the deposit contract, ensure you have the following:

- **Node.js**: Make sure you have Node.js installed on your machine. You can download it from [nodejs.org](https://nodejs.org/).
- **Hardhat**: Install Hardhat globally by running the following command:
  ```
  npm install -g hardhat
  ```
- **Solidity Compiler**: Ensure that the Solidity compiler version specified in `DepositContract.sol` is compatible with your Hardhat setup.

## Deployment Instructions

1. **Clone the Repository**: If you haven't already, clone the repository containing the deposit contract.
   ```
   git clone <repository-url>
   cd eth2-private-chain/deposit-contract
   ```

2. **Install Dependencies**: Navigate to the deposit contract directory and install the necessary dependencies.
   ```
   npm install
   ```

3. **Compile the Contract**: Compile the Solidity contract to ensure there are no errors.
   ```
   npx hardhat compile
   ```

4. **Deploy the Contract**: Use the provided deployment script to deploy the contract to the Ethereum network.
   ```
   npx hardhat run scripts/deploy_contract.js --network <network-name>
   ```
   Replace `<network-name>` with the desired Ethereum network (e.g., `rinkeby`, `mainnet`, or a local test network).

5. **Record the Contract Address**: After successful deployment, make sure to note the contract address. This address will be required for configuring the beacon chain and Geth.

## Post-Deployment

After deploying the deposit contract, update the following files with the contract address:

- `beacon-chain/config.yaml`: Update the `DEPOSIT_CONTRACT_ADDRESS` field with the deployed contract address.
- `geth/genesis.json`: Ensure the genesis configuration includes the correct deposit contract address.

## Troubleshooting

- If you encounter issues during deployment, check the console output for error messages.
- Ensure that your Ethereum wallet is funded with enough Ether to cover gas fees for the deployment transaction.

For further assistance, refer to the official Hardhat documentation or the Ethereum community forums.