import React from 'react';
import TaskList from './task_list';

class TodoList extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div>
              <h3>Listing tasks</h3>
              <div>
                <TaskList/>
              </div>
            </div>
        );
    }
}

export default TodoList;
