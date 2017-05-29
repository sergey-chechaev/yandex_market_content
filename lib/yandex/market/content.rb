require 'yandex/market/content/version'
require 'yandex/market/content/configuration'

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
