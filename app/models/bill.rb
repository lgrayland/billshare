class Bill < ActiveRecord::Base

  # validates :group_id, presence: true

  belongs_to :bill_type
  belongs_to :group
  has_many :proportions

  # def due_for_user(user)
  #   if proportion = user.proportions.joins(:grouping).where(groupings: { group_id: group_id}, bill_type_id: bill_type_id).first
  #     proportion.percentage * amount / 100.0
  #   else
  #     0
  #   end
  # end

  def total_amount
    amount + proportions.map(&:amount).inject(:+).to_f
  end
  
end

# u1.proportions.joins(:grouping).where(groupings: {group_id: 18}, bill_type_id: 35).first
#u1.groupings.first.proportions.first.bill_type.bills