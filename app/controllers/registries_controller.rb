class RegistriesController < ApplicationController
    def index
        @registries = Registry.all
    end

    def show
        @registry = Registry.find(params[:id])
    end

    def new
        @registry = Registry.new
    end

    def create
        @registry = Registry.new(name: params[:name], location: params[:location])
    end

    def edit
        @registry = Registry.find(params[:id])
    end

    def update

    end

    def delete

    end
end
