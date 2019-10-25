FactoryBot.define do
  factory :userAchievement do
    user_id { rand(1...5) }
    achievement_id { rand(1...10) }
  end
end
