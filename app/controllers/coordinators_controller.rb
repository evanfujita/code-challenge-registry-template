class CoordinatorsController < ApplicationController
    def home
        # byebug
    end
    
    def index
        @coordinators = Coordinator.all
    end

    def show
        @coordinator = Coordinator.find_by(id: params[:id])
    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def delete

    end

end
