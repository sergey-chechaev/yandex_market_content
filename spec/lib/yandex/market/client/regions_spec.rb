require 'spec_helper'

describe Yandex::Market::Client::Regions do
  describe '.regions' do
    client = Yandex::Market::Client.new(token: 'test')
    result = client.regions
  end
end
