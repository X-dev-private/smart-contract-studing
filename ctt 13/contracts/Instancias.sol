// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Sum {
    uint public x;
    constructor(uint _x) {
        x = _x;
    }
    function soma(uint y) public view returns (uint) {
        return x + y;
    }
}
contract Fabrica {
    address[] public enderecos;
    function criarNovoSum(uint _x) public {
        Sum novoSoma = new Sum(_x);
        enderecos.push(address(novoSoma));
    }
}
contract Caller {
    function executaSoma(address endereco,uint y) public view returns (uint) {
        Sum instancia = Sum(endereco);
        uint retorno = instancia.soma(y);
        return retorno;
    }
}