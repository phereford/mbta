require 'test_helper'

describe 'Mbta::StopsRequest', :vcr do
  describe '.by_route' do
    it 'returns valid json when passed a proper id' do
      json = JSON.parse(Mbta::StopsRequest.by_route('52'))

      assert_nil(json['error'])
      assert_kind_of(Hash, json)
    end

    it 'returns an error message json when missing the id' do
      json = JSON.parse(Mbta::StopsRequest.by_route(nil))

      assert_equal(json['error']['message'], 'Missing required query parameter: route')
    end

    it 'returns an error message json when invalid id' do
      json = JSON.parse(Mbta::StopsRequest.by_route('asdasd'))

      assert_equal(json['error']['message'], 'Invalid route asdasd')
    end
  end

  describe '.by_location' do
    it 'returns valid json when passed a lat and long' do
      json = JSON.parse(Mbta::StopsRequest.by_location(42.363114, -71.191223))

      assert_nil(json['error'])
      assert_kind_of(Hash, json)
    end

    it 'returns an error message json when missing a lat' do
      json = JSON.parse(Mbta::StopsRequest.by_location(nil, -71.191223))

      assert_equal(json['error']['message'], 'Missing required query parameter: lat')
    end

    it 'returns an error message json when missing a long' do
      json = JSON.parse(Mbta::StopsRequest.by_location(40, nil))

      assert_equal(json['error']['message'], 'Missing required query parameter: lon')
    end
  end
end
