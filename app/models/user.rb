class User < ActiveRecord::Base

  has_many :groupings
  has_many :groups, through: :groupings

  scope :user_bills, -> (user_id, group_id)   { find_by_id(user_id).groups.find_by_id(group_id).bills }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # def self.user_bills(user_id)
  #   # find(self.id).groups
  #   where(id: user_id)
  # end

end
