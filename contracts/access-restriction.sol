// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract AccessRestriction{
    address public owner = msg.sender;
    uint public lastOwnerChange = block.timestamp;

    modifier onlyBy(address _account){
        require(msg.sender==_account);
        _;
    }

    modifier onlyAfter(uint _time){
        require(block.timestamp >_time);
        _;
    }

    modifier costs(uint _amount){
        require(msg.value >_amount);
        _;
        
        if(msg.value > _amount){
            msg.sender.transfer(msg.value-_amount);
        }
    }
}