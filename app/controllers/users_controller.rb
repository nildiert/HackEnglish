class UsersController < ApplicationController

  include Secured    
  protect_from_forgery prepend: true
  before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]
  #protect_from_forgery with: :null_session

  # GET /users/
  def index
    @users = User.all   
    render json: @users, status: :ok 
  end

  # GET /users/{id}
  def show
    @user = User.find_by(id: params[:id])
    if @user
      #render json: @user, status: :ok
      render json: @user, status: :ok
    else
      render json:  {error: 'Not Found'}, status: :not_found
    end
  end

  # PUT /users/{id}
  def update
    @user = User.find(params[:id])
    @user.update(update_params)
    render json: @user, status: :ok
  end

  # DELETE /users/{id}
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: 'Eliminated'}, status: :ok
  end

  private

  def update_params
    params.require(:user).permit(:role_id, :email, :password, :first_name, :last_name, :profile_pic, :description, :score, :status)
  end

end


