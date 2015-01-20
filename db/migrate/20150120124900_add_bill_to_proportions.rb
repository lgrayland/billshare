class AddBillToProportions < ActiveRecord::Migration
  def change
    add_reference :proportions, :bill, index: true
  end
end
