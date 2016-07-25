# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_transitions/version'

Gem::Specification.new do |spec|
  spec.name          = "array-transitions"
  spec.version       = ArrayTransitions::VERSION
  spec.authors       = ["Kevin Bongart"]
  spec.email         = ["contact@kevinbongart.net"]

  spec.summary       = "List transitions found in an array"
  spec.homepage      = "https://github.com/KevinBongart/array-transitions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
