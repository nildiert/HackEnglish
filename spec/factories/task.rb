FactoryBot.define do
  factory :task do
    project_id { rand(1...3) }
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    sequence(:position)
    exercise { Faker::Lorem.paragraph }
  end
end

