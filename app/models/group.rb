class Group < ActiveRecord::Base

  has_many :groupings
  has many :users, through: :groupings

end