// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed validator,
        uint256 amount,
        bytes32 indexed pubkey,
        bytes32 indexed withdrawalCredentials
    );

    function deposit(
        bytes32 _pubkey,
        bytes32 _withdrawalCredentials
    ) external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");

        emit DepositEvent(msg.sender, msg.value, _pubkey, _withdrawalCredentials);
    }
}