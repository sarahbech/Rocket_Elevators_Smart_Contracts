class BuildingDetail < ActiveRecord::Base
    belongs_to :building, optional: true
end
