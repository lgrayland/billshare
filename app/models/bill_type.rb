class BillType < ActiveRecord::Base

  # validates :group_id, presence: true
  
  has_many :bills
  has_many :proportions
  has_many :shares
  belongs_to :group

  # validates :shares, numericality: {less_than_or_equal_to: :validates_percents
  # before_save :validates_percents

  def exceed_percents?(new_percent)
    if !shares.blank? 
      return shares.map(&:percent).inject(:+) + new_percent > 100
    end
    return false
  end

end
