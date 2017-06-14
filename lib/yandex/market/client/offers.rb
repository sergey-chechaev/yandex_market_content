module Yandex
  module Market
    class Client
      module Offers
        def offer(id, options = {})
          get "offers/#{id}", Offer.params(options)
        end
      end
    end
  end
end
