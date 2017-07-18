require 'spec_helper'

describe Yandex::Market::Client::Search do
  let(:client) { Yandex::Market::Client.new(token: 'test') }

  describe '.search', :vcr do
    context 'succes request (with geo param)' do
      it 'returns search results for given text in geo_id' do
        options = { geo_id: 213, text: 'iphone 7' }
        result = client.search(options)
        expect(result.items).to be_kind_of Array
        expect(result.items).not_to be_empty
        assert_requested :get, market_url("/search?geo_id=213&text=iphone+7")
      end
    end
  end
end
