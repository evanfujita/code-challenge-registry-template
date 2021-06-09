class Coordinator < ApplicationRecord
    has_many :registry_coordinators
    has_many :registries, through: :registry_coordinators

    def find_participants
        participants = []
        self.registries.each do |r|
          r.participants.each do |p|
            participants << p
          end
        end        
      end

    def coordinator_participants
        byebug
        x = RegistryParticipant.where(coordinator_email: self.email)

    end

    def self.to_csv
        attributes = %w{ name }
        CSV.generate(headers: true) do |csv|
            csv << attributes

            all.each do |coordinator|
                csv << coordinator.attributes.values_at(*attributes)
            end
        end
    end

end