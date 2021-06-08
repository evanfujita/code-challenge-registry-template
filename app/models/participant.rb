class Participant < ApplicationRecord
    has_many :registry_participants
    has_many :registries, through: :registry_participants
end
