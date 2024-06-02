// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Encode {
    function encode() public pure returns (bytes memory) {
        return abi.encode(3,9,"Hello World",true);
    }

    function encodeSignature()public pure returns (bytes memory) {
        return abi.encodeWithSignature("valor(uint256)",58);
    }

    function decode(bytes calldata _valor) public pure returns (uint,uint,string memory,bool) {
        return abi.decode(_valor,(uint,uint,string,bool));
    } 

    function encodePacote() public pure returns (bytes memory) {
        return abi.encodePacked(uint8(3),uint16(9),string("Hello World"));
    }

    function concatena(string memory s1,string memory s2)public pure returns (string memory) {
        return string(abi.encodePacked(s1,s2));
    }
}