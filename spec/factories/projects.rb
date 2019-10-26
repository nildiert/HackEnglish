FactoryBot.define do
  factory :project do
    status { 1 }
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    sequence(:position)
    level
  end
end
