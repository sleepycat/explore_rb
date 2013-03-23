# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'explore_rb/version'

Gem::Specification.new do |gem|
  gem.name          = "explore_rb"
  gem.version       = ExploreRb::VERSION
  gem.authors       = ["Mike Williamson"]
  gem.email         = ["blessedbyvirtuosity@gmail.com"]
  gem.description   = "This gem extends the main object with helper methods to help beginners explore the Ruby environment when using IRB."
  gem.summary       = "Helper methods for exploring Ruby via IRB"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency = "traceur"
end
