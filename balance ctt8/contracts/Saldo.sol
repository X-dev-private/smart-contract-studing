// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Saldo {
    //view balance to ether
    function pegaSaldo() public view returns (uint) {
        address endereco = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

        return endereco.balance;
    }

    function pegaSaldoContrato() public view returns (uint) {
        return address(this).balance;
    }
}