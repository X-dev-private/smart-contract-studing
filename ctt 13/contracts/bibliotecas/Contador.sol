// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "contracts/bibliotecas/Biblioteca.sol";

library UintSoma {
    function quadra(uint _x)public returns (uint) {
        return _x*_x;
    }
    function soma(uint _x,uint _y)public returns (uint) {
        return _x + _y;
    }
}

contract Contador {
    using UintSoma for uint;

    function resolveContador(uint _x) public returns (uint) {
        return Biblioteca.valor(_x);
    }
    function usaUintSoma(uint _x,uint _y) public returns (uint,uint) {
        return (_x.quadra(),_x.soma(_y));
    }
}