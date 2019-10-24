class Achievement < ApplicationRecord
    has_many :userAchievements
    has_many :users, through: :userAchievements
end
