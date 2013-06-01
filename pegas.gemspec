# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pegas/version'

Gem::Specification.new do |gem|
  gem.name          = "pegas"
  gem.version       = Pegas::VERSION
  gem.authors       = ["Artem Petrov"]
  gem.email         = ["partos0511@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'minitest', "~> 5.0"
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rack'
  gem.add_development_dependency 'http_parser'
end
