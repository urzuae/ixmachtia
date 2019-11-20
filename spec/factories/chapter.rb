FactoryBot.define do
  factory :chapter do
    description { "This is a course description" }

    sequence(:title) { |n| "Chapter ##{n}" }

    association :course
  end
end