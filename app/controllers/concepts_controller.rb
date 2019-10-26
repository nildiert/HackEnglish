class ConceptsController < ApplicationController

    include Secured    
    protect_from_forgery prepend: true
    before_action :authenticate_user!, only: [:index, :show, :create, :update, :destroy]

    # GET /concepts/
    def index
        @concepts = Concept.all
        render json: @concepts, status: :ok
    end

    # GET /concepts/{id}
    def show
        @concept = Concept.find_by(id: params[:id])
        if @concept
            render json: @concept, status: :ok
        else
            render json: {error: 'Not Found'}, status: :not_found
        end
    end

    # CREATE /concepts
    def create
        @concept = Concept.create(create_params)
        render json: @concept, status: :created
    end


    # PUT /concepts/{id}
    def update
        @concept = Concept.find(params[:id])
        @concept.update(update_params)
        render json: @concept, status: :ok
    end

    # # DELETE /concepts/{id}
    # def destroy
    #     @concept = concept.find(params[:id])
    #     @concept.destroy
    #     render json: {message: 'Eliminated'}, status: :ok
    # end

    private

    def create_params
        params.require(:concept).permit(:title, :link, :project_id, :position)
    end

    def update_params
        params.require(:concept).permit(:title, :link, :project_id, :position, :status)
    end

end
