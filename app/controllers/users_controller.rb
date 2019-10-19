class UsersController < ApplicationController
   # ESto es provisional
   protect_from_forgery with: :null_session
   
   
    # POST /users
   def create
     @user = User.create(create_params)
     render json: @user, status: :created
   end

   private
   
   def create_params
        params.require(:user).permit(:role_id, :status, :email, :password, :first_name, :last_name, :profile_pic, :description, :score)
   end

end


