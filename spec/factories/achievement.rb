FactoryBot.define do
    factory :achievement do
        sequence(:project_id) { |n| n }
        status { 1 }
        name { Faker::Name.name }
        description { Faker::Lorem.sentence }
        achievement_pic { Faker::Lorem.sentence }
        points { rand(1...5) }
    end
end
