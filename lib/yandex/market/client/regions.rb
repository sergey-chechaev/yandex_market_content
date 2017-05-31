module Yandex
  module Market
    class Client
      module Regions
        def regions(id = nil, options = {})
          get Region.path(id), options
        end
      end
    end
  end
end
