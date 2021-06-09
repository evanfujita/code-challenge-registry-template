class RegistryParticipant < ApplicationRecord
    belongs_to :participant
    belongs_to :registry

    scope :sort_by_coordinator, -> { order('coordinator_email') }
    scope :participants_by_coordinator, -> { order('participant_id')}
end
