require './lib/version.rb'

VERSION = Keycounter::VERSION::STRING

Gem::Specification.new do |s|
  s.name        = 'keycounter'
<<<<<<< HEAD
  s.version     = '0.0.9'
  s.date        = '2016-01-29'
=======
  s.version     = VERSION
  s.date        = '2015-08-26'
>>>>>>> e3933f171c08ab7bf12e6c26328f141c8301d61d
  s.summary     = "Key Counter"
  s.description = "Counter for reoccuring data using instance variables"
  s.authors     = ["Brian Hood"]
  s.email       = 'brianh6854@googlemail.com'
  s.files       = ["examples/countries.rb", "lib/keycounter.rb", "lib/version.rb"]
  s.homepage    =
    'http://rubygems.org/gems/keycounter'
  s.license       = 'BSD'
end
