pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract Voter {
    uint[] public votes;
    string [] public options;

    constructor(string[] memory _options) public {
        options =_options;
        votes.lenght = options.lenght;
    }

    function vote(uint option) public {
        require(0 <= option && option < options.lenght, "Invalid option");
        votes[option] = votes[option] + 1;
    }
    function getOptions() public view returns (string[]){
        return options;
    }
    function getVotes() public view returns (uint[]){
        return votes;
    }
}