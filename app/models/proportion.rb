class Proportion < ActiveRecord::Base
  belongs_to :grouping
  belongs_to :bill_type
end
