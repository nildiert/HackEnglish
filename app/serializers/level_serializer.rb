class LevelSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :total_projects, :projects
  def total_projects
    self.object.projects.length
  end

  def projects
    ActiveModelSerializers::SerializableResource.new(self.object.projects, each_serializer: ProjectSerializer)
  end
end
