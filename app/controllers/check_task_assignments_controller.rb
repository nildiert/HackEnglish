class CheckTaskAssignmentsController < ApplicationController

    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /task_assigments/:task_assignment_id/check_task_assignments
    def index
        @taskAssignment = TaskAssignment.find(params[:task_assignment_id])   
        render json: @taskAssignment.checkTaskAssignments, status: :ok 
    end

    # CREATE /task_assigments/:task_assignment_id/check_task_assignments
    def create
        @taskAssignment = TaskAssignment.find_by(id: params[:task_assignment_id])

        if @taskAssignment
            @check_task_assignment = @taskAssignment.checkTaskAssignments.create(create_params)
            @check_task_assignment.reload
            render json: @check_task_assignment, status: :created
        else
            render json: {"error": "not exist"}, status: :not_found
        end
    end

    # GET /task_assigments/:task_assignment_id/check_task_assignments/:id
    def show
        @taskAssignment = TaskAssignment.find(params[:task_assignment_id])
        if @taskAssignment
            @check_task_assignment = @taskAssignment.checkTaskAssignments.find_by(id: params[:id])
            if @check_task_assignment
                render json: @check_task_assignment, status: :ok
            else
                render json: {"error": 'checkTaskAssignment Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'TaskAssignment not Found'}, status: :not_found
        end
    end

    # PUT task_assigments/:task_assignment_id/check_task_assigments/:id
    def update
        @taskAssignment = TaskAssignment.find(params[:task_assignment_id])
        if @taskAssignment
            @check_task_assignment = @taskAssignment.checkTaskAssignments.find_by(id: params[:id])
            if @check_task_assignment
                @check_task_assignment.update(update_params)
                render json: @check_task_assignment, status: :ok
            else
                render json: {"error": 'checkTaskAssignment Not Found'}, status: :not_found
            end    
        else
            render json: {"error": 'TaskAssignment not Found'}, status: :not_found
        end
    end

    #DELETE /task_assigments/:task_assignment_id/task_assigments/:id(.:format)
    def destroy
        @taskAssignment = TaskAssignment.find(params[:task_assignment_id])
        if @taskAssignment
            @check_task_assignment = @taskAssignment.checkTaskAssignments.find_by(id: params[:id])
            if @check_task_assignment
                @check_task_assignment.destroy
                render json: {"message": "checkTaskAssignment deleted"}, status: :ok
            else
                render json: {"error": 'checkTaskAssignment Not Found'}, status: :not_found
            end
        else
            render json: {"error": 'TaskAssignment not Found'}, status: :not_found
        end
    end

    def create_params
        params.require(:checkTaskAssignment).permit(:task_assignment_id, :check_id, :finished)
    end

    def update_params
        params.require(:checkTaskAssignment).permit(:task_assignment_id, :check_id, :finished, :finished_at)
    end
end


