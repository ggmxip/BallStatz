// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NBAStats {
    struct PlayerStats {
        string playerName;
        uint256 points;
        uint256 assists;
        uint256 rebounds;
    }

    mapping(uint256 => PlayerStats) public playerStats;

    function setPlayerStats(uint256 playerId, string memory name, uint256 points, uint256 assists, uint256 rebounds) public {
        playerStats[playerId] = PlayerStats(name, points, assists, rebounds);
    }

    function getPlayerStats(uint256 playerId) public view returns (string memory, uint256, uint256, uint256) {
        PlayerStats memory stats = playerStats[playerId];
        return (stats.playerName, stats.points, stats.assists, stats.rebounds);
    }
}
