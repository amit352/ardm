# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ardm-property/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [ 'Martin Emde', 'Dan Kubb' ]
  gem.email         = [ "me@martinemde.com" ]
  gem.summary       = "ActiveRecord plugin to provide a smooth migration from Ardm to ActiveRecord"
  gem.description   = gem.summary
  gem.homepage      = "http://github.com/engineyard/ardm-property"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.md]

  gem.name          = "ardm-property"
  gem.require_paths = [ "lib" ]
  gem.version       = Ardm::Property::VERSION

  gem.add_runtime_dependency('bcrypt-ruby', '~> 3.0.0')
  gem.add_runtime_dependency('fastercsv',   '~> 1.5.4')
  gem.add_runtime_dependency('multi_json',  '~> 1.3.2')
  gem.add_runtime_dependency('stringex',    '~> 1.4')
  gem.add_runtime_dependency('uuidtools',   '~> 2.1.2')

  gem.add_development_dependency('rake',  '~> 0.9.2')
  gem.add_development_dependency('rspec', '~> 2.0')
end
