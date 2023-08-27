// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Variables {
    string public text = "Hello";
    uint public num = 878;

    function something() public view {
        uint i = 456;

        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }
}
