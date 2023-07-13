// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract simpleStorage {
    uint256 num;
    struct People {
        uint256 age;
        string name;
    }
    mapping(string => uint256) public nameToAge;
    People[] public people;

    function get(uint256 _age, string memory _name) public {
        People memory person = People({age: _age, name: _name});
        people.push(person);
        nameToAge[_name] = _age;
    }

    function store(uint256 _num) public virtual {
        num = _num;
    }

    function Return() public view virtual returns (uint256) {
        return num;
    }
}
