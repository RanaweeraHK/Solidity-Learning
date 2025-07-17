// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//One user can have multiple tweets. So then we need to use arrays
contract Twitter {

    mapping(address => string[]) public tweets;

    function createTwitter(string memory _tweet) public{
        tweets[msg.sender].push(_tweet);
    }

    function getTweet(address _user , uint _i) public view returns (string memory) {
        return tweets[_user][_i];
    }

    function getAllTweets(address _user) public view returns(string[] memory) {
        return tweets[_user];
    }

}