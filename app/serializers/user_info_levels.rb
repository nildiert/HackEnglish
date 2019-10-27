class UserInfoLevels < ActiveModel::Serializer
  attributes :id, :levels

  def levels
    user_projects = self.object.userProjects.where(finished: true)
    projects = []
    user_projects.each do |user_project|
      projects.push(user_project.project)
    end
    tasks = []
    levels = Level.all
    dict_levels = {}
    levels.each do |level|
      my_dict = {
        title: level.title,
        description: level.description,
        finished: projects.select { |project| project.level_id == level.id}.length,
        total: level.projects.length
      }
      tasks.push(my_dict)
    end
    tasks
  end
end
     