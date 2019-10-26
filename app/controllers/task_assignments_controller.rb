class TaskAssignmentsController < ApplicationController

    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /user_projects/:user_project_id/task_assignments
    def index
        @userProject = UserProject.find(params[:user_project_id])   
        render json: @userProject.taskAssignments, status: :ok 
    end

    # CREATE /user_projects/:user_project_id/task_assignments
    def create
        @userProject = UserProject.find_by(id: params[:user_project_id])

        if @userProject
            @task_assignment = @userProject.taskAssignments.create(create_params)
            @task_assignment.reload
            render json: @task_assignment, status: :created
        else
            render json: {"error": "not exist"}, status: :not_found
        end
    end

    # GET /user_projects/:user_project_id/tasks_assignments/:id
    def show
        @userProject = UserProject.find(params[:user_project_id])
        if @userProject
            @task_assignment = @userProject.taskAssignments.find_by(id: params[:id])
            if @task_assignment
                render json: @task_assignment, status: :ok
            else
                render json: {"error": 'taskAssignment Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'userProject not Found'}, status: :not_found
        end
    end

    # PUT user_projects/:user_project_id/user_projects/:id
    def update
        @userProject = UserProject.find(params[:user_project_id])
        if @userProject
            @task_assignment = @userProject.taskAssignments.find_by(id: params[:id])
            if @task_assignment
                @task_assignment.update(update_params)
                render json: @task_assignment, status: :ok
            else
                render json: {"error": 'taskAssignment Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'userProject not Found'}, status: :not_found
        end
    end

    #DELETE /user_projects/:user_project_id/user_projects/:id(.:format)
    def destroy
        @userProject = UserProject.find(params[:user_project_id])
        if @userProject
            @task_assignment = @userProject.taskAssignments.find_by(id: params[:id])
            if @task_assignment
                @task_assignment.destroy
                render json: {"message": "taskAssignment deleted"}, status: :ok
            else
                render json: {"error": 'taskAssignment Not Found'}, status: :not_found
            end
        else
            render json: {"error": 'userProject not Found'}, status: :not_found
        end
    end

    def create_params
        params.require(:taskAssignment).permit(:user_project_id, :task_id, :finished)
    end

    def update_params
        params.require(:taskAssignment).permit(:user_project_id, :task_id, :finished, :finished_at)
    end
end


