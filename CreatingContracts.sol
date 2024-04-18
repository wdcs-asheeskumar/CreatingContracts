// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract CreatingContract1 {
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function getValue() public view returns (string memory, uint256) {
        return (name, age);
    }
}

contract CreatingContract2 {
    string public name;
    uint256 public age;
    CreatingContract1 public creatingContract;

    constructor(
        string memory _daughtersName,
        string memory _momsName,
        uint256 _daughtersAge,
        uint256 _momsAge
    ) {
        creatingContract = new CreatingContract1(_daughtersName, _daughtersAge);
        name = _momsName;
        age = _momsAge;
    }

    function getValue() public view returns (string memory, uint256) {
        return (name, age);
    }
}
