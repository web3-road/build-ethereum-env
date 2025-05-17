const Web3 = require('web3');
const fs = require('fs');
const path = require('path');

const web3 = new Web3('http://127.0.0.1:8545'); // Replace with your Geth RPC URL

const deployContract = async () => {
    const accounts = await web3.eth.getAccounts();
    const deployer = accounts[0];

    const contractPath = path.resolve(__dirname, 'DepositContract.sol');
    const source = fs.readFileSync(contractPath, 'utf8');

    const compiledContract = await web3.eth.compile.solidity(source);
    const contract = compiledContract[':DepositContract'];

    const result = await new web3.eth.Contract(JSON.parse(contract.interface))
        .deploy({ data: contract.bytecode })
        .send({ from: deployer, gas: '1000000' });

    console.log('Contract deployed at address:', result.options.address);
};

deployContract().catch(console.error);