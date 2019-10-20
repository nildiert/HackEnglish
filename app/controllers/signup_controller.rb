class SignupController < ApplicationController
 # Without session
 protect_from_forgery with: :null_session

 # POST /users
 def create
   @user = User.create(create_params)
   render json: { message: 'You are welcome!' }, status: :created
 end
  
 private
   
 def create_params
   params.require(:user).permit(:role_id, :email, :password, :first_name, :last_name, :profile_pic, :description, :score)
 end
end
