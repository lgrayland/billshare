
FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |i| "user#{i}"}
    sequence(:last_name) { |i| "last#{i}"}
    sequence(:email) { |i| "email#{i}@email.com" }
    password 'password'
  end
end