class RegistryParticipantsController < ApplicationController

    def add_participant
        @registry = Registry.find(params[:id])
        @registry_participant = RegistryParticipant.new
        
    end

    def new
        @registry_participant = RegistryParticipant.new
        @participant = Participant.find(params[:id])
    end

    def create
        byebug
        DateTime.now.strftime('%Y-%m-%d')
        @registry_participant = RegistryParticipant.new(registry_participant_params)
        participant_id = params[:registry_participant][:participant_id]
        registry_id = params[:registry_participant][:registry_id]
        @registry = Registry.find(registry_id)
        @registry_participant.save
        redirect_to registry_path(@registry)
    end

    def edit

    end

    def update

    end

    def delete

    end

    private

    def registry_participant_params
        params.require(:registry_participant).permit(:participant_id, :registry_id, :coordinator_email, :remarks, :enrollment_date)
    end

end
