class Share < ActiveRecord::Base
  belongs_to :bill_type
  belongs_to :grouping

  # accepts_nested_attributes_for :grouping
end
