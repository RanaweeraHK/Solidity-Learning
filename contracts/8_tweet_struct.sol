// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TweetManager {

    uint16 constant MAX_LENGTH_TWEET = 280;

    struct Tweet{
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) public {

        require(bytes(_tweet).length <= MAX_LENGTH_TWEET, "Tweet is too long!");

        Tweet memory newTweet = Tweet({
            author : msg.sender,
            content : _tweet,
            timestamp : block.timestamp,
            likes : 0
        });

        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address _author, uint _i) public view returns (Tweet memory){
        return tweets[_author][_i];

    }

    function getAllTweets(address _author) public view returns (Tweet[] memory){
        return tweets[_author];

    }


}