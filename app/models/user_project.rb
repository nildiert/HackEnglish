class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :taskAssignments
  has_many :tasks, through: :taskAssignments
end
