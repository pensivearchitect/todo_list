class TasksController < ApplicationController
  expose :task
  expose :tasks, -> { Task.includes(:facets, :chunks).all }
  respond_to :json

  def index
    render json: TaskSerializer.new(tasks).serialized_json
  end

  def create
    render json: task && return if task.save(task_params)
    render json: task.errors
  end

  def update
    render json: task && return if task.update(task_params)
    render json: task.errors
  end

  def destroy
    render json: task && return if task.destroy
    render json: task.errors
  end

  private def task_params
    params.require(:task).permit(:title, :details, :due_date, :priority,
                                 :completion_time, :label)
  end
end
