class SigninController < ApplicationController
    # ESto es provisional
    protect_from_forgery with: :null_session

    def signin
      @user = User.find_by(email: signin_params[:email])
      if @user
        if @user.password == signin_params[:password]
          render json: {"auth_token": @user.auth_token}, status: :ok
        else
          render json: {error: "password incorrect"}, status: :not_found
        end
      else
        render json: {error: "user not found"}, status: :not_found
      end
    end


    private

    def signin_params
        params.require(:user).permit(:email, :password)
    end
end
