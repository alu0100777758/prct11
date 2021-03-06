# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simpleselect/version'

Gem::Specification.new do |spec|
  spec.name          = "simpleselect"
  spec.version       = Simpleselect::VERSION
  spec.authors       = ["alu0100764666"]
  spec.email         = ["alu0100764666@ull.edu.es"]
  spec.summary       = %q{"generador de examenes"}
  spec.description   = %q{"facilita la creacion de diferentes tipos de tests"}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~>2.11'
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "yard", "~> 1.0"
end
