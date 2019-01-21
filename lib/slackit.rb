require 'slackit/version'
require 'httparty'

#
# To follow
#
class Slackit
    def initialize(webhook_url, channel = false, username = 'SlackIT', icon_emoji = ':wolf:')
        @webhook_url = webhook_url
        @channel = channel
        @username = username
        @icon_emoji = icon_emoji
    end

    # sends a notification
    # returns true after a successfull pust
    def send(text)
        # send as json
        headers = { 'Content-Type' => 'application/json' }

        # payload
        body = { 'text': text, 'icon_emoji': @icon_emoji, username: @username }

        # add the channel if there is one otherwise the default channel
        body['channel'] = @channel if @channel

        begin
            response = HTTParty.post(@webhook_url, body: body.to_json, headers: headers)

            return true if response.code == 200

            return false
        rescue HTTParty::Error, SocketError => _e
            return false
        end
    end
end
