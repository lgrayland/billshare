class AddGroupRefToBillType < ActiveRecord::Migration
  def change
    add_reference :bill_types, :group, index: true
  end
end
