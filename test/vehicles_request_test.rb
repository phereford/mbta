require 'test_helper'

describe 'Mbta::VehiclesRequest' do
  describe '.by_route' do
    it 'returns valid json with no errors' do
      json = JSON.parse(Mbta::VehiclesRequest.by_route('1'))

      assert_nil(json['errors'])
      assert_kind_of(Hash, json)
    end

    it 'returns json with errors about no data' do
      json = JSON.parse(Mbta::VehiclesRequest.by_route('asd'))

      assert_equal(json['error']['message'], 'No data for  route asd')
    end

    it 'returns json with errors about missing required param' do
      json = JSON.parse(Mbta::VehiclesRequest.by_route(nil))

      assert_equal(json['error']['message'], 'Missing required query parameter: route')
    end
  end

  describe '.by_trip' do
    it 'returns valid json with no errors' do
      json = JSON.parse(Mbta::VehiclesRequest.by_trip(27504084))
      assert_nil(json['error'])
      assert_kind_of(Hash, json)
    end
  end
end
