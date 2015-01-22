class Proportion < ActiveRecord::Base
  
  belongs_to :bill_type
  belongs_to :bill
  belongs_to :user


  validates :amount, numericality: { greater_than: 0, less_than_or_equal_to: ->(proportion){ proportion.bill.try :amount}  }

end
