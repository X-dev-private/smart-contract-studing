// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract PureView {
    uint multiplo = 3;

    function multiplica(uint _valor) public view returns(uint) {
        return _valor * multiplo;
    }

    function soma(uint _valor1,uint _valor2) public pure returns (uint) {
        return _valor1 + _valor2;
    }
}