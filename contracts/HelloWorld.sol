pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string public value;
    
    function getMessage() public view returns (string memory) {
        return value;
    }

    function setMessage(string memory _value) public {
        value = _value;
    }
    constructor() public {
        value = "myValue";
    }
}