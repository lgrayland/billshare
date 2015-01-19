FactoryGirl.define do
  factory :proportion do
    percentage 25
    association(:grouping)
    association(:bill_type)
  end
end