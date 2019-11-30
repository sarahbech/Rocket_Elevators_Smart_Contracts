class Building < ActiveRecord::Base
    belongs_to :customer, optional: true
    belongs_to :address, optional: true

    has_many :batteries
    has_one :building_detail
    has_many :interventions
end
