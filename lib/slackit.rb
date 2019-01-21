require "slackit/version"

class Slackit
    def initialize(webhook_url, channel = false, username = "SlackIT", icon_emoji = ":wolf:")
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
        body = { "text": text, "icon_emoji": @icon_emoji, username: @username}

        # add the channel if there is one
        # otherwise the default channel from the slack integration will be used 
        body["channel"] = @channel if @channel

        # rescue from request errors
        begin
            # make request
            r = HTTParty.post(@webhook_url, body: body.to_json, headers: headers )
            return (r.code == 200)
        rescue
            return false
        end
    end
end
