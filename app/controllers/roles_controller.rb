class RolesController < ApplicationController

    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /roles/
    def index
        @roles = Role.all   
        render json: @roles, status: :ok 
    end

    # GET /roles/{id}
    def show
        @role = Role.find_by(id: params[:id])
        if @role
            render json: @role, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /roles
    def create
        @role = Role.create(create_params)
        render json: @role, status: :created
    end


    # PUT /roles/{id}
    def update
        @role = Role.find(params[:id])
        @role.update(update_params)
        render json: @role, status: :ok
    end

    # DELETE /roles/{id}
    def destroy
        @role = Role.find(params[:id])
        @role.destroy
        render json: {message: 'Eliminated'}, status: :ok
    end

    private

    def create_params
        params.require(:role).permit(:status, :title)
    end

    def update_params
        params.require(:role).permit(:status, :title)
    end

end
