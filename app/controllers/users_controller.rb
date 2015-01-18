class UsersController < ApplicationController
  before_action :set_resources, only: [:show, :edit]

  def show
    

    #find group where user
    @groups = []
    @bills = []
    @bill_types = []

    Group.all.each do |group|
      group.users.each do |user_group|
        if user_group.id == @user.id
          @groups << group
          @bills << User.user_bills(@user.first_name, group.name)
          @bill_types << Group.group_bill_types(group.id)
        end
      end
    end

    # raise

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
    params.require(:user).permit(:id, :first_name, :last_name)
  end

end
