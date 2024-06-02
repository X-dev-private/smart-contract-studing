// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Biblioteca {
    uint valor;
    function alteraValor() public {
        valor = valor +2;
    }
}
contract Upgratable {
    uint public valor;
    address public endereco;

    function alteraEndereco(address _endereco) public {
        endereco = _endereco;
    }
    function alteraValor() public {
        endereco.delegatecall(abi.encodeWithSignature("alteravalor()"));
    }
}

