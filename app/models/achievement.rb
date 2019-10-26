class Achievement < ApplicationRecord
    has_many :userAchievements, dependent: :destroy
    has_many :users, through: :userAchievements
end
