// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Persons {
    struct Persons {
        string firstName;
        string lastName;
        uint age;
    }       

    Persons[] public person;

    function addPerson(Persons memory _person) public {
        person.push(_person);
    }
    
    function modAge(uint _indice,uint _newAge) public {
        Persons storage person = person[_indice];
        person.age = _newAge;
    }
}