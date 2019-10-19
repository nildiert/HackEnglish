FactoryBot.define do
  factory :project do
    status { 1 }
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    position { 1 }
    level_id { 1 }
  end
end
