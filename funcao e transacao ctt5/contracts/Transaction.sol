// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Transaction {
    int contagem;

    function pegaContagem() public view returns (int) {
        return contagem;
    }

    function incrementa(int _incrementador /*string memory _nome*/) public returns (int) {
        //variavel local

        //nao é possivel criar novas variaveis de estado dentro das funções
        //int incrementador = 3;
        contagem = contagem + _incrementador;
        return contagem;
    }
}