module Mbta
  class PredictionsRequest < Request
    class << self
      [:stop, :route, :trip].each do |mode|
        define_method("by_#{mode}") do |mode_id, options: {}|
          hash = {mode => mode_id}.merge!(options)
          get("predictionsby#{mode}", hash)
        end
      end
    end
  end
end
