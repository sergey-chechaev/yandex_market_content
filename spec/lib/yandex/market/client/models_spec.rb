require 'spec_helper'
require 'pry'

describe Yandex::Market::Client::Models do
  let(:client) { Yandex::Market::Client.new(token: 'test') }

  describe '.offers(id, options)', :vcr do
    it 'returns list of offers for current model if geo_options' do
      id = '10495456'
      options = { geo_id: 213 }
      result = client.offers(id, options)
      expect(result.offers).to be_kind_of Array
      assert_requested :get, market_url("models/#{id}/offers?geo_id=213")
    end
  end
end
