FactoryBot.define do
  factory :course do
    subtitle    { "This is a subtitle" }
    description { "This is a course description" }
    price       { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    duration    { Faker::Number.decimal(l_digits: 2, r_digits: 1) }

    sequence(:name) { |n| "Course ##{n}" }

    association :user
  end
end