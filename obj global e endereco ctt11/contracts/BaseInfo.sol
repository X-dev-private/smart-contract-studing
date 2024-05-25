// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BaseInfo {
    function retornaInfo() public view returns (uint) {
        return block.number;
    }
}