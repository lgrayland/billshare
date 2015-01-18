class UsersController < ApplicationController
  before_action :set_resources, only: :show
  def show
    @user = current_user
  end

  private
  def set_resources
    # @user = User.find(params[:id])
    # @groups = Group.where
  end
end
