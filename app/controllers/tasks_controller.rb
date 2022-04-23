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
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  # Edit a task
  def edit
    @task = Task.find(params[:id])
  end

  # Update a task
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  # Destroy a task
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
