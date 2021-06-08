class RegistryCoordinatorsController < ApplicationController
    def new
        @registry_coordinator = RegistryCoordinator.new
        # @registry = Registry.new
        
    end

    def create
        @registry_coordinator = RegistryCoordinator.new(registry_coordinator_params)
    end

    private

    def registry_coordinator_params
        params.require(:registry_coordinator).permit(:registry_id, :coordinator_id)
    end
end
