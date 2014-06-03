# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-acclaim/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-acclaim"
  spec.version       = Omniauth::Acclaim::VERSION
  spec.authors       = ["Brent Kastner"]
  spec.email         = ["brentkastner@gmail.com"]
  spec.summary       = %q{Acclaim oAuth provider gem}
  spec.description   = %q{Use this gem to authenticate users of the acclaim platform.  Users can view their badges, accept, reject, and manage their account}
  spec.homepage      = "http://www.youracclaim.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-acclaim-oauth', '~> 1.0'

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec", "~> 2.7"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "rack-test"
end
