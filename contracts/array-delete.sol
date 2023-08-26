// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ArrayDelete {
    uint[] numbers;

    function main() public returns (uint[] memory) {
        numbers.push(100);
        numbers.push(200);
        numbers.push(300);
        numbers.push(400);

        delete numbers[2];

        return numbers;
    }
}
