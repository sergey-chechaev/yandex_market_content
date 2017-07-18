require 'faraday'
require 'json'
require 'hashie'
require 'yandex/market/content/version'
require 'yandex/market/content/configuration'
require 'yandex/market/content/client'
require 'yandex/market/content/errors/offer_argument_error'
require 'yandex/market/content/errors/search_argument_error'

module Yandex
  module Market
    class Content
      class << self
        attr_accessor :configuration

        def configuration
          @configuration ||= Configuration.new
        end

        def reset
          @configuration = Configuration.new
        end

        def configure
          yield(configuration)
        end
      end
    end
  end
end
