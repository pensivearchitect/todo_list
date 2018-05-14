import React from 'react';
import TodoStore from '../app/javascript/components/todo_store';

describe("TodoStore", () => {
  it("creates todos", () => {
      const store = new TodoStore;
      store.create({title: "todo"});
      store.create({title: "another todo"});
      expect(store.todos.length).toBe(2)
      expect(store.todos[0].title).toBe("todo");
      expect(store.todos[1].title).toBe("another todo");
  });
});
