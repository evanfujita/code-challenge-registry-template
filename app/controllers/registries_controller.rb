class RegistriesController < ApplicationController
    def index
        @registries = Registry.all
    end

    def show
        @registry = Registry.find(params[:id])
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
