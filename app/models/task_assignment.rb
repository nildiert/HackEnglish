class TaskAssignment < ApplicationRecord
  belongs_to :user_project
  belongs_to :task
  has_many :checkTaskAssignments
  has_many :checks, through: :checkTaskAssignments
end
