FactoryBot.define do
  factory :level do
    status { 1 }
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph  }
  end
end
