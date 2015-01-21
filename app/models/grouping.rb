class Grouping < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :group

  before_save :already_in_group?

  def already_in_group?
    errors.add(:base, "User already in group") if group.users.include?(user)
  end

end
