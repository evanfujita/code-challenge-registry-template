class Coordinator < ApplicationRecord
    has_many :registry_coordinators
    has_many :registries, through: :registry_coordinators
end
