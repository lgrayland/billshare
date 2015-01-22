class Bill < ActiveRecord::Base

  belongs_to :bill_type
  belongs_to :group
  has_many :proportions

  validates_numericality_of :amount, greater_than: 0

  def bill_equal_proportion 
    (amount / group.users.count).round(2)
  end

  def share_for_user(user)
    # grouping = Grouping.find_by(user_id: user.id, group_id: group.id)
    grouping = user.find_grouping(group)
    share = Share.find_by(bill_type_id: bill_type.id, grouping_id: grouping.id)

    ((amount / 100 * share.try(:percent).to_f)).round(2)
  end

  # def needs_to_pay(user)

    
  # end

  def outstanding_amount
    amount - proportions.map(&:amount).inject(:+).to_f
  end
  
  def outstanding_amount_for_user(user)
    share_for_user(user) - paid_by_user(user)
  end

  def paid_by_user(user)
    user.proportions.where(bill_id: id).map(&:amount).inject(:+).to_f
  end
end