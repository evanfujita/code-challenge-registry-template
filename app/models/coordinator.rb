class Coordinator < ApplicationRecord
    has_many :registry_coordinators
    has_many :registries, through: :registry_coordinators
  
    validates :email,
      :presence => true,
      :uniqueness => {:message => 'Email Address is Already Taken!'}, 
      :format => { with: URI::MailTo::EMAIL_REGEXP, message: 'Incorrect Format for Email' }
    validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: 'Incorrect Format for Phone' }

    scope :ordered_alphabetically, -> { order(name: :asc)}

    #finds all registries associated with a coordinator
    def own_registries
        RegistryParticipant.where(:coordinator_email => self.email)
    end

    #finds all participants associated with a coordinator
    def own_participants
        x = []
        self.own_registries.each do |r|
            x << Participant.find(r.participant_id)
        end
        return x
    end

    def find_registry_participants
       participants = RegistryParticipant.where( coordinator_email: self.email)
       participant_details = []
       participants.each do |p|
        participant_details << Participant.find(p.participant_id)
       end
       return participant_details
    end

    def self.to_csv
        attributes = %w{ name }
        CSV.generate(headers: true) do |csv|
            csv << attributes
            all.each do |coordinator|
                csv << coordinator.attributes.values_at(*attributes)
                coordinator.own_participants.each do |participant|
                    csv << participant.attributes.values_at(*attributes)
                end
            end
        end
    end

end