// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Goerli Address - 0x9b0c2a1e2873af6aa05cedbe073242024c3f5139
// Mumbai Address - 0x24e8a53e64eC41e3c236D7989e621F6EcC9bd85C

contract Todo {
    uint256 totalTasks;

    struct Task {
        uint256 id;
        string taskName;
        string description;
        bool isDone;
        address assigner;
    }
    mapping(uint256 => Task) tasks;

    function createTask(string memory _name, string memory _desc) external {
        tasks[totalTasks] = Task(totalTasks, _name, _desc, false, msg.sender);
        totalTasks++;
    }

    function markTaskComplete(uint256 _id) public {
        tasks[_id].isDone = true;
    }

    function getTask(uint256 _id) external view returns (Task memory) {
        return tasks[_id];
    }
}
