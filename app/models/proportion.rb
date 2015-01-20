class Proportion < ActiveRecord::Base
  
  belongs_to :bill_type
  belongs_to :bill
  belongs_to :user
end
