class AddAmountToProportions < ActiveRecord::Migration
  def change
    add_column :proportions, :amount, :decimal
  end
end
