import React from 'react';

const Task = (props) => {
    const task = props.task;
    return (
        <li>
          {'title: '}
          {task.title}
        </li>
    );
};

const TaskList = (props) => {
    const tasks = props.tasks;
    const listItems = tasks.map((task) => <Task key={task.id} task={task}/>);
    return (
        <ul>
          {listItems}
        </ul>
    );
};

class TodoList extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            tasks: []
        };
    }
    componentDidMount() {
        fetch('/tasks.json')
            .then(response => response.json())
            .then(tasks => this.setState({tasks: tasks}));
    }

    render() {
        return (
            <div>
              <h3>Listing tasks</h3>
              <div>
                <TaskList tasks={this.state.tasks}/>
              </div>
            </div>
        );
    }
}

export default TodoList;
