module Yandex
  module Market
    class SearchArgumentError < ArgumentError
      def initialize(msg = "Required params - 'text' and 'geo_id'")
        super
      end
    end
  end
end
