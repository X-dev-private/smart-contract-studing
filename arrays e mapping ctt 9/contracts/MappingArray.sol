// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MappingArray {
    //atribui valor a uma posição da memoria
    uint[] public minhaArray;
    //atribui valor a uma chave
    mapping(uint => uint)minhasUint;

    //adiciona valor a uma chave
    function addItem(uint _valor) public {
        minhaArray.push(_valor);
    }

    //adiciona chave e valor
    function addMapping(uint _chave,uint _valor) public {
        minhasUint[_chave] = _valor;
    }

    //retorna valor do array
    function retorna() public view returns (uint[] memory) {
        return minhaArray;
    }
} 