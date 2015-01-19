class User < ActiveRecord::Base

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }


  has_many :groupings
  has_many :groups, through: :groupings
  has_many :proportions, through: :groupings

  scope :user_bills, -> (user_first_name, group_name)   { find_by(first_name: user_first_name).groups.find_by(name: group_name).bills }
  
  # scope :user_proportions, -> (user_id, group_id) { find(user_id).groupings.find_by_group_id(group_id).proportions }

  # scope :user_proportions, -> (user_id, group_id) { find(user_id).groupings.find_by_group_id(group_id).proportions }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,:omniauthable, omniauth_providers: [:facebook]

    def self.from_omniauth(auth)
      if user = User.find_by_email(auth.info.email)
        user.provider = auth.provider
        user.uid = auth.uid
        user
      else
        where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
          user.first_name = auth.info.first_name
          user.provider   = auth.provider
          user.uid        = auth.uid
          user.email      = auth.info.email
          user.password   = Devise.friendly_token[0,20]
        end
        user
      end
    end

  end
