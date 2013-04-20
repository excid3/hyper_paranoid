# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyper_paranoid/version'

Gem::Specification.new do |gem|
  gem.name          = "hyper_paranoid"
  gem.version       = HyperParanoid::VERSION
  gem.authors       = ["Chris Oliver"]
  gem.email         = ["excid3@gmail.com"]
  gem.description   = %q{Adds acts_as_paranoid to the default Rails model generators}
  gem.summary       = %q{Adds acts_as_paranoid to the default Rails model generators}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "acts_as_paranoid", "~> 0.4.1"
end
