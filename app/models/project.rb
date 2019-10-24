class Project < ApplicationRecord
  belongs_to :level
  has_many :tasks
  has_many :userProjects
  has_many :users, through: :userProjects
end
