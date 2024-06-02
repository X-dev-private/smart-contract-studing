// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

library LibUintArray {
    
    function soma(uint[] storage array)internal view returns (uint) {
        uint resultado;
        for(uint i=0;i<array.length;i++) {
            resultado = resultado + array[i];
        }
        return resultado;
    }

}

contract MeuContrato {
    using LibUintArray for uint[];

    uint[] public minhaArray = [1,2,3,4,5];

    function somaMinhaArray() public view returns (uint) {
        return minhaArray.soma();
    }
}