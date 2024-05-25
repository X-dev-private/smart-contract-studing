// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bytes {
    bytes public texto = "Joao";
    string public texto2 = "Joao";

    //adiciona valores exadecimais em bytes
    function addByte(bytes1 novoByte) public {
        texto.push(novoByte);
    }

    //tranforma valor exadecimal bytes em string
    function retorna() public view returns (string memory) {
        return string(texto);
    }

}