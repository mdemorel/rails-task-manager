class TasksController < ApplicationController
  # Read all task
  def index
    @tasks = Task.all
  end
  # Read one task
  def show
    @task = Task.find(params[:id])
  end
  # New task
  def new
    @task = Task.new
  end
  # Create one task
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end
  # Edit (get)
  def edit
    @task = Task.find(params[:id])
  end
  # Update a task (post)
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end
  # Remove a task
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
