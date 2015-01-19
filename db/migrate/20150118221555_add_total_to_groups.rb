class AddTotalToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :total, :float
  end
end
