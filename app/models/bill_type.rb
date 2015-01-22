class BillType < ActiveRecord::Base

  # validates :group_id, presence: true
  
  has_many :bills
  has_many :proportions
  has_many :shares
  belongs_to :group

end
