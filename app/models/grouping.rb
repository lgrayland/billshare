class Grouping < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  
  # has_mane :proportions
end
