class User < ApplicationRecord
  belongs_to :role
  has_many :userProjects
  has_many :projects, through: :userProjects
  has_many :userAchievements
  has_many :achievements, through: :userAchievements

  after_initialize :generate_auth_token

  def generate_auth_token
    unless auth_token.present?
      self.auth_token = ::TokenGenerationService.generate
    end
  end
end
