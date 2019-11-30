class Customer < ActiveRecord::Base
    belongs_to :user, optional: true
    belongs_to :address, optional: true

    has_many :buildings
    has_many :interventions

    
end
