class TasksController < ApplicationController
  expose :task
  expose :tasks, -> { Task.all }

  def index
    render json: Task.serialize(Task.includes(:dependencies, :tasks).all), status: :ok
  end

  def create
    render json: Task.serialize(task), status: :ok && return if task.save(task_params)
    render status: :unprocessable_entity
  end

  def update
    render json: Task.serialize(task), status: :ok && return if task.update(task_params)
    render status: :unprocessable_entity
  end

  def destroy
    render json: {}, status: :ok if task.destroy
  end

  private def task_params
    params.require(:task).permit(:title, :details, :due_date, :priority,
                                 :completion_time, :label)
  end
end
