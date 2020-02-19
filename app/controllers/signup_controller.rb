class SignupController < ApplicationController
 # Without session
 protect_from_forgery with: :null_session

 # POST /users
 def create

   @other = User.find_by(email: check_email[:email])
   if @other
    render json: { message: 'Email exists!', email: @other[:email], status: :rejected }, status: :rejected
   else
    @user = User.create(create_params)
    @user.projects << Project.find(1)
    render json: { message: "You're welcome!" }, status: :created
   end
 end
  
 private
   
 def create_params
   params.require(:user).permit(:role_id, :email, :password, :first_name, :last_name, :profile_pic, :description, :score)
 end

 def check_email
  params.require(:user).permit(:email)
 end
end
