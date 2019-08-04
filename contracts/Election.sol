pragma solidity >0.4.0 <0.6.0;

contract Election {

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // mapping of id of candidate with there id
    mapping(uint=> Candidate) public candidates;

    //store candidate count
    uint public candidatesCount;

    //constructor
    constructor () public {

        addCandidate("Shivansh");
        addCandidate("Hardik");
    }

    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
    }
}