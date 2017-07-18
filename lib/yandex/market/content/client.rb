require 'yandex/market/content/connection'
require 'yandex/market/client/regions'
require 'yandex/market/content/region'
require 'yandex/market/client/offers'
require 'yandex/market/client/models'
require 'yandex/market/client/search'
require 'yandex/market/content/offer'
require 'yandex/market/content/search'

module Yandex
  module Market
    class Client
      include Yandex::Market::Connection
      include Yandex::Market::Client::Regions
      include Yandex::Market::Client::Offers
      include Yandex::Market::Client::Models
      include Yandex::Market::Client::Search

      def initialize(options = {})
        # TODO refactoring
        Content.configuration.authorization_token = options[:token] if options[:token]
      end
    end
  end
end
