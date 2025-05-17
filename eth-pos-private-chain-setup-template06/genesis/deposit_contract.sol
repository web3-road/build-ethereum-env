// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed validator,
        uint256 amount,
        bytes32 indexed pubkey,
        bytes32 indexed withdrawal_credentials,
        uint256 signature
    );

    function deposit(
        bytes32 pubkey,
        bytes32 withdrawal_credentials,
        uint256 amount,
        uint256 signature
    ) external payable {
        require(msg.value == amount, "Incorrect amount sent");

        emit DepositEvent(msg.sender, amount, pubkey, withdrawal_credentials, signature);
    }
}