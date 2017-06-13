module Yandex
  module Market
    class Region
      def self.path(id)
        case id
        when Integer
          "geo/regions/#{id}"
        else
          'geo/regions'
        end
      end
    end
  end
end
