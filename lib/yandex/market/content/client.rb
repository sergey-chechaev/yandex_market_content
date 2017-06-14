require 'yandex/market/content/connection'
require 'yandex/market/client/regions'
require 'yandex/market/content/region'
require 'yandex/market/client/offers'
require 'yandex/market/client/models'
require 'yandex/market/content/offer'

module Yandex
  module Market
    class Client
      include Yandex::Market::Connection
      include Yandex::Market::Client::Regions
      include Yandex::Market::Client::Offers
      include Yandex::Market::Client::Models

      def initialize(options = {})
        # TODO refactoring
        Content.configuration.authorization_token = options[:token] if options[:token]
      end
    end
  end
end
