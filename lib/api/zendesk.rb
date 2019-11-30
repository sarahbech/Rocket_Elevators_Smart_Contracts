require 'zendesk_api'
module Zendesk
    @client = ZendeskAPI::Client.new do |config|
        config.url = 'https://elevatorsrocket.zendesk.com/api/v2'
         config.username = 'sarah.bechik@gmail.com'
         config.token = ENV['Zendesk_Token']
         config.retry = true
    end   

    def self.intervention_tickets(intervention)
        if (intervention.elevator_id != nil)
        ZendeskAPI::Ticket.create(@client,
            :subject => "INTERVENTION",
            :description => "Create Ticket",
            :comment => { :value => "An intervention was just created for elevator #{intervention.elevator_id} in building #{intervention.building_id} by #{intervention.employee.first_name} #{intervention.employee.last_name}."},
            :submitter_id => @client.current_user.id,
            :type => "problem",
            :priority => "urgent"
        )
        elsif (intervention.elevator_id == nil && intervention.column_id != nil)
        ZendeskAPI::Ticket.create(@client,
            :subject => "INTERVENTION",
            :description => "Create Ticket",
            :comment => { :value => "An intervention was just created for column #{intervention.column_id} in building #{intervention.building_id} by #{intervention.employee.first_name} #{intervention.employee.last_name}."},
            :submitter_id => @client.current_user.id,
            :type => "problem",
            :priority => "urgent"
        )
        elsif (intervention.column_id == nil)
        ZendeskAPI::Ticket.create(@client,
            :subject => "INTERVENTION",
            :description => "Create Ticket",
            :comment => { :value => "An intervention was just created for battery #{intervention.battery_id} in building #{intervention.building_id} by #{intervention.employee.first_name} #{intervention.employee.last_name}."},
            :submitter_id => @client.current_user.id,
            :type => "problem",
            :priority => "urgent"
        )
        end
    end


end