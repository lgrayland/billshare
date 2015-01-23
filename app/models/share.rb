class Share < ActiveRecord::Base

  belongs_to :bill_type
  belongs_to :grouping

  validates :bill_type, uniqueness: { scope: :grouping }
  validates :percent, numericality: { greater_than: 0, less_than_or_equal_to: 100}

  # validate :no_more_than_100

  def no_more_than_100
      errors.add(:base, "can't be greater than 100 %") if bill_type.exceed_percents?(percent)
  end

  # validate :current_percentage_is_less_than_already_paid
  # def current_percentage_is_less_than_already_paid
  #   percent_already_paid = 0
  #   if !bill_type.shares.empty?
  #     percent_already_paid = (bill_type.shares.map(&:percent).inject(:+)) rescue 0

  #     errors.add(:price, "should be less than total") if percent_already_paid > 100
  #   end


  #   # if percent_already_paid > 100
  #   #   errors.add(:base, "can't be greater than total value")
  #   # end

  #   # puts "alrady paid-> #{percent_already_paid}"
  #   # puts "current #{percent}"
  #   # puts "is valid? #{percent_already_paid - percent > 0}"
  # end

  # gerrys example
  # validates :percent, numericality: { greater_than: 0, less_than_or_equal_to: 100}, on: :update

  #-> (bill_type){ 100 - bill_type.shares.map(&:percent).inject(:+) } }

  # def left_percent
  #   pr = 100 - bill_type.shares.map(&:percent).inject(:+)
  #   raise 
  # end


end
