class Project < ApplicationRecord
  belongs_to :level
  has_many :concepts, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :userProjects, dependent: :destroy
  has_many :users, through: :userProjects
end
