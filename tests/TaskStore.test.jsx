import React from 'react';
import TaskStore from '../app/javascript/components/task_store';

describe("TaskStore", () => {
    it("creates tasks", () => {
        const store = new TaskStore;
        store.create({title: "task"});
        store.create({title: "another task"});
        expect(store.tasks.length).toBe(2);
        expect(store.tasks[0].title).toBe("task");
        expect(store.tasks[1].title).toBe("another task");
    });
    it("doesn't recreate tasks, but rather updates them when necessary", () => {
        const store = new TaskStore;
        store.create({id: 1, title: "task"});
        store.update({id: 1, title: "a new task"});
        expect(store.tasks.length).toBe(1);
        expect(store.tasks[0].title).toBe("a new task");
    });
});
