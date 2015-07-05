module Mbta
  class RoutesRequest < Request
    def self.all
      get('routes')
    end

    def self.by_stop(stop_id)
      get('routesbystop', { stop: stop_id })
    end
  end
end
