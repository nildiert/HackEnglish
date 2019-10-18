class AchievementsController < ApplicationController
    # sin token provitional
        
    def index
        @achievements = Achievement.all
        render json: @achievements, status: :ok
    end
end
