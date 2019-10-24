class CheckTaskAssignment < ApplicationRecord
  belongs_to :task_assignment
  belongs_to :check
end