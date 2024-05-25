// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ComparaTempo {
    uint public tempoAgora;

    function gravaTempo() public {
        tempoAgora = block.timestamp;
    }

    function passadoTempo() public  {
        //é possivel colocar secunds , minutes , hours , days and weeks
        require(block.timestamp > tempoAgora + 10 seconds);
    }
}