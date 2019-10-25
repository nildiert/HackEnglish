FactoryBot.define do
  factory :check do
    title { Faker::Lorem.sentence }
    answer { Faker::Lorem.word }
    sequence(:position)
    task_id { rand(1...9) }
  end
end

