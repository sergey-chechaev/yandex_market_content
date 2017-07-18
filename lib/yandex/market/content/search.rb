module Yandex
  module Market
    class Search
      def self.params(options = {})
        raise SearchArgumentError unless options[:text] && options[:geo_id]
        options
      end
    end
  end
end
