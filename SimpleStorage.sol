// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    struct Person {
        string name;
        uint256 number;
    }
    
    uint256 public number;
    Person[] public list;
    mapping (string => uint256) public nameToNum;

    
    function store(uint256 n) public {
        number = n;
    }

    function retrieve() public view returns(uint256) {
        return number;
    }

    function addPerson(string memory nam, uint256 num) public {
        list.push(Person(nam, num));
        nameToNum[nam] = num;
    }
}