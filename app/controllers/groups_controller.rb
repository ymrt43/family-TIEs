class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy]
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def destroy
    if @group.destroy
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def group_params
    params.require(:group).permit(:name).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
