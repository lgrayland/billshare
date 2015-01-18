FactoryGirl.define do
  factory :grouping do
    association(:user)
    association(:group)
  end
end