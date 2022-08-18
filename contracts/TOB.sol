// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.9;

interface IChallenge {
    function exploit_me(address winner) external;
    function lock_me() external;
}

contract TOB {
    constructor(){}

    function exploit() external {
        IChallenge(address(this)).exploit_me(msg.sender);
    }
    fallback() external {
        IChallenge(address(this)).lock_me();
    }
}