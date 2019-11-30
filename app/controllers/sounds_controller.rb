require './lib/elevator_media'

class SoundsController < ApplicationController
    def sounds
        streamer = ElevatorMedia::Streamer.new 
        @pokemon = streamer.GetContent
        @characteristics = streamer.GetContent
    end
end
