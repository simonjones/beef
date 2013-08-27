# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beef/version'

Gem::Specification.new do |gem|
  gem.name          = "beefup"
  gem.version       = Beef::Version::STRING
  gem.authors       = ["Simon Jones"]
  gem.email         = ["spj3rd@googlemail.com"]
  gem.description   = "Beef up your Ruby core with these useful extensions"
  gem.summary       = "A Ruby core exntension library."
  gem.homepage      = "http://simonjones.github.io/beef"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"

  gem.add_development_dependency "rspec", "~> 2.14"
end
