class UserProjectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :finished, :project 

  def project
    project = self.object.project
    {
      id: project.id,
      name: project.name,
      description: project.description,
      postion: project.position,
      level: project.level.title
      #task_assigments: ActiveModelSerializers::SerializableResource.new(self.object.taskAssignments, each_serializer: TaskAssignmentSerializer)
    }
  end
end
     