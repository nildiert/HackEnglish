FactoryBot.define do
    factory :achievement do
        project_id { Faker::IDNumber.valid }
        status { rand(0..1) }
        name { Faker::Name.name }
        description { Faker::Lorem.sentence }
        achievement_pic { Faker::Lorem.sentence }
        points { rand(0..4) }
    end
end
