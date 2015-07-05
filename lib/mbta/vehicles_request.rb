module Mbta
  class VehiclesRequest < Request
    class << self
      [:route, :trip].each do |mode|
        define_method("by_#{mode}") do |mode_id, options: {}|
          hash = { mode => mode_id }.merge!(options)
          get("vehiclesby#{mode}", hash)
        end
      end
    end
  end
end
