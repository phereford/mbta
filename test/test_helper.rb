require 'json'
require 'mbta'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'
require 'vcr'
require 'minitest-vcr'
require 'webmock'
require 'coveralls'

Coveralls.wear!

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'test/cassettes'
  c.hook_into :webmock
end

MinitestVcr::Spec.configure!

class Minitest::Test
  Mbta.api_key = 'wX9NwuHnZU2ToO7GmGR9uw'
  Mbta.format = 'json'
end
