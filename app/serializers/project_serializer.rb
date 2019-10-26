class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :status, :name, :description, :position, :level, :tasks
  
  def level
    level = self.object.level
    {
      id: level.id
      title: level.title
      description: level.description
    }
  end

  def tasks
    self.object.tasks
  end
end
