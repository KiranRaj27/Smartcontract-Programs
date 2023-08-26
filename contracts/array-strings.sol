// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Mycontract {
    string[] strings;

    function myFn() public {
        strings.push("hi");
        strings.push("hello");
    }

    function bar() view public returns(string memory){
        return strings[1];
    }
}
