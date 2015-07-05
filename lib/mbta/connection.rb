require 'faraday'
require 'faraday_middleware'

module Mbta
  class Connection
    def self.connection
      @connection = begin
        Faraday.new(:url => Mbta::Config::BASE_URL, :params => { :api_key => Mbta.api_key, :format => Mbta.format }) do |c|
          c.request :url_encoded
          c.request :json
          c.response :json
          c.adapter Faraday.default_adapter
        end
      end
    end
  end
end
