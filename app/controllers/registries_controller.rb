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
    end

    def create
        @registry = Registry.new(registry_params)
            if @registry.save
                coordinator_id = params[:registry][:registry_coordinator][:coordinator_id]
                registry_id = @registry.id
                @registry_coordinator = RegistryCoordinator.new(coordinator_id: coordinator_id, registry_id: registry_id)
                @registry_coordinator.save
            end
    end

    def edit
        @registry = Registry.find(params[:id])
        
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
