// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Revert {
    uint public limite = 10;

    error OutOfRange(uint limite, uint valorRecebido);

    function exemploA(uint _valorA) public {
        require(_valorA <= limite,"O valor nao esta nos parametros" );
    }

    function exemploB(uint _valorB) public {
        if(_valorB > limite)revert("O valor nao esta como requerido");
    }

    function exemploC(uint _valorC) public {
        if(_valorC > limite)revert OutOfRange(limite,_valorC);
    }
}

contract Assert {
    uint public saldo = 10;

    function teste(uint _valor) public {
        uint saldoAnterior = saldo;
        saldo = saldo + _valor;

        assert(saldoAnterior == saldo+_valor);
    }
}