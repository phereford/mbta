require 'test_helper'

describe 'Mbta::PredictionsRequest', :vcr do
  it 'returns json from the by_route method' do
    json = Mbta::PredictionsRequest.by_route('52')
  end
end
