// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse {
    uint public zero;
    uint public um;
    uint public dois;
    uint public tres;

    uint public ramdom = block.timestamp % 4;

    function incrementa() public {
        if(ramdom == 0) {
            zero++;
        }else if(ramdom == 1){
            um++;
        }else if(ramdom == 2){
            dois++;
        }else {
            tres++;
        }
    }
}