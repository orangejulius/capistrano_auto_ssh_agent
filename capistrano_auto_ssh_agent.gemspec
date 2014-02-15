# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_auto_ssh_agent/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano_auto_ssh_agent"
  spec.version       = CapistranoAutoSshAgent::VERSION
  spec.authors       = ["Julian Simioni"]
  spec.email         = ["julian.simioni@gmail.com"]
  spec.description   = %q{Ensures ssh-agent is running before deploy}
  spec.summary       = %q{Automatically runs ssh-agent and ssh-add before deploying via capistrano}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "capistrano", ">= 2.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
