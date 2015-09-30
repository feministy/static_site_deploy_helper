# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinkerbot/version'

Gem::Specification.new do |spec|
  spec.name          = "tinkerbot"
  spec.version       = Tinkerbot::VERSION
  spec.authors       = ["Liz Abinante"]
  spec.email         = ["me@liz.codes"]
  spec.summary       = %q{A simple CLI interface that helps you deploy static projects to AWS s3.}
  spec.description   = %q{Not unlike Tinkerbell, tinkerbot is here when you need it to help with your simple tasks. specifically, deplying static projects to AWS s3 buckets. Tinkerbot is a simple CLI interface that helps you create configurations locally to deploy static projects to AWS s3. Tailored specifically to static sites, there's nothing fancy: tinkerbot keeps it simple.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.executables   = ["tinkerbot"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "s3_website", "~> 2.11"
  spec.add_dependency "slop", "~> 4.2"
end
