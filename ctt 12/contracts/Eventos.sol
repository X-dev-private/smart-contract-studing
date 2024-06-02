// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Eventos {
    uint public valor;

    event AlteraValor(uint);

    function alteraValor(uint _valor) public {
        valor = _valor;
        emit AlteraValor(_valor);
    }
}

contract ExampleB {
    //eventos em topicos (até 3 variaveis indexicadas)
    event Register(address indexed to,address indexed from,uint valA,uint valB);

    function emitRegister(address to,address from,uint valA,uint valB) public  {
        emit Register(to, from, valA, valB);
    }

}

contract ExempleC {
    //eventos anonimos (até 4 variaveis indexicadas)
    event Register(address indexed to,address indexed from,uint indexed  valA,uint indexed valB)anonymous;

    function emitRegister(address to,address from,uint valA,uint valB) public  {
        emit Register(to, from, valA, valB);
    }
}