class RemoveGroupingIdFromProportions < ActiveRecord::Migration
  def change
    remove_column :proportions, :grouping_id, :integer
  end
end
