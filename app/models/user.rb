class User < ApplicationRecord
  belongs_to :role
  has_many :userProjects
  has_many :projects, through: :userProjects
end
