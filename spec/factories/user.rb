FactoryBot.define do
  factory :user do
    password { "A valid pass!" }

    sequence(:email) { |n| "email_#{n}@testdomain.com" }
  end
end