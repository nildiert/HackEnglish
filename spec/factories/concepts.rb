FactoryBot.define do
  factory :concept do
    status { 1 }
    title { Faker::Lorem.sentence }
    link { Faker::Internet.url }
    position { 1 }
    project { 1 }
  end
end
