class RegistriesController < ApplicationController
    def index
        @registries = Registry.all
    end

    def show
        @registry = Registry.find(params[:id])
    end

    def new
        @registry = Registry.new
        @registry_coordinator = RegistryCoordinator.new
        @coordinators = Coordinator.all
    end

    def create
        @registry = Registry.new(registry_params)
        @registry.save
    end

    def edit
        @registry = Registry.find(params[:id])
        @registry_coordinator = RegistryCoordinator.new
        @registry_participant = RegistryParticipant.new
    end

    def update
        @registry = Registry.update(params[registry_params])
    end

    def delete

    end

    private

    def registry_params
        params.require(:registry).permit(:name, :location)
    end

end
