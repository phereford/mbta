module Mbta
  class RoutesRequest < Request
    def self.get_all
      get('routes')
    end

    def self.get_routes_by_stop(stop_id)
      get('routesbystop', { stop: stop_id })
    end
  end
end
