FactoryBot.define do
  factory :content do
    sequence(:title) { |n| "Content ##{n}" }

    association :chapter
    association :content_type
  end
end