class Share < ActiveRecord::Base

  belongs_to :bill_type
  belongs_to :grouping

  # validates :bill_type, :uniqueness => {:scope =>  :grouping }
  validates :bill_type, uniqueness: { scope: :grouping }

  # validate :bill_type_and_grouping_unique?

  # def bill_type_and_grouping_unique?
  #   errors.add(:base, "cannot be twice")  if Share.where(bill_type_id: bill_type_id, grouping_id: grouping_id).present?
  # end

end
