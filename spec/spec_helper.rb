$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "yandex-market-content"
require 'vcr'
require 'webmock/rspec'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

def market_url(url)
  return url if url =~ /^http/

  url = File.join(
    Yandex::Market::Content.configuration.resource_url,
    Yandex::Market::Content.configuration.version,
    url)
  uri = Addressable::URI.parse(url)
  uri.to_s
end
