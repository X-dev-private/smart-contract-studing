// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Par {
    mapping(string => string) public par;

    function criaPar(string memory par1, string memory par2) public {
        par[par1] = par2;
    } 
}