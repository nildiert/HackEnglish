class Check < ApplicationRecord
  belongs_to :task
  has_many :checkTaskAssignments
  has_many :taskAssignments, through: :checkTaskAssignments
end
