require 'slackit'

RSpec.describe Slackit do
    it 'has a version number' do
        expect(Slackit::VERSION).not_to be nil
    end

    it 'returns a client instance' do
        expect(Slackit.new(webhook_url: 'someurl')).to be_a Slackit
    end
end
