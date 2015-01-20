class AddUserToProportions < ActiveRecord::Migration
  def change
    add_reference :proportions, :user, index: true
  end
end
