module Yandex
  module Market
    class Offer
      def self.params(options = {})
        raise OfferArgumentError unless (options[:geo_id] && options[:remote_ip]).nil?
        options
      end
    end
  end
end
