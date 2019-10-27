class UserInfoLevelsController < ApplicationController
    
  include Secured    
  protect_from_forgery prepend: true
  before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    def index
      @user = User.find(params[:id])
      render json: @user, serializer: UserInfoLevels 
    end
end
