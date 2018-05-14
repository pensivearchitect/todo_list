import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'mobx-react';

import TodoList from './components/todo_list';
import TodoStore from './components/todo_store';

ReactDOM.render(
  <Provider store={new TodoStore}>
    <TodoList/>
  </Provider>,
    document.getElementById('root')
);
