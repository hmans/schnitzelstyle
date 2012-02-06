require "schnitzelstyle/version"
require "sass"

if defined?(Rails)
  # Load Rails engine
  require 'schnitzelstyle/rails'
else
  # Add our stylesheets to SASS load path
  Sass::Engine::DEFAULT_OPTIONS[:load_paths] << File.expand_path("../assets/stylesheets/", __FILE__)
end

module Schnitzelstyle
  # Your code goes here...
end
