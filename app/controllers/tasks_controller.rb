class TasksController < ApplicationController
  before_action :set_group
  
  def index
    @tasks =@group.tasks.order("start_at ASC")
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = @group.tasks.new(task_params)
    if @task.save
      redirect_to group_tasks_path(@group)
    else
      render :new
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to group_tasks_path(@group)
    else
      render :edit
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to group_tasks_path(@group)
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :start_at, :image, :duration).merge( group_id: params[:group_id])
  end
  
  def set_group
    @group = Group.find(params[:group_id])
  end
end
