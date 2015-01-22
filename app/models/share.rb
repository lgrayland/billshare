class Share < ActiveRecord::Base

  belongs_to :bill_type
  belongs_to :grouping

  validates :bill_type, uniqueness: { scope: :grouping }
  validates :percent, numericality: { greater_than: 0, less_than_or_equal_to: 100}

end
