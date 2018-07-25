import React from 'react';
import Task from './task';
import { inject, observer } from 'mobx-react';

@inject("store")
@observer
class TaskList extends React.Component {
    render() {
        const tasks = this.props.store.tasks.map((task) => <Task key={task.id} task={task}/>);
        return(
            <div>
              <h3>Listing Tasks</h3>
                {tasks}
            </div>
        );
    }
}

export default TaskList;
