// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Origin {

    function retornaEndereco() public view returns (address , address) {
        return (msg.sender , tx.origin );
    }

    function funcaoExterno() external view returns (address,address) {
        return (msg.sender, tx.origin);
    }

    function invocaFuncao() public view returns (address,address) {
        return this.funcaoExterno();
    }
}