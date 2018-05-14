import React from 'react';

const Task = (props) => {
    const task = props.task;
    return (
        <li>
          {task.completed ? 'complete' : 'incomplete'}
          {' '}
          {'title: '}
          {task.title}
        </li>
    );
};
export default Task;
