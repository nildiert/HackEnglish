class ProjectsController < ApplicationController
    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /projects/
    def index
        @projects = Project.all
        render json: @projects, status: :ok
    end

    # GET /projects/{id}
    def show
        @project = Project.find_by(id: params[:id])
        if @project
            render json: @project, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /projects
    def create
        @project = Project.create(create_params)
        render json: @project, status: :created
    end

    # PUT /projects/{id}
    def update
        @project = Project.find(params[:id])
        @project.update(update_params)
        render json: @project, status: :ok
    end

    # DELETE /projects/{id}
    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        render json: {message: 'Eliminated'}, status: :ok
    end


    private

    def create_params
        params.require(:project).permit(:name, :description, :position, :level_id)
    end

    def update_params
        params.require(:project).permit(:status, :name, :description, :position, :level_id)
    end
end
