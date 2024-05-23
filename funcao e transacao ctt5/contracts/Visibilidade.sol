// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Visibilidade {
    int public contagem;

    function incrementa() public {
        incrementaInternal();
    }

    function incrementaExterno() external {
        incrementaPrivate();
    }

    function incrementaPrivate() private {
        contagem = contagem + 1;
    }

    function incrementaInternal() internal {
        contagem = contagem + 1;
    }
}