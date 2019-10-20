FactoryBot.define do
  factory :check do
    title { Faker::Lorem.sentence }
    answer { Faker::Lorem.sentence }
    position { 1 }
    task_id { rand(1..3) }
  end
end

