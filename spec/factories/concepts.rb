FactoryBot.define do
  factory :concept do
    status { 1 }
    title { Faker::Lorem.sentence }
    link { Faker::Internet.url }
    sequence(:position)
    project
  end
end
