class Participant < ApplicationRecord
    has_many :registry_participants
    has_many :registries, through: :registry_participants

    validates :email,
      :presence => true,
      :uniqueness => {:message => 'Email Address is Already Taken!'}, 
      :format => { with: URI::MailTo::EMAIL_REGEXP, message: 'Incorrect Format for Email' }
    
    validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: 'Incorrect Format for Phone' }

    scope :ordered_alphabetically, -> { order(name: :asc)}

    #returns array of registries for specific participant
    def own_registries
        RegistryParticipant.where(:participant_id => self.id)
    end

    #returns array of coordiantors for registry 
    def find_coordinator(registry_id)
      x = RegistryParticipant.where(registry_id: registry_id).where(participant_id: self.id)
      Coordinator.find_by(email: x.first.coordinator_email)
    end

end