module ElevatorMedia

    class Streamer
        def GetContent
        
            pokemon = RestClient.get("https://pokeapi.co/api/v2/pokemon-form/1/")
            characteristics = RestClient.get("https://pokeapi.co/api/v2/characteristic/1/")
            image = JSON.parse(pokemon)["sprites"]["front_shiny"]
            text = JSON.parse(characteristics)["descriptions"][1]["description"]
            p text
            "<b> This is Bulbasar! <br> <img src='#{image}'> <br>  His most noticeable characteristic is :<br> #{text} </b>"


        end
    end
end