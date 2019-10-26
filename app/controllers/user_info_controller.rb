class UserInfoController < ApplicationController
    
    protect_from_forgery with: :null_session

    def show
      @user = User.find(params[:id])
      render json: @user, serializer: InfoCompleteUser 
    end
end
