class Project < ApplicationRecord
  belongs_to :level
  has_many :userProjects
  has_many :users, through: :userProjects
end
