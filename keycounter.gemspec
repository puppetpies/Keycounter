require './lib/version.rb'

VERSION = Keycounter::VERSION::STRING

Gem::Specification.new do |s|
  s.name        = 'keycounter'
  s.version     = VERSION
  s.date        = '2016-01-29'
  s.summary     = "Key Counter"
  s.description = "Counter for reoccuring data using instance variables"
  s.authors     = ["Brian Hood"]
  s.email       = 'brianh6854@googlemail.com'
  s.files       = ["examples/countries.rb", "lib/keycounter.rb", "lib/version.rb"]
  s.homepage    =
    'http://rubygems.org/gems/keycounter'
  s.license       = 'BSD'
end
