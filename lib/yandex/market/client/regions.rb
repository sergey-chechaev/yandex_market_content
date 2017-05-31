module Yandex
  module Market
    class Client
      module Regions
        def regions(id = nil, options = {})
          get Region.path(id), options
        end

        def regions_children(id, options = {})
          get "#{Region.path(id)}/children", options
        end

        def suggest(options = {})
          get 'geo/suggest', options
        end
      end
    end
  end
end
