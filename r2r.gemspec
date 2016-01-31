Gem::Specification.new do |s|
  s.name        = 'r2r'
  s.version     = '0.0.1'
  s.date        = '2016-01-27'
  s.summary     = "Wrapper for Rome2Rio API"
  s.description = "A simple Wrapper for Rome2Rio API"
  s.authors     = ["Ivo Guerreiro"]
  s.email       = 'ivoguerreiro@ist.utl.pt'
  s.files       = ["lib/r2r.rb","lib/main.rb","lib/autocomplete/autocomplete.rb","lib/autocomplete/place.rb"\
    ,"lib/geocode/geocode.rb","lib/geocode/place.rb"]
  s.homepage    =
    'http://rubygems.org/gems/r2r'
  s.license       = 'MIT'
  s.add_runtime_dependency 'curb', '~> 0.9', '>= 0.9.1'
end