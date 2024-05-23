// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValorReferencia {
    uint public valor;
    string public name;

    function setValor(uint _valor) public {
        valor = _valor;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}