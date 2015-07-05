module Mbta
  class Request < Connection
    def self.get(path, options={})
      request(:get, path, options)
    end

    private
    def self.request(request_type, path, options)
      response = connection.send(request_type, path) do |request|
        options.each{ |k,v| request.params[k.to_s] = v }
      end

      response.body.to_json
    end
  end
end
