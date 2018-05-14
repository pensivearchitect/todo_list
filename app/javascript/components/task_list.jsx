import React from 'react';
import Task from './task';
import { inject, observer } from 'mobx-react';

@inject("store")
@observer
class TaskList extends React.Component {
   render() {
     const tasks = this.props.store.todos.map((task) => <Task key={task.id} task={task}/>);
      return(
        <ul>
          {tasks}
        </ul>
      );
   }
}

export default TaskList;
