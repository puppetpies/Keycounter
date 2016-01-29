require './lib/version.rb'

VERSION = Keycounter::VERSION::STRING

Gem::Specification.new do |s|
  s.name        = 'keycounter'
  s.version     = VERSION
  s.date        = '2015-08-26'
  s.summary     = "Key Counter"
  s.description = "Counter for reoccuring data using instance variables"
  s.authors     = ["Brian Hood"]
  s.email       = 'brianh6854@googlemail.com'
  s.files       = ["examples/countries.rb", "lib/keycounter.rb", "lib/version.rb"]
  s.homepage    =
    'http://rubygems.org/gems/keycounter'
  s.license       = 'MIT'
end

require 'rubygems/tasks'
Gem::Tasks.new
task :default do

end

# Override standard release task
require 'git'
Rake::Task["release"].clear
task :release do
  version = "#{VERSION}"
  remote = 'origin'
  puts "Creating tag v#{version}"
  git = Git.open(".")
  git.add_tag("v#{version}")
  puts "Pushing tag to #{remote}"
  git.push(remote, 'master', true)
  Rake::Task['gem'].invoke
  gemtask = Gem::Tasks::Push.new
  gemtask.push("pkg/keycounter-#{version}.gem")
end
