class Task < ApplicationRecord
  belongs_to :project
  has_many :taskAssignments
  has_many :userProjects, through: :taskAssignments
end
