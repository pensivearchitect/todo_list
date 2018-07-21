class TasksController < ApplicationController
  expose :task
  expose :tasks, -> { Task.all }

  def index
    render json: TaskSerializer.new(Task.includes(:dependencies, :tasks).all)
  end

  private def create_params
    params.require(:task).permit(:title, :details, :due_date, :priority,
                                 :completion_time, :label)
  end
end
