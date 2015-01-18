class User < ActiveRecord::Base

  has_many :groupings
  has_many :groups, through: :groupings

  scope :user_bills, -> (user_id, group_id)   { find(user_id).groups.find(group_id).bills }
  
  scope :user_proportions, -> (user_id, group_id) { find(user_id).groupings.find_by_group_id(group_id).proportions.first }

  # scope :user_proportions, -> (user_id, group_id) { find(user_id).groupings.find_by_group_id(group_id).proportions }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable


end
