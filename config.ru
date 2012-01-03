#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'serve'
require 'rack/cache'

use Rack::Cache
run Serve::RackAdapter.new('site')
