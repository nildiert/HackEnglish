FactoryBot.define do
  factory :task do
    project
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    sequence(:position)
    exercise { Faker::Lorem.paragraph }
  end
end

