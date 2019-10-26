class ChecksController < ApplicationController
    
    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /checks/
    def index
        @checks = Check.all
        render json: @checks, status: :ok
    end

    # GET /checks/{id}
    def show
        @check = Check.find_by(id: params[:id])
        if @check
            render json: @check, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /checks
    def create
        @check = Check.create(create_params)
        render json: @check, status: :created
    end


    # PUT /checks/{id}
    def update
        @check = Check.find(params[:id])
        @check.update(update_params)
        render json: @check, status: :ok
    end

    # # DELETE /checks/{id}
    # def destroy
    #     @check = Check.find(params[:id])
    #     @check.destroy
    #     render json: {message: 'Eliminated'}, status: :ok
    # end

    private

    def create_params
        params.require(:check).permit(:title, :answer, :position, :task_id)
    end

    def update_params
        params.require(:check).permit(:status, :title, :answer, :position, :task_id)
    end

end

