FactoryBot.define do
    factory :userProject do
        user_id { rand(1..5) }
        project_id { rand(1...3) }
        # status { rand(0..1) }
    end
end


