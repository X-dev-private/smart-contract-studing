// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Tipos {
    //tipos de numericos
    int public inteiro = 78457;
    uint public uinteiro = 10;
    bytes2 public valorBytes = 0x34f4;
    bytes3 public valorBytes2 = 0xB77653;
    address public endereco = 0x7c6aB52B22deE1E5593600545104e4bD31381eaC;

    //tipo boleano
    bool public booleano = false;

    //tipo caracteres (tambem aceita emojis)
    string public name = unicode"Hello world joãoç";

    //concatenação
    function concatena(string memory primeira,string memory segunda) public pure returns (string memory) {
        return string.concat (primeira,segunda);
    }
}