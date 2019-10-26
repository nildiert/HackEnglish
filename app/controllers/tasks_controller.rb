class TasksController < ApplicationController
   
    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /tasks/
    def index
        @tasks = Task.all
        render json: @tasks, status: :ok
    end

    # GET /tasks/{id}
    def show
        @task = Task.find_by(id: params[:id])
        if @task
            render json: @task, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /tasks
    def create
        @task = Task.create(create_params)
        render json: @task, status: :created
    end


    # PUT /tasks/{id}
    def update
        @task = Task.find(params[:id])
        @task.update(update_params)
        render json: @task, status: :ok
    end

    # # DELETE /tasks/{id}
    # def destroy
    #     @task = task.find(params[:id])
    #     @task.destroy
    #     render json: {message: 'Eliminated'}, status: :ok
    # end

    private

    def create_params
        params.require(:task).permit(:title, :description, :exercise, :project_id, :position)
    end

    def update_params
        params.require(:task).permit(:title, :description, :exercise, :project_id, :position, :status)
    end

end



