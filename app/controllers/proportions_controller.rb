class ProportionsController < ApplicationController
  before_action :set_group
  before_action :set_bill
  before_action :set_bill_type

  def new
    @proportion = Proportion.new    
  end

  def create
    @proportion = current_user.proportions.new(proportion_params)
    @proportion.bill = @bill
    @proportion.bill_type = @bill_type
    @proportion.save
    redirect_to(@group)
  end

  private
  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_bill
    @bill = Bill.find(params[:bill_id])
  end

  def set_bill_type
    @bill_type = @bill.bill_type
  end

  def proportion_params
    params.require(:proportion).permit(:amount, :bill_id, :user_id, :bill_type_id)
  end
end
