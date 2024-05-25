// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Heranca {
    mapping(string => uint) heranca;
    string texto;

    constructor() {
        texto = unicode"Isso é um texto";
        heranca[unicode"João"] = 10;
        heranca["Bob"] = 20;
        heranca["Ana"] = 40; 
    } 

    function lerValorBob() public view returns (uint) {
        return heranca["Bob"];
    }
}