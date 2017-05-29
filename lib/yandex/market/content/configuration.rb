module Yandex
  module Market
    class Configuration
      attr_accessor :version, :authorization_token, :resource_url

      DEFAULT_CONF = {
        version: 'v2.1.0',
        resource_url: 'https://api.content.market.yandex.ru/'
      }.freeze

      def initialize
        @version = DEFAULT_CONF[:version]
        @resource_url = DEFAULT_CONF[:resource_url]
      end
    end
  end
end
