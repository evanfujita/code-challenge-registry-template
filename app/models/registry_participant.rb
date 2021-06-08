class RegistryParticipant < ApplicationRecord
    belongs_to :participant
    belongs_to :registry
end
