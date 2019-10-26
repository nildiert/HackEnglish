FactoryBot.define do
  factory :check do
    title { Faker::Lorem.sentence }
    answer { Faker::Lorem.word }
    sequence(:position)
    task
  end
end

