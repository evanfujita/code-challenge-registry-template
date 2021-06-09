class Coordinator < ApplicationRecord
    has_many :registry_coordinators
    has_many :registries, through: :registry_coordinators
  
    validates :name, presence => { :message => 'Name Cannot Be Blank'}
    validates :email,
      :presence => true,
      :uniqueness => {:message => 'Email Address is Already Taken!'}, 
      :format => { with: URI::MailTo::EMAIL_REGEXP, message: 'Incorrect Format for Email' }

    validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: 'Incorrect Format for Phone' }

    scope :ordered_alphabetically, -> { order(name: :asc)}

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