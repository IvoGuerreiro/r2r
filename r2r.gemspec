Gem::Specification.new do |s|
  s.name        = 'r2r'
  s.version     = '0.0.1'
  s.date        = '2016-01-27'
  s.summary     = "Wrapper for Rome2Rio API"
  s.description = "A simple Wrapper for Rome2Rio API"
  s.authors     = ["Ivo Guerreiro"]
  s.email       = 'ivoguerreiro@ist.utl.pt'
  s.files       = [
    'lib/r2r.rb',
    'lib/main.rb',
    'lib/autocomplete/autocomplete.rb',
    'lib/autocomplete/place.rb',
    'lib/geocode/geocode.rb',
    'lib/geocode/place.rb',
    'lib/search/search.rb',
    'lib/search/search.rb',
    'lib/search/agency.rb',
    'lib/search/flight_hop.rb', 
    'lib/search/place.rb',    
    'lib/search/transit_hop.rb',
    'lib/search/aircraft.rb',
    'lib/search/flight_itineraryv',
    'lib/search/position.rb',
    'lib/search/transit_itinerary.rb',
    'lib/search/airline.rb',
    'lib/search/flight_leg.rb',  
    'lib/search/route.rb',   
    'lib/search/transit_leg.rb',
    'lib/search/airport.rb',  
    'lib/search/flight_segment.rb',  
    'lib/search/search.rb', 
    'lib/search/transit_line.rb',
    'lib/search/car_segment.rb',
    'lib/search/indicative_price.rb', 
    'lib/search/search_response.rb', 
    'lib/search/transit_segment.rb',
    'lib/search/codeshare.rb',   
    'lib/search/offset.rb',    
    'lib/search/size.rb',   
    'lib/search/walk_segment.rb',
    'lib/search/days.rb',  
    'lib/search/path.rb',   
    'lib/search/stop.rb'
  ]
  s.homepage    =
    'http://rubygems.org/gems/r2r'
  s.license       = 'MIT'
  s.add_runtime_dependency 'curb', '~> 0.9', '>= 0.9.1'
end