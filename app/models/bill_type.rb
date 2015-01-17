class BillType < ActiveRecord::Base
  has_many :bills
  has_many :proportions
end
