module Yandex
  module Market
    module Connection
      def get(url, options = {})
        request :get, url, options
      end

      def call
        connection(
          url: Content.configuration.resource_url,
          version: Content.configuration.version
        )
      end

      def connection(url:, version:)
        url = [url, version].join('/')
        Faraday.new(url) do |builder|
          builder.request  :url_encoded
          builder.response :logger
          builder.adapter  Faraday.default_adapter
        end
      end

      private

      def request(method, path, data)
        response = call.send(method) do |req|
          req.url path
          req.headers['Content-Type'] = 'application/json'
          req.headers['Authorization'] = authorization_token(data)
        end

        response = JSON.parse(response.body)
        Hashie::Mash.new(response)
      end

      def authorization_token(option)
        option[:token] ||= Content.configuration.authorization_token
      end
    end
  end
end
