class GroupsController < ApplicationController
  before_action :set_resources, only: [:show, :new, :create]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to(@group)
  end

  def show
    @group = Group.find(params[:id])
  end

  private
  def set_resources
    @user = current_user
  end

  def group_params
    params.require(:group).permit(:name, :description)
  end
end