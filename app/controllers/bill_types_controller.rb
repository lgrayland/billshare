class BillTypesController < ActionController::Base

  def new
    @group = Group.find(params[:group_id])
    @bill_type = BillType.new
  end

  def create
    @group = Group.find(params[:group_id])
    @bill_type = @group.bill_types.new(bill_type_params)
    @bill_type.save
    redirect_to(@group)
  end

  private
  def bill_type_params
    params.require(:bill_type).permit(:name, :group_id)
    
  end

end