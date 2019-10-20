FactoryBot.define do
  factory :task do
    project_id { 1 }
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    position { 1 }
    exercise { Faker::Lorem.paragraph }
  end
end

