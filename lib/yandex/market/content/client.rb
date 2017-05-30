require 'yandex/market/content/connection'
require 'yandex/market/client/regions'

module Yandex
  module Market
    class Client
      include Yandex::Market::Connection
      include Yandex::Market::Client::Regions

      def initialize(options = {})
        # TODO refactoring
        Content.configuration.authorization_token = options[:token] if options[:token]
      end
    end
  end
end
