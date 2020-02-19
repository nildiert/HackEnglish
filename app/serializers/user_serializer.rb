class UserSerializer < ActiveModel::Serializer
  attributes :id, :status, :email, :password, :first_name, :last_name, :profile_pic,
  :description, :score, :role, :auth_token, :created_at, :updated_at

  def role
    self.object.role.title
  end
end
