class Bill < ActiveRecord::Base

  belongs_to :bill_type
  belongs_to :group
  
  def due_for_user(user)
    if proportion = user.proportions.joins(:grouping).where(groupings: { group_id: group_id}, bill_type_id: bill_type_id).first
      proportion.percentage * amount / 100.0
    else
      0
    end


  end
end
