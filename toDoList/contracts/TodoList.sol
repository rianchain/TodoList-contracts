// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;


contract TodoList {

    uint public taskCount = 0;

    struct Task {
        uint id;
        string taskName;
        bool status;
    }

    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string taskName,
        bool status
    );

    event TaskStatus(
        uint id,
        bool status
    );

    constructor() {
        createTask("Todo List App");
    }

    function createTask(string memory _taskName) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _taskName, false);
        emit TaskCreated(taskCount, _taskName, false);
    }

    function toggleStatus(uint _id) public {
        Task memory _task = tasks[_id];
        _task.status = !_task.status;
        tasks[_id] = _task;
        emit TaskStatus(_id, _task.status);
    }
}