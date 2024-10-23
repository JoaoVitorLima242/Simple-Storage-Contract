// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    uint256 internal myFavoriteNumber;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;
    
    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        listOfPeople.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}