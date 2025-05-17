// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed validator,
        uint256 amount,
        uint256 indexed validatorIndex
    );

    function deposit(uint256 validatorIndex) external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        emit DepositEvent(msg.sender, msg.value, validatorIndex);
    }
}