// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed validator,
        uint256 amount,
        bytes32 indexed depositDataRoot
    );

    struct DepositData {
        bytes32 pubkey;
        bytes32 withdrawalCredentials;
        uint256 amount;
        bytes32 signature;
    }

    function deposit(DepositData calldata depositData) external payable {
        require(msg.value == depositData.amount, "Incorrect deposit amount");

        emit DepositEvent(msg.sender, depositData.amount, keccak256(abi.encode(depositData)));
    }
}