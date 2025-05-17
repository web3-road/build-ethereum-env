# Deposit Contract Documentation

## Overview

The Deposit Contract is a crucial component of the Ethereum 2.0 staking mechanism. It allows users to deposit Ether (ETH) and register as validators on the Ethereum 2.0 network. This README provides instructions on how to deploy and interact with the Deposit Contract.

## Prerequisites

- Ensure you have the following installed:
  - [Node.js](https://nodejs.org/) (for running scripts)
  - [Truffle](https://www.trufflesuite.com/truffle) or [Hardhat](https://hardhat.org/) (for deploying the contract)
  - [Solidity](https://soliditylang.org/) (for compiling the contract)

## Deployment Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd eth2-genesis-setup/deposit_contract
   ```

2. **Install Dependencies**
   If you are using Truffle:
   ```bash
   npm install -g truffle
   ```

   If you are using Hardhat:
   ```bash
   npm install --save-dev hardhat
   ```

3. **Compile the Contract**
   Using Truffle:
   ```bash
   truffle compile
   ```

   Using Hardhat:
   ```bash
   npx hardhat compile
   ```

4. **Deploy the Contract**
   Create a deployment script in the `scripts` directory or use the existing deployment scripts provided in the project.

   Example using Truffle:
   ```bash
   truffle migrate --network <network-name>
   ```

   Example using Hardhat:
   ```bash
   npx hardhat run scripts/deploy.js --network <network-name>
   ```

5. **Verify the Deployment**
   After deployment, ensure that the contract address is correctly recorded in the `config/genesis.json` and `config/config.yaml` files.

## Interacting with the Contract

Once deployed, you can interact with the Deposit Contract using web3.js or ethers.js. Below is an example using ethers.js:

```javascript
const { ethers } = require("ethers");

async function main() {
    const provider = new ethers.providers.JsonRpcProvider("<rpc-url>");
    const contractAddress = "<deployed-contract-address>";
    const abi = [ /* ABI of the Deposit Contract */ ];

    const contract = new ethers.Contract(contractAddress, abi, provider);

    // Example: Call a function from the contract
    const result = await contract.someFunction();
    console.log(result);
}

main();
```

## Additional Resources

- [Ethereum 2.0 Documentation](https://ethereum.org/en/eth2/)
- [Solidity Documentation](https://docs.soliditylang.org/en/v0.8.0/)
- [Truffle Documentation](https://www.trufflesuite.com/docs/truffle/overview)
- [Hardhat Documentation](https://hardhat.org/getting-started/)

## License

This project is licensed under the MIT License. See the LICENSE file for details.