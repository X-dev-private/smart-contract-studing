// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enviado {
    fallback() external payable { }
}

contract Envia {
    address public endereco;

    function pegaEndereco(address _endereco) public {
        endereco = _endereco;
    }

    constructor() payable {

    }

    function enviaEtherTranfer() public {
        payable(endereco).transfer(1 ether);
    }

    function enviaEtherSend() public returns (bool) {
        return payable (endereco).send(1 ether);
    }

    function enviaEtherCall() public returns (bool) {
        (bool retorna, ) = payable(endereco).call{value: 1 ether}("");
        return retorna;
    }
}