module Yandex
  module Market
    class Client
      module Models
        def offers(id = nil, options = {})
          get "models/#{id}/offers", Offer.params(options)
        end
      end
    end
  end
end
