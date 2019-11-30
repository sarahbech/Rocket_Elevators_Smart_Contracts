require'slack-notifier'

module Slackapp
    @@client = Slack::Notifier.new(ENV['Slack_Hook'],
        channel: ENV['Slack_Channel'],
        username: ENV['Slack_User'])

# project_id = "Your Google Cloud project ID"
# session_id = "mysession"
# texts = ["hello", "book a meeting room"]
# language_code = "en-US"


# session_client = Google::Cloud::Dialogflow::Sessions.new
# session = session_client.class.session_path project_id, session_id
# puts "Session path: #{session}"

# texts.each do |text|
#   query_input = { text: { text: text, language_code: language_code } }
#   response = session_client.detect_intent session, query_input
#   query_result = response.query_result

#   puts "Query text:        #{query_result.query_text}"
#   puts "Intent detected:   #{query_result.intent.display_name}"
#   puts "Intent confidence: #{query_result.intent_detection_confidence}"
#   puts "Fulfillment text:  #{query_result.fulfillment_text}\n"
# end
  


    def self.send_slack(intervention)
        @@client.ping "Intervention #{intervention.id} at address #{intervention.building_id} has been created."
    end

end