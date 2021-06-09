class Registry < ApplicationRecord
    has_many :registry_participants
    has_many :participants, through: :registry_participants
    has_many :registry_coordinators
    has_many :coordinators, through: :registry_coordinators
    
    #returns array of a registry's coordinators
    def find_coordinators
        coordinators = []
        x = RegistryCoordinator.where(:registry_id => self.id)
        x.each{|c| coordinators << Coordinator.find(c.coordinator_id)}
        return coordinators
    end

    #returns array of a registry's participants
    def find_participants
        participants = []
        x = RegistryParticipant.where(:registry_id => self.id)
        x.each{|p| participants << Participant.find(p.participant_id)}
        return participants
    end

    #returns hash where a registry's coordinators point to arrays of participants
    def find_participants_and_coordinators
        hash = {}
        x = self.find_coordinators
        x.each do |c|
            hash[c.name] = c.own_participants
        end
        return hash
    end

end
