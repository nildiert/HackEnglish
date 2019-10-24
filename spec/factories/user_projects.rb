FactoryBot.define do
    factory :user_project do
        user_id { rand(1..10) }
        project_id { rand(1..10) }
        # status { rand(0..1) }
    end
end


