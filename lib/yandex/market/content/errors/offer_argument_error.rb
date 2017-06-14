module Yandex
  module Market
    class OfferArgumentError < ArgumentError
      def initialize(msg = "Required geo params - 'geo_id' or 'remote_ip'")
        super
      end
    end
  end
end
