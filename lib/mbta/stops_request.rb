module Mbta
  class StopsRequest < Request
    class << self
      def by_route(route_id)
        get('stopsbyroute', { route: route_id })
      end

      def by_location(lat, long)
        get('stopsbylocation', { lat: lat, lon: long })
      end
    end
  end
end
