import React from 'react';

const formatted = (date) => date.format("dddd, MMMM D YYYY, h:mm a");

const Task = (props) => {
    const task = props.task;
    return (
        <li key={task.id}>
          {'id: '}
          {task.id}
          {' '}
          {'title: '}
          {task.title}
          {' '}
          {'created at: '}
          {formatted(task.created_at)}
        </li>
    );
};
export default Task;
