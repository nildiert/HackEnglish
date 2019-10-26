class UserAchievementsController < ApplicationController

    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /users/:user_id/user_achievements
    def index
        @user = User.find(params[:user_id])   
        render json: @user.userAchievements, status: :ok 
    end

    # CREATE /users/:user_id/user_achievements
    def create
        @user = User.find_by(id: params[:user_id])

        if @user
            @achievement = @user.userAchievements.create(create_params)
            @user.reload
            render json: @achievement, status: :created
        else
            render json: {"error": "not exist"}, status: :not_found
        end
    end

    # GET /users/:user_id/user_achievements/:id
    def show
        @user = User.find(params[:user_id])
        if @user
            @user_achievement = @user.userAchievements.find_by(id: params[:id])
            if @user_achievement
                render json: @user_achievement, status: :ok
            else
                render json: {"error": 'proyect Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'user not Found'}, status: :not_found
        end
    end

    # PUT /users/:user_id/user_achievements/:id
    def update
        @user = User.find(params[:user_id])
        if @user
            @user_achievement = @user.userAchievements.find_by(id: params[:id])
            if @user_achievement
                @user_achievement.update(update_params)
                render json: @user_achievement, status: :ok
            else
                render json: {"error": 'proyect Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'user not Found'}, status: :not_found
        end
    end

    #DELETE /users/:user_id/user_achievements/:id
    def destroy
        @user = User.find(params[:user_id])
        if @user
            @user_achievement = @user.userAchievements.find_by(id: params[:id])
            if @user_achievement
                @user_achievement.destroy
                render json: {"message": "UserAchievement deleted"}, status: :ok
            else
                render json: {"error": 'proyect Not Found'}, status: :not_found
            end
        else
            render json: {"error": 'user not Found'}, status: :not_found
        end
    end

    def create_params
        params.require(:userAchievement).permit(:user_id, :achievement_id, :finished)
    end

    def update_params
        params.require(:userAchievement).permit(:user_id, :achievement_id, :finished, :finished_at)
    end
end



