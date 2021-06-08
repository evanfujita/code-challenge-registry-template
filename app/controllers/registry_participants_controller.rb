class RegistryParticipantsController < ApplicationController

    def add_participant
        byebug
        @registry = Registry.find(params[:id])
        @registry_participant = RegistryParticipant.new
    end

    def new
        @registry_participant = RegistryParticipant.new
        @participant = Participant.find(params[:id])
    end

    def create
        @participant = Participant.find(params[:registry_participant][:participant_id])
        @registry_participant = RegistryParticipant.new(registry_participant_params)
        @registry_participant.save
    end


    def edit

    end

    def update

    end

    def delete

    end

    private

    def registry_participant_params
        params.require(:registry_participant).permit(:participant_id, :registry_id)
    end

end
