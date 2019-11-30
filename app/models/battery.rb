class Battery < ActiveRecord::Base
    belongs_to :building, optional: true
    belongs_to :employee, optional: true

    has_many :columns
    has_many :interventions
end
