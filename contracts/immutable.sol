// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Immutable {
    // Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUnit) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUnit;
    }
}
