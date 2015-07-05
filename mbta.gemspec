# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mbta/version'

Gem::Specification.new do |spec|
  spec.name          = 'mbta-rt'
  spec.version       = Mbta::VERSION
  spec.authors       = ['phereford']
  spec.email         = ['phereford@gmail.com']
  spec.summary       = %q{Ruby API Wrapper around MBTA realtime v2 api.}
  spec.homepage      = 'http://www.github.com/phereford/mbta'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.9.1'
  spec.add_dependency 'faraday_middleware', '~> 0.9.1'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'minitest', '~> 5.7.0'
  spec.add_development_dependency 'minitest-vcr', '~> 1.3.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.1.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'vcr', '~> 2.9.3'
  spec.add_development_dependency 'webmock', '~> 1.21.0'
end
