require 'zendesk_api'
require './lib/api/zendesk.rb'
require './lib/api/slackapp.rb'

class Intervention < ActiveRecord::Base
    include RailsAdminCharts
    include Zendesk
    include Slackapp

    belongs_to :employee, optional: true
    belongs_to :customer, optional: true
    belongs_to :building, optional: true
    belongs_to :battery, optional: true
    belongs_to :column, optional: true
    belongs_to :elevator, optional: true

    delegate :customer, to: :building, prefix: true, allow_nil: true
    delegate :building, to: :battery, prefix: true, allow_nil: true
    delegate :battery, to: :column, prefix: true, allow_nil: true
    delegate :column, to: :elevator, prefix: true, allow_nil: true

    after_create :ticket_intervention, :send_message

    def ticket_intervention
        Zendesk.intervention_tickets(self)
    end
    
    def send_message
        Slackapp.send_slack(self)
    end
end
