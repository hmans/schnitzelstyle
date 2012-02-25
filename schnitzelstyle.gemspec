# -*- encoding: utf-8 -*-
require File.expand_path('../lib/schnitzelstyle/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{A simple, light-weight CSS framework to kickstart your web app.}
  gem.summary       = %q{SCSS-powered CSS Framework extracted from SchnitzelPress.}
  gem.homepage      = "http://schnitzelpress.org/schnitzelstyle/"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "schnitzelstyle"
  gem.require_paths = ["lib"]
  gem.version       = Schnitzelstyle::VERSION

  gem.add_dependency 'sass'
end
