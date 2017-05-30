module Yandex
  module Market
    class Client
      module Regions
        def regions(options = {})
          get 'geo/regions', options
        end
      end
    end
  end
end
