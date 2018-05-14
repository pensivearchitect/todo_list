import { computed, observable, action } from "mobx";

class Todo {
  @observable title
  @observable priority
  @observable details
  @observable due_date
  @observable completion_time
  @observable label

  constructor(object={ title: "", priority: 0, details: "", completion_time: 0}) {
    this.title = object.title;
    this.priority = object.priority;
    this.details = object.details;
    this.completion_time = object.completion_time;
  }
}

export class TodoStore {
  @observable todos = [];
  @observable isLoading = true;

  constructor() {
      this.loadTasks();
  }

  @action
  create(object) {
    this.todos.push(new Todo(object));
  }

  @action
  loadTasks() {
    this.isLoading = true;
    fetch('/tasks.json')
      .then(response => response.json())
      .then(tasks => tasks.forEach(task => this.updateTask(task)));
    this.isLoading = false;
  }

  @action
  updateTask(json) {
    let task = this.todos.find(todo => todo.id === json.id);
    if (!task) {
      task = new Todo(json)
      this.todos.push(task);
    }
  }
}

export default TodoStore;
