class User < ActiveRecord::Base

  has_many :groupings
  has_many :groups, through :groupings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

end
