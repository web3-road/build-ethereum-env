// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositContract {
    event DepositEvent(
        address indexed validator,
        uint256 amount,
        bytes32 indexed depositDataRoot
    );

    struct Deposit {
        address validator;
        uint256 amount;
        bytes32 depositDataRoot;
    }

    Deposit[] public deposits;

    function deposit(bytes32 _depositDataRoot) external payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");

        deposits.push(Deposit({
            validator: msg.sender,
            amount: msg.value,
            depositDataRoot: _depositDataRoot
        }));

        emit DepositEvent(msg.sender, msg.value, _depositDataRoot);
    }

    function getDeposits() external view returns (Deposit[] memory) {
        return deposits;
    }
}