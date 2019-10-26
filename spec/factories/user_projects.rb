FactoryBot.define do
    factory :userProject do
        user
        project
        # status { rand(0..1) }
    end
end


