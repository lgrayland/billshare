class Grouping < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :group

  # validates :user_id, uniqueness: { scope: :group,
  #    message: "User already in group" }

  validates_uniqueness_of :user_id, :scope => :group_id

  # before_save :already_in_group?

  # def already_in_group?
  #   errors.add(:base, "User already in group") if self.include?(user_id) && self.include?(group_id) 


  #   # group.users.include?(user) && 
  # end

end
