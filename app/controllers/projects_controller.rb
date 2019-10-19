class ProjectsController < ApplicationController
    # sin token provitional
    protect_from_forgery with: :null_session

    # GET /projects/
    def index
        @projects = Project.all
        render json: @project, status: :ok
    end

    # GET /projectss/{id}
    def show
        @projects = Project.find_by(id: params[:id])
        if @projects
            render json: @projects, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /projects
    def create
        @projects = Project.create(create_params)
        render json: @projects, status: :created
    end

    # PUT /projects/{id}
    def update
        @projects = Project.find(params[:id])
        @projects.update(update_params)
        render json: @projects, status: :ok
    end

    # DELETE /projects/{id}
    def destroy
        @projects = Project.find(params[:id])
        @projects.destroy
        render json: {message: 'Eliminated'}, status: :ok
    end


    private

    def create_params
        params.require(:achievement).permit(:status, :name, :description, :position)
    end

    def update_params
        params.require(:achievement).permit(:name, :description, :position)
    end
end
