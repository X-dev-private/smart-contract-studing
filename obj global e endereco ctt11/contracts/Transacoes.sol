// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Transacoes{
    function pegaEnvio() public view returns (address) {
        return msg.sender;
    }

    function pegaValue() public payable returns (uint) {
        return msg.value;
    }
    
    function pegaDados() public pure returns (bytes memory) {
        return msg.data;
    }
}