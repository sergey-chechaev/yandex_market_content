module Yandex
  module Market
    class Client
      module Search
        def search(options = {})
          get "search", Yandex::Market::Search.params(options)
        end
      end
    end
  end
end
