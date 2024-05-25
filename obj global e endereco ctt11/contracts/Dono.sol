// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Dono {
    address public dono;

    constructor() {
        dono = msg.sender;
    }

    function restrita() public view returns (string memory) {
        require(msg.sender == dono);
        string memory hello = unicode"qualé psero ta de toca";
        return hello;
    }
}