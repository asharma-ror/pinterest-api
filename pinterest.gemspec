# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pinterest/version'

Gem::Specification.new do |spec|
  spec.name          = "pinterest-api"
  spec.version       = Pinterest::VERSION
  spec.authors       = ["Mk"]
  spec.email         = ["mkumar@gaggleamp.com"]

  spec.summary       = %q{Ruby gem to interact with the Pinterest REST API}
  spec.description   = %q{This gem makes it simple to interact with the official Pinterest REST API}
  spec.homepage      = "http://github.com/realadeel/pinterest-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "webmock"

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'hashie'
  spec.add_dependency 'omniauth'
  spec.add_dependency 'omniauth-oauth2'
end
