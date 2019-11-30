class Column < ActiveRecord::Base
    belongs_to :battery, optional: true

    has_many :elevators
    has_many :interventions

end
