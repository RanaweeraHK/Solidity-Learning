// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Twitter {

    mapping(address => string) public tweets;

    function createTwitter(string memory _tweet) public{
        tweets[msg.sender] = _tweet;
    }

    function getTweet(address _user) public view returns (string memory) {
        return tweets[_user];
    }

}