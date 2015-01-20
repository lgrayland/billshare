class RemovePercentageFromProportions < ActiveRecord::Migration
  def change
    remove_column :proportions, :percentage, :decimal
  end
end
