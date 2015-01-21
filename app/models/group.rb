class Group < ActiveRecord::Base

  has_many :groupings
  has_many :users, through: :groupings 
  has_many :bills
  has_many :bill_types

  scope :group_bill_types, -> (group_id) { find(group_id).bill_types }

  def calculate_total
    write_attribute :total, bills.map(&:amount).inject(:+)  
  end

end