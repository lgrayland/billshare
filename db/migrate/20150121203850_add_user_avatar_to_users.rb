class AddUserAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_avatar, :string
  end
end
