class UserProjectsController < ApplicationController

    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /users/:user_id/userprojects
    def index
        @user = User.find(params[:user_id])   
        render json: @user.userProjects, status: :ok 
    end

    # CREATE /users/:user_id/userprojects
    def create
        @user = User.find_by(id: params[:user_id])

        if @user
            @project = @user.userProjects.create(create_params)
            @user.reload
            render json: @project, status: :created
        else
            render json: {"error": "not exist"}, status: :not_found
        end
    end

    # GET /users/:user_id/user_projects/:id
    def show
        @user = User.find(params[:user_id])
        if @user
            @user_project = @user.userProjects.find_by(id: params[:id])
            if @user_project
                render json: @user_project, status: :ok
            else
                render json: {"error": 'proyect Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'user not Found'}, status: :not_found
        end
    end

    # PUT users/:user_id/user_projects/:id
    def update
        @user = User.find(params[:user_id])
        if @user
            @user_project = @user.userProjects.find_by(id: params[:id])
            if @user_project
                @user_project.update(update_params)
                render json: @user_project, status: :ok
            else
                render json: {"error": 'proyect Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'user not Found'}, status: :not_found
        end
    end

    #DELETE /users/:user_id/user_projects/:id(.:format)
    def destroy
        @user = User.find(params[:user_id])
        if @user
            @user_project = @user.userProjects.find_by(id: params[:id])
            if @user_project
                @user_project.destroy
                render json: {"message": "UserProject deleted"}, status: :ok
            else
                render json: {"error": 'proyect Not Found'}, status: :not_found
            end
        else
            render json: {"error": 'user not Found'}, status: :not_found
        end
    end

    def create_params
        params.require(:userProject).permit(:user_id, :project_id, :finished)
    end

    def update_params
        params.require(:userProject).permit(:user_id, :project_id, :finished, :finished_at)
    end
end


