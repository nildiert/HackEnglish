class TaskAssignmentSerializer < ActiveModel::Serializer
  attributes :id, :finished, :finished_at, :task
  
  def task
    task = self.object.task
    {
      id: task.id,
      title: task.title,
      description: task.description,
      exercise: task.exercise,
      position: task.position,
      #checks: ActiveModelSerializers::SerializableResource.new(self.object.checkTaskAssignments, each_serializer: CheckTaskAssignmentSerializer)
    }
  end
end
