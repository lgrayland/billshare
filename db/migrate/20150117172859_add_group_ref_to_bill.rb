class AddGroupRefToBill < ActiveRecord::Migration
  def change
    add_reference :bills, :group, index: true
  end
end
