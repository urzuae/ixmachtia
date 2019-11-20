FactoryBot.define do
  factory :course do
    subtitle    { "This is a subtitle" }
    description { "This is a course description" }
    price       { Faker::Number.decimal(l_digits: 8, r_digits: 2) }
    duration    { Faker::Number.decimal(l_digits: 5, r_digits: 1) }

    sequence(:name) { |n| "Course ##{n}" }
  end
end