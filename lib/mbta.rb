require 'mbta/version'
require 'mbta/config'
require 'mbta/connection'
require 'mbta/request'
require 'mbta/routes_request'
require 'mbta/stops_request'
require 'mbta/schedule_request'
require 'mbta/vehicles_request'
require 'mbta/predictions_request'

module Mbta
  class << self
    attr_accessor :api_key, :format
  end
end
