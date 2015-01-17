class Bill < ActiveRecord::Base
  belongs_to :bill_type
  
  # belongs_to :group
end
