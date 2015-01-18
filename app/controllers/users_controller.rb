class UsersController < ApplicationController
  before_action :set_resources, only: :show
  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  private
  
  def set_resources
    # @user = User.find(params[:id])
    # @groups = Group.where
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

end
