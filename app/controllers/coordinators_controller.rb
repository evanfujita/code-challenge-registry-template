class CoordinatorsController < ApplicationController
    def index
        @coordinators = Coordinator.all
    end

    def show
        @coordinator = Coordinator.find_by(params[:id])
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
