// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed depositor,
        uint256 amount,
        bytes32 indexed pubkey,
        bytes32 indexed withdrawal_credentials,
        uint256 validatorIndex
    );

    function deposit(
        bytes32 pubkey,
        bytes32 withdrawal_credentials,
        uint256 amount
    ) external payable {
        require(msg.value == amount, "Incorrect deposit amount");

        // Emit the deposit event
        emit DepositEvent(msg.sender, amount, pubkey, withdrawal_credentials, 0);
    }
}