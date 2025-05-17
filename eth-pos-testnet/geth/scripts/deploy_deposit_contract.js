const Web3 = require('web3');
const fs = require('fs');
const path = require('path');

// Load the deposit contract ABI
const depositContractABI = JSON.parse(fs.readFileSync(path.join(__dirname, '../../beacon/deposit_contract.json'))).abi;

// Connect to the Geth node
const web3 = new Web3(new Web3.providers.HttpProvider('http://127.0.0.1:8545'));

// Deploy the deposit contract
async function deployDepositContract() {
    const accounts = await web3.eth.getAccounts();
    const deployer = accounts[0];

    const depositContract = new web3.eth.Contract(depositContractABI);

    // Estimate gas for deployment
    const gasEstimate = await depositContract.deploy({
        data: '0x' + fs.readFileSync(path.join(__dirname, '../../beacon/deposit_contract.json')).bytecode
    }).estimateGas();

    // Deploy the contract
    const contractInstance = await depositContract.deploy({
        data: '0x' + fs.readFileSync(path.join(__dirname, '../../beacon/deposit_contract.json')).bytecode
    })
    .send({
        from: deployer,
        gas: gasEstimate
    });

    console.log('Deposit contract deployed at address:', contractInstance.options.address);
}

// Execute the deployment
deployDepositContract().catch(console.error);