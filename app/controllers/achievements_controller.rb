class AchievementsController < ApplicationController

    # Authentication
    include Secured
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]
    

    # GET /achievements/
    def index
        @achievements = Achievement.all
        render json: @achievements, status: :ok         
    end

    # GET /achievements/{id}
    def show
        @achievements = Achievement.find_by(id: params[:id])
        if @achievements
            render json: @achievements, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /achievements
    def create
        @achievements = Achievement.create(create_params)
        render json: @achievements, status: :created
    end

    # PUT /achievements/{id}
    def update
        @achievements = Achievement.find(params[:id])
        @achievements.update(update_params)
        render json: @achievements, status: :ok
    end

    # DELETE /achievements/{id}
    def destroy
        @achievements = Achievement.find(params[:id])
        @achievements.destroy
        render json: {message: 'Eliminated'}, status: :ok
    end


    private

    def create_params
        params.require(:achievement).permit(:name, :description, :achievement_pic, :points)
    end

    def update_params
        params.require(:achievement).permit(:status, :name, :description, :achievement_pic, :points)
    end
end
