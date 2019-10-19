FactoryBot.define do
    factory :role do
        title { Faker::Lorem.sentence }
        # status { rand(0..1) }
    end
end