class ProportionsController < ApplicationController

  def new
    @group = Group.find(params[:group_id])
    @bill_type = BillType.find(params[:bill_type_id])
    @proportion = Proportion.new    
  end

  def create
    @group = Group.find(params[:group_id])
    @proportion = Proportion.new(proportion_params)
    @proportion.grouping_id = Grouping.find_by(group_id: params[:group_id]).id
    @proportion.bill_type_id = params[:bill_type_id]
    @proportion.save
    redirect_to(@group)
  end

  private
  def proportion_params
    params.require(:proportion).permit(:percentage, :grouping_id, :bill_type_id)
  end
end
