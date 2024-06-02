// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Fallback {
    uint dinheiro;

    //ativada quando o payload tem algum valor 
    receive() external payable { dinheiro = dinheiro+msg.value;}

    //ativada quando o payload nao tem nenhum valor
    fallback() external { }

    function foo() public pure returns (uint) {
        return 12;
    }
}