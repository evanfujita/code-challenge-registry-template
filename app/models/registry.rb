class Registry < ApplicationRecord
    has_many :registry_participants
    has_many :participants, through: :registry_participants
    has_many :coordinators
end
