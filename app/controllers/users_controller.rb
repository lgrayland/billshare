class UsersController < ApplicationController
  before_action :set_resources, only: :show
  def show
  end

  private
  def set_resources
    @user = current_user
    # @user = User.find(params[:id])
    # @groups = Group.where
  end
end
