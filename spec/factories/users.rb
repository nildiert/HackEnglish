FactoryBot.define do
    factory :user do
        email { Faker::Internet.email }
        password { Faker::Internet.password }
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name  }
        profile_pic { Faker::Avatar.image }
        description { Faker::ChuckNorris.fact }
        score { rand(10...1000) }
        auth_token { "my_token" }
        role
    end
  end
  
  