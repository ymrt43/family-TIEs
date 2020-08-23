class TasksController < ApplicationController
  before_action :set_group
  
  def index
    @task = Task.new
    @tasks =@group.tasks
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end
end
