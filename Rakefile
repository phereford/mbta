require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'Open an irb session preloaded with this library'
task :console do
  sh 'irb -rubygems -I lib -r mbta.rb'
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/*_test.rb'
end

task default: :test
