// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed validator,
        uint256 amount,
        bytes indexed pubkey,
        bytes32 indexed withdrawal_credentials,
        bytes signature
    );

    function deposit(
        bytes calldata pubkey,
        bytes32 withdrawal_credentials,
        bytes calldata signature
    ) external payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");

        emit DepositEvent(msg.sender, msg.value, pubkey, withdrawal_credentials, signature);
    }
}