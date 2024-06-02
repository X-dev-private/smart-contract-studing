// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Implicita {
    //conversao na qual o compilador conssegue fazer por conta quando nao ha a perda de informações
    uint8 pequeno = 36;
    uint16 medio = pequeno;
}

contract Explicita {
    //conversao na qual o compilador nao conssegue atribuir valor por perda de memoria

    function converte() public pure {

        uint256[4] memory array = [uint256(1),2,3,4];

    }
}   