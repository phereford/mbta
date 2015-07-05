# Mbta
[![Build Status](https://travis-ci.org/phereford/mbta.svg)](https://travis-ci.org/phereford/mbta)

The mbta released a realtime api about a year ago. I have some
interest in building a hyperlocal app around public transportation
and have this created this api wrapper.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mbta-rt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mbta

## Usage
This is very much a WIP. The API is stable and won't be changing much.

In a configuration file add the following:
```
require 'mbta'
Mbta.api_key = '<INSERT API_KEY>'
Mbta.format = 'json' # acceptable inputs are json, jsonp, and xml.
```

Once you are properly setup, then it is just a matter of knowing
what data you want to get after.
```
Mbta::RoutesRequest.all #=> returns a jsonified string of all requests
```

I have built a wrapper around each of the endpoints for their v2
realtime api. Here is what the footprint looks like for each request:
```
Mbta::RoutesRequest.all
Mbta::RoutesReqest.by_stop(stop_id)

Mbta::PredictionsRequest.by_stop(stop_id, options_hash)
Mbta::PredictionsRequest.by_route(route_id, options_hash)
Mbta::PredictionsRequest.by_trip(trip_id, options_hash)

Mbta::ScheduleRequest.by_stop(stop_id, options_hash)
Mbta::ScheduleRequest.by_route(route_id, options_hash)
Mbta::ScheduleRequest.by_trip(trip_id, options_hash)

Mbta::StopsRequest.by_route(route_id)
Mbta::StopsRequest.by_location(lat, long)

Mbta::VehiclesRequest.by_route(route_id, options_hash)
Mbta::VehiclesRequest.by_trip(tripe_id, options_hash)
```

I will need to write up some documentation about what each
options_hash can take, but peeking at the documentation of
their [endpoint](http://realtime.mbta.com/Portal/Content/Documents/MBTA-realtime_APIDocumentation_v2_0_1_2014-09-08.pdf) may help guide you.

## Left ToDo
1) Encapsulate errors from the various endpoints into real Error objects
2) Instead of just returning raw json, consider returning Ruby objects. Maybe a boolean staging return json or ruby objects.
3) Build out ruby models with attrs for the various pieces of the json response.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mbta/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
