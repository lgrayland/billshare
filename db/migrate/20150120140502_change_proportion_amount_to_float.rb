class ChangeProportionAmountToFloat < ActiveRecord::Migration
  def change
    change_column :proportions, :amount, :float
  end
end
