class ParticipantsController < ApplicationController
    def index
        @participants = Participant.all
    end

    def show
        @participant = Participant.find(params[:id])
    end

    def new
        @participant = Participant.new
    end

    def create
        @participant = Participant.new(participant_params)
    end

    def edit
        @participant = Participant.find(params[:id])
    end

    def update

    end

    def delete

    end

    private

    def participant_params
        params.require(:participant).permit(:first_name, :last_name, :gender, :dob, :phone, :email, :contact_method)
    end


end
