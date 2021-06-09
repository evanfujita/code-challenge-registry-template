class Registry < ApplicationRecord
    has_many :registry_participants
    has_many :participants, through: :registry_participants
    has_many :registry_coordinators
    has_many :coordinators, through: :registry_coordinators

    def sort_participants_by_coordinator
    #    byebug
    end

end
