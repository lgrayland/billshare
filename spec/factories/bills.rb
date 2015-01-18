FactoryGirl.define do
  factory :bill do
    name 'bill-1'
    amount 200
    deadline '2015-12-3'
    association(:group)
    association(:bill_type)
  end
end