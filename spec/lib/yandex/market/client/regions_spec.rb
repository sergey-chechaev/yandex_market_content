require 'spec_helper'

describe Yandex::Market::Client::Regions do
  let(:client) { Yandex::Market::Client.new(token: 'token') }

  describe '.regions', :vcr do
    it 'returns top level regions' do
      result = client.regions
      expect(result.regions).to be_kind_of Array
      assert_requested :get, market_url('/geo/regions')
    end
  end

  describe '.regions(id)', :vcr do
    it 'returns region info by id' do
      result = client.regions(213)
      expect(result.region.name).to eq('Москва')
      assert_requested :get, market_url('geo/regions/213')
    end
  end

  describe '.regions(id).children', :vsr do
    it 'returns children regions' do
      result = client.regions(3).children
      expect(result.regions).to be_kind_of Array
      assert_requested :get, market_url('geo/regions/3/children')
    end
  end
end
