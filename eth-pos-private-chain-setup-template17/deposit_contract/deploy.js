const Web3 = require('web3');
const fs = require('fs');
const path = require('path');

// Connect to the Ethereum network
const web3 = new Web3('http://127.0.0.1:8545'); // Update with your Ethereum node URL

// Read the contract ABI and bytecode
const contractPath = path.resolve(__dirname, 'DepositContract.sol');
const source = fs.readFileSync(contractPath, 'utf8');

// Compile the contract
const compiledContract = web3.eth.compile.solidity(source);
const contractABI = compiledContract['<stdin>:DepositContract'].info.abiDefinition;
const contractBytecode = compiledContract['<stdin>:DepositContract'].code;

// Deploy the contract
async function deploy() {
    const accounts = await web3.eth.getAccounts();
    const result = await new web3.eth.Contract(contractABI)
        .deploy({ data: contractBytecode })
        .send({ from: accounts[0], gas: '1000000' });

    console.log('Contract deployed to:', result.options.address);
}

deploy().catch(console.error);