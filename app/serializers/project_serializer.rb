class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :position, :level, :concepts
  
  def level
    level = self.object.level.title
  end

  def concepts
    ActiveModelSerializers::SerializableResource.new(self.object.concepts, each_serializer: ConceptSerializer)
  end
end
