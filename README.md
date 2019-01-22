[![Build Status](https://img.shields.io/travis/AntiPhotonltd/slackit/master.svg)](https://travis-ci.org/AntiPhotonltd/slackit)
[![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)
[![Release](https://img.shields.io/github/release/AntiPhotonltd/slackit.svg)](https://github.com/AntiPhotonltd/slackit/releases/latest)
[![Gem Version](https://badge.fury.io/rb/slackit.svg)](https://badge.fury.io/rb/slackit)
[![Github commits (since latest release)](https://img.shields.io/github/commits-since/AntiPhotonltd/slackit/latest.svg)](https://github.com/AntiPhotonltd/slackit/commits)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/AntiPhotonltd/slackit.svg)](https://github.com/AntiPhotonltd/slackit)
[![GitHub contributors](https://img.shields.io/github/contributors/AntiPhotonltd/slackit.svg)](https://github.com/AntiPhotonltd/slackit)

# Slackit

Slackit is a very simply Ruby Gem for posting to a slack incoming webhook.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slackit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slackit

## Usage

```ruby
require "slackit"
```

Initialize client:

```ruby
client = Slackit.new(webhook_url: "slack webhook url")
```

Initialize with options:

```ruby
client = SlackNotify::Client.new(
  webhook_url: "slack webhook url",
  channel: "#development",
  username: "mybot",
  icon_emoji: ":shipit:",
)
```

Initialize via shorthand method:

```Ruby
client = Slackit.new(options)
```

### Command Line Usage

```
Usage: slackit
    -h, --help                       Display this screen
    -c, --channel string             The channel to send the message to
    -i, --icon-emoji string          The emoji to use as the channel icon [default: :wolf:]
    -m, --message string             The message to send
    -w, --webhook-url string         The slack incoming webhook url to use
    -u, --username string            The username to send as [default: slackit]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing

For local testing make sure that you run `bundle exec rspec spec` and then `rake install` to install the gem locally.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AntiPhotonltd/slackit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Slackit project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/AntiPhotonltd/slackit/blob/master/CODE_OF_CONDUCT.md).
