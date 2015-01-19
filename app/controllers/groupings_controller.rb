class GroupingsController < ApplicationController

  def new
    @group = Group.find(params[:group_id])
    @grouping = Grouping.new
  end

  def create
    @group = Group.find(params[:group_id])
    @grouping = @group.groupings.new(grouping_params)
    @grouping.save
    redirect_to(@group)
  end

private
  def grouping_params
    params.require(:grouping).permit(:user_id)
  end

end