class TasksController < ApplicationController
  # Read all task
  def index
    @tasks = Task.all
  end
  # Read one task
  def show
    @task = Task.find(params[:id])
  end
  # Create one task
  # Edit a task
  # Remove a task

end
