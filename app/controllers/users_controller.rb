class UsersController < ApplicationController
  before_action :set_resources, only: [:show, :edit]

  before_action :authenticate_user!

  def show

  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to(@user)
  end

  private

  def set_resources
    @user = current_user
    # @user = User.find(params[:id])
    # @groups = Group.where
  end

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email)
  end

end
