FactoryBot.define do
  factory :chapter do
    description { "This is a course description" }

    sequence(:title) { |n| "Chapeter ##{n}" }

    association :course
  end
end