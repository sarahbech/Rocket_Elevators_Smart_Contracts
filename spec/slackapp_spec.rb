require 'rails_helper'
require './lib/api/slackapp'

describe "function send_message" do
    let(:slackapp) { Slackapp::Intervention.new }
        it "sends a slack message to a slack channel" do
            expect(slackapp.send_message).to be_a(Array)
        end
end  