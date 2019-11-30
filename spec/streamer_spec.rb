require './spec/rails_helper'
require './lib/elevator_media'

RSpec.describe ElevatorMedia::Streamer do
    specify "Streamer can be instantiated" do
        streamer = ElevatorMedia::Streamer.new
        expect(streamer).to be_a(ElevatorMedia::Streamer)
    end
end

describe "function GetContent" do
    let(:streamer) { ElevatorMedia::Streamer.new }
        it "will render an image of bulbasar" do
        expect(streamer.GetContent).to be_a(String)
    end
end
