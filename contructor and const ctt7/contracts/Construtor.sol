// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Contrutor {
    string public name;
    //exemplos de constantes
    string public constant secundName = "Paulo";
    uint public immutable number;

    //contructor coloca funçao executada no momento do deploy na rede
    constructor(string memory _name,uint _number) {
        name = _name;
        number = _number;
    }

}