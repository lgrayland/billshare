class GroupingsController < ApplicationController
  respond_to :html, :json

  def index
  end
  def new
    @group = Group.find(params[:group_id])
    @grouping = Grouping.new
  end

  def delete
    @groupind.destroy
    redirect_to @group
  end

  def create
    @group = Group.find(params[:group_id])
    @grouping = @group.groupings.new(grouping_params)

    flash[:notice] = "Grouping was successfully created." if @grouping.save
    # respond_with(@grouping)
    redirect_to @group
    
    # respond_to do |format|
    #   if @grouping.save
    #     format.html { redirect_to @group }
    #   else
    #     format.json { render json: @grouping.errors }
    #   end
    # end
        
  end

private
  def grouping_params
    params.require(:grouping).permit(:user_id)
  end

end