class Participant < ApplicationRecord
    has_many :registry_participants
    has_many :registries, through: :registry_participants

    validates :email,
      :presence => true,
      :uniqueness => {:message => 'Email Address is Already Taken!'}, 
      :format => { with: URI::MailTo::EMAIL_REGEXP, message: 'Incorrect Format for Email' }
    
    validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: 'Incorrect Format for Phone' }

    scope :ordered_alphabetically, -> { order(name: :asc)}

    def find_coordinators
        
    end
end
