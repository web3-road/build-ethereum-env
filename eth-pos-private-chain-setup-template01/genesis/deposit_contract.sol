// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed sender,
        uint256 amount,
        bytes32 indexed pubkey,
        bytes32 indexed withdrawal_credentials,
        uint256 amount
    );

    function deposit(
        bytes32 pubkey,
        bytes32 withdrawal_credentials
    ) external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        emit DepositEvent(msg.sender, msg.value, pubkey, withdrawal_credentials, msg.value);
    }
}