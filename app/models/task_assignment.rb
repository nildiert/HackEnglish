class TaskAssignment < ApplicationRecord
  belongs_to :user_project
  belongs_to :task
end
