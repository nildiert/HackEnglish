class LevelSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :total_projects
  def total_projects:
    self.object.projects.length
  end
end
