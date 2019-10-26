class LevelsController < ApplicationController

    # Authentication
    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /levels/
    def index
        @levels = Level.all   
        render json: @levels, status: :ok 
    end

    # GET /levels/{id}
    def show
        @level = Level.find_by(id: params[:id])
        if @level
            render json: @level, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /levels
    def create
        @level = Level.create(create_params)
        render json: @level, status: :created
    end


    # PUT /levels/{id}
    def update
        @level = Level.find(params[:id])
        @level.update(update_params)
        render json: @level, status: :ok
    end

    # DELETE /levels/{id}
    def destroy
        @level = Level.find(params[:id])
        @level.destroy
        render json: {message: 'Eliminated'}, status: :ok
    end

    private

    def create_params
        params.require(:level).permit(:title, :description)
    end

    def update_params
        params.require(:level).permit(:title, :description, :status)
    end

end