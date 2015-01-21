class Grouping < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :group
  has_many :shares

  validates_uniqueness_of :user_id, :scope => :group_id
  
end
