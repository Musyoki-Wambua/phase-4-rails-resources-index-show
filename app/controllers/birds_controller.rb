class BirdsController < ApplicationController
    
    def index 
        bird = Bird.all
        if bird 
        render json: Bird.all, only: [:id, :name, :species], status: :ok
        else
             render json: {error: "Bird not found"}, status: :not_found
        end 
    end

    def show 
        bird = Bird.find(params[:id])
        if bird 
            render json: bird, status: :ok
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
