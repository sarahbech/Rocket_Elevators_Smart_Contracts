class Elevator < ActiveRecord::Base
    belongs_to :column, optional: true
    has_many :interventions
    
end
