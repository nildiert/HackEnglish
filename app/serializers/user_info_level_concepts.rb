class UserInfoLevelConcepts < ActiveModel::Serializer
  attributes :id, :levels

  def levels
    user_projects = self.object.userProjects.where(finished: true)
    level_ids = []
    user_projects.each do |user_project|
      level_ids.push(user_project.project.level.id)
    end
    my_levels = Level.all.where(id: level_ids.uniq)
    ActiveModelSerializers::SerializableResource.new(my_levels, each_serializer: LevelSerializer)
  end
end
     