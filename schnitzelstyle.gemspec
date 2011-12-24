# -*- encoding: utf-8 -*-
require File.expand_path('../lib/schnitzelstyle/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{Team Schnitzel's CSS Framework}
  gem.summary       = %q{A simple, light-weight CSS framework to kickstart your web app.}
  gem.homepage      = "http://www.teamschnitzel.com/"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "schnitzelstyle"
  gem.require_paths = ["lib"]
  gem.version       = Schnitzelstyle::VERSION

  gem.add_dependency 'sass'
end
