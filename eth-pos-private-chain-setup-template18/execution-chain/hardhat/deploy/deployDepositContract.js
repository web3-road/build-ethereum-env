const hre = require("hardhat");

async function main() {
    // Get the contract factory for the DepositContract
    const DepositContract = await hre.ethers.getContractFactory("DepositContract");

    // Deploy the contract
    const depositContract = await DepositContract.deploy();

    // Wait for the deployment to be confirmed
    await depositContract.deployed();

    console.log("DepositContract deployed to:", depositContract.address);
}

// Execute the main function and handle errors
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });