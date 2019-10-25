class Task < ApplicationRecord
  belongs_to :project
  has_many :taskAssignments, dependent: :destroy
  has_many :userProjects, through: :taskAssignments
end
