// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        uint indexed validatorIndex,
        address indexed validatorAddress,
        uint amount,
        bytes32 depositDataRoot
    );

    function deposit(uint validatorIndex, bytes32 depositDataRoot) external payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        
        emit DepositEvent(validatorIndex, msg.sender, msg.value, depositDataRoot);
    }
}