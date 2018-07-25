import { computed, observable, action } from "mobx";
import moment from 'moment';

class Task {
    @observable id
    @observable title
    @observable priority
    @observable details
    @observable due_date
    @observable completion_time
    @observable created_at
    @observable label

    static default = {
        id: 0,
        title: "",
        priority: 0,
        details: "",
        completion_time: 0
    }

    constructor(object=Task.default) {
        this.id = object.id;
        this.title = object.title;
        this.priority = object.priority;
        this.details = object.details;
        this.completion_time = object.completion_time;
        this.created_at = moment(object.created_at);
    }
}

export class TaskStore {
    @observable tasks = [];
    @observable loading = true;

    constructor() {
        this.load();
    }

    @action
    create(object) {
        this.tasks.push(new Task(object));
    }

    @action
    load() {
        this.loading = true;
        fetch('/tasks.json')
            .then(response => response.json())
            .then(tasks => tasks.data.forEach(task => this.update(task)));
        this.loading = false;
    }

    @action
    update(json) {
        let task = this.tasks.find(task => task.id === json.id);
        if (!task) {
            task = new Task(json);
            this.tasks.push(task);
        }
    }
}

export default TaskStore;
