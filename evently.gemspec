# -*- encoding: utf-8 -*-
require File.expand_path('../lib/evently/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Devin McCabe", "Dave Shapiro"]
  gem.email         = ["dss.shapiro@gmail.com"]
  gem.description   = %q{Event logging apparatus for mongoid. Storing events as they occur in the database. Helpful for data mining on events occuring in an application. }
  gem.summary       = %q{Event logging and retrieval for mongoid.}
  gem.homepage      = "https://github.com/dsshap/evently.git"


  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "evently"
  gem.require_paths = ["lib"]
  gem.version       = Evently::VERSION

  gem.add_runtime_dependency 'mongoid', ['>= 2.0']
  gem.add_development_dependency "mongoid-rspec", ["= 1.5.4"]
end
