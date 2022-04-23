class TasksController < ApplicationController

  # See all tasks
  def index
    @tasks = Task.all
  end

  # See details about one task
  def show
    @task = Task.find(params[:id])
  end
  # Create a task
  # Update a task
  # Destroy a task

end
