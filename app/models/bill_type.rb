class BillType < ActiveRecord::Base

  validates :group_id, presence: true
  
  has_many :bills
  has_many :proportions
  belongs_to :group

end
