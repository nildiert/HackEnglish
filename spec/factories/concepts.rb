FactoryBot.define do
  factory :concept do
    status { 1 }
    title { Faker::Lorem.sentence }
    link { Faker::Internet.url }
    sequence(:position) {|n| n}
    project_id { rand(1...3) }
  end
end
