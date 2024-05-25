// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Estrutura {
    struct Person {
        string firstName;
        string lastName;
        uint age;
    }

    Person[] public persons;

    function addPersons(string memory _first,string memory _last,uint _age) public {
        //primeira forma de adicionar valores a memoria da estrutura
        Person memory person = Person(_first,_last,_age);

        //segunda forma de adicionar valores na memoria da estrutura
        /*Person memory person;
        person.firstName = _first;
        person.lastName = _last;
        person.age = _age;*/

        persons.push(person);
    }

    //atribuindo valor a estrutura e pegando uma unica variavel da estrutura

    /*Person public person = Person("Joao","Ferreira",29);
    function getFirstName() public view returns (string memory) {
        return person.firstName;
    }*/
}