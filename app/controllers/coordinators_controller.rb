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
        @coordinator = Coordinator.new
    end

    def create
        @coordinator = Coordinator.new(coordinator_params)
        #need validation
        @coordinator.save
    end

    def edit
        @coordinator = Coordinator.find(params[:id])
    end

    def update

    end

    def delete

    end

    private

    def coordinator_params
        params.require(:coordinator).permit(:name, :email, :phone)
    end

end
