FactoryGirl.define do
  factory :bill_type do
    sequence(:name) { |i| "bill_type#{i}"}
    association(:group)
  end
end