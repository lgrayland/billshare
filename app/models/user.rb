class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :email, presence: true


  has_many :groupings
  has_many :groups, through: :groupings

  scope :user_bills, -> (user_first_name, group_name)   { find_by(first_name: user_first_name).groups.find_by(name: group_name).bills }
  
  scope :user_proportions, -> (user_id, group_id) { find(user_id).groupings.find_by_group_id(group_id).proportions }

  # scope :user_proportions, -> (user_id, group_id) { find(user_id).groupings.find_by_group_id(group_id).proportions }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable


end
