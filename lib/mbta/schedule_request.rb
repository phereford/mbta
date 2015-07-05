module Mbta
  class ScheduleRequest < Request
    class << self
      [:stop, :route, :trip].each do |mode|
        define_method("by_#{mode}") do |mode_id, options: {}|
          hash = {mode => mode_id}.merge!(options)
          get("scheduleby#{mode}", hash)
        end
      end
    end
  end
end
