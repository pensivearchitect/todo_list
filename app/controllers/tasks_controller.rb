class TasksController < ApplicationController
  deserializable_resource :task
  expose :task
  expose :tasks, -> { Task.all }

  def index
    render jsonapi: Task.all,
           # include: [dependencies: [:task]],
           fields: { tasks: [:title, :priority]}
  end

  private def create_params
    params.require(:task).permit(:title, :details, :due_date, :priority,
                                 :completion_time, :label)
  end
end
