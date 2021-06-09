class Participant < ApplicationRecord
    has_many :registry_participants
    has_many :registries, through: :registry_participants


    def find_coordinators
        
    end
end
