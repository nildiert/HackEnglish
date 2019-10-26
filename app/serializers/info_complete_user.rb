class InfoCompleteUser < ActiveModel::Serializer
  attributes :id, :status, :auth_token, :first_name, :last_name, :email, :password, :profile_pic,
             :description, :score, :role, :projects, :created_at, :updated_at

  def role
    role = self.object.role
    {
      id: role.id,
      title: role.title
    }
  end

  def projects
    ActiveModelSerializers::SerializableResource.new(self.object.userProjects, each_serializer: UserProjectSerializer)
  end


=begin
  def project
    project = self.object.project
    {
      id: project.id,
      name: project.name,
      description: project.description,
      postion: project.position,
      level: project.level.title
    }
  end
=end
end
     