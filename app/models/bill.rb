class Bill < ActiveRecord::Base

  # validates :group_id, presence: true

  belongs_to :bill_type
  belongs_to :group
  has_many :proportions

  def bill_equal_proportion
    # count users in group
    # users = group.users.count
    # devide bill.amount on amount of user in group
    # pr = amount / users
    # create proportions

    # group.users.each do |user|
    #   Proportion.create!(bill_type_id: bill_type.id, bill_id: self.id, user_id: user.id, amount: pr)
    # end
    # # 
    # proportions.count

    
    (total_amount / group.users.count).round(2)
  end

  # def due_for_user(user)
  #   if proportion = user.proportions.joins(:grouping).where(groupings: { group_id: group_id}, bill_type_id: bill_type_id).first
  #     proportion.percentage * amount / 100.0
  #   else
  #     0
  #   end
  # end

  def outstanding_amount
    amount - proportions.map(&:amount).inject(:+).to_f
  end

  def total_amount
    amount + proportions.map(&:amount).inject(:+).to_f
  end
  
end

# u1.proportions.joins(:grouping).where(groupings: {group_id: 18}, bill_type_id: 35).first
#u1.groupings.first.proportions.first.bill_type.bills