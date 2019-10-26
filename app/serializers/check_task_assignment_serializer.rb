class CheckTaskAssignmentSerializer < ActiveModel::Serializer
  attributes :id, :finished, :finished_at, :check
  
  def check
    check = self.object.check
    {
      id: check.id,
      title: check.title,
      answer: check.answer,
      position: check.position
    }
  end
end
