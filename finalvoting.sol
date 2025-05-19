pragma solidity ^0.8.13;

contract Voting{
    
    struct Option {
        string descrption;
        string party;
        uint voteCount;
    }

    struct VotingRound{
        bool active;
        uint endTime;
        Option[] options;
        mapping(address => bool) hasVoted;
    }


    mapping(uint => VotingRound) public votingRounds;

    uint256 public currentRoundId;
    address public owner;

    constructor(){
        owner = msg.sender;

    }

} 