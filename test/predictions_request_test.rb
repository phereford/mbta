require 'test/test_helper'
require 'pry'

describe 'Mbta::PredictionsRequest', :vcr do
  it 'returns json from the by_route method' do
    json = Mbta::PredictionsRequest.by_route('52')
    binding.pry
  end
end
