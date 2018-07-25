import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'mobx-react';

import TaskList from './components/task_list';
import TaskStore from './components/task_store';

ReactDOM.render(
  <Provider store={new TaskStore}>
    <TaskList/>
  </Provider>,
    document.getElementById('root')
);
