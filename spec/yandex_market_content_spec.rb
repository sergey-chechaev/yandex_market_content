require 'spec_helper'

describe Yandex::Market::Content do
  it 'has a version number' do
    expect(Yandex::Market::Content::VERSION).not_to be nil
  end

  context 'configuration' do
    it 'check default configuratoion' do
      result = Yandex::Market::Content.configuration.version
      expect(result).to eq('v2.1.0')
    end

    it 'set version' do
      yandex_market_content = Yandex::Market::Content
      version = 'v1.0.0'
      expect(
        yandex_market_content.configuration.version = version
      ).to eq(version)
    end

    it 'set resource_url' do
      yandex_market_content = Yandex::Market::Content
      resource_url = 'https://test_yandex_api'
      expect(
        yandex_market_content.configuration.resource_url = resource_url
      ).to eq(resource_url)
    end

    it 'set authorization_token' do
      yandex_market_content = Yandex::Market::Content
      authorization_token = '123sdio'
      expect(
        yandex_market_content.configuration.authorization_token = authorization_token
      ).to eq(authorization_token)
    end
  end
end
