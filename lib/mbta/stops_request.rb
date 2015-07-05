module Mbta
  class StopsRequest < Request
    class << self
      def stops_by_route(route_id)
        get('stopsbyroute', { route: route_id })
      end

      def stops_by_location(lat, long)
        get('stopsbylocation', { lat: lat, lon: long })
      end
    end
  end
end
