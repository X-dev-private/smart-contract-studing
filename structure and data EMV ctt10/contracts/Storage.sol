// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Storage {
    string texto = "hello from storage";

    //funcao aponta para texto da memoria que por sua vez é temporario
    /*function teste(string calldata _texto) public view returns (string memory) {
        string memory textoLocal = "hello from memory";
        return textoLocal;
    }*/

    //funcao aponta para calldata que apenas aponta para alguma informação
    /*function testeB(string calldata _texto) public view returns (string memory) {
        string calldata textoLocal2 = _texto;
        return textoLocal2;
    }*/

    //funcao aponta para storage que aponta para algum valor armazenado no codigo
    /*function testeB(string calldata _texto) public view returns (string memory) {
        string storage textoLocal3 = texto;
        return textoLocal3;
    }*/
}