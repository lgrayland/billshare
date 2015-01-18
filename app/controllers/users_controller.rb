class UsersController < ApplicationController
  before_action :set_resources, only: :show
  def show
  end

  private
  def set_resources
    @user = User.find(params[:id])
  end
end
