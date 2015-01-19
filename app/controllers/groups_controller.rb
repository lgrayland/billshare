class GroupsController < ApplicationController
  before_action :set_resources, only: [:show, :edit]

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  private
  def set_resources
    @user = current_user
  end
end