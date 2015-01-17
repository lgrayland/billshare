class Group < ActiveRecord::Base
  has_many :groupings
  has_many :users, through: :groupings
  
  # has_many :bills
  # has_many :bill_types
end